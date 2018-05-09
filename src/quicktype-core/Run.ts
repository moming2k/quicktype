import * as _ from "lodash";
import { List, Map, OrderedMap, OrderedSet } from "immutable";

import * as targetLanguages from "./language/All";
import { TargetLanguage } from "./TargetLanguage";
import { SerializedRenderResult, Annotation, Location, Span } from "./Source";
import { assert, defined } from "./Support";
import { CompressedJSON } from "./input/CompressedJSON";
import { combineClasses, findSimilarityCliques } from "./rewrites/CombineClasses";
import { addTypesInSchema, Ref } from "./input/JSONSchemaInput";
import { JSONSchemaStore } from "./input/JSONSchemaStore";
import { TypeInference } from "./input/Inference";
import { inferMaps } from "./rewrites/InferMaps";
import { TypeBuilder } from "./TypeBuilder";
import { TypeGraph, noneToAny, optionalToNullable, removeIndirectionIntersections } from "./TypeGraph";
import { makeNamesTypeAttributes, initTypeNames } from "./TypeNames";
import { makeGraphQLQueryTypes } from "./GraphQL";
import { gatherNames } from "./GatherNames";
import { expandStrings } from "./rewrites/ExpandStrings";
import { descriptionTypeAttributeKind } from "./TypeAttributes";
import { flattenUnions } from "./rewrites/FlattenUnions";
import { resolveIntersections } from "./rewrites/ResolveIntersections";
import { replaceObjectType } from "./rewrites/ReplaceObjectType";
import { messageError } from "./Messages";
import { InputData } from "./input/Inputs";
import { TypeSource } from "./TypeSource";
import { flattenStrings } from "./rewrites/FlattenStrings";
import { makeTransformations } from "./MakeTransformations";

// Re-export essential types and functions
export { TargetLanguage } from "./TargetLanguage";
export { SerializedRenderResult, Annotation } from "./Source";
export { all as languages, languageNamed } from "./language/All";
export { OptionDefinition } from "./RendererOptions";
export { TypeSource, GraphQLTypeSource, JSONTypeSource, SchemaTypeSource } from "./TypeSource";

export function getTargetLanguage(nameOrInstance: string | TargetLanguage): TargetLanguage {
    if (typeof nameOrInstance === "object") {
        return nameOrInstance;
    }
    const language = targetLanguages.languageNamed(nameOrInstance);
    if (language !== undefined) {
        return language;
    }
    return messageError("DriverUnknownOutputLanguage", { lang: nameOrInstance });
}

export type RendererOptions = { [name: string]: string };

export interface Options {
    lang: string | TargetLanguage;
    sources: TypeSource[];
    handlebarsTemplate: string | undefined;
    findSimilarClassesSchemaURI: string | undefined;
    inferMaps: boolean;
    inferEnums: boolean;
    inferDates: boolean;
    alphabetizeProperties: boolean;
    allPropertiesOptional: boolean;
    combineClasses: boolean;
    fixedTopLevels: boolean;
    noRender: boolean;
    leadingComments: string[] | undefined;
    rendererOptions: RendererOptions;
    indentation: string | undefined;
    outputFilename: string;
    schemaStore: JSONSchemaStore | undefined;
    debugPrintGraph: boolean;
    checkProvenance: boolean;
    debugPrintReconstitution: boolean;
    debugPrintGatherNames: boolean;
    debugPrintTransformations: boolean;
}

const defaultOptions: Options = {
    lang: "ts",
    sources: [],
    handlebarsTemplate: undefined,
    findSimilarClassesSchemaURI: undefined,
    inferMaps: true,
    inferEnums: true,
    inferDates: true,
    alphabetizeProperties: false,
    allPropertiesOptional: false,
    combineClasses: true,
    fixedTopLevels: false,
    noRender: false,
    leadingComments: undefined,
    rendererOptions: {},
    indentation: undefined,
    outputFilename: "stdout",
    schemaStore: undefined,
    debugPrintGraph: false,
    checkProvenance: false,
    debugPrintReconstitution: false,
    debugPrintGatherNames: false,
    debugPrintTransformations: false
};

export class Run {
    private readonly _options: Options;

    constructor(options: Partial<Options>) {
        this._options = _.mergeWith(_.clone(options), defaultOptions, (o, s) => (o === undefined ? s : o));
    }

    private async makeGraph(
        allInputs: InputData,
        compressedJSON: CompressedJSON,
        schemaStore: JSONSchemaStore | undefined
    ): Promise<TypeGraph> {
        const targetLanguage = getTargetLanguage(this._options.lang);
        const stringTypeMapping = targetLanguage.stringTypeMapping;
        const conflateNumbers = !targetLanguage.supportsUnionsWithBothNumberTypes;
        const typeBuilder = new TypeBuilder(
            stringTypeMapping,
            this._options.alphabetizeProperties,
            this._options.allPropertiesOptional,
            this._options.checkProvenance,
            false
        );

        // JSON Schema
        let schemaInputs = allInputs.schemaInputs;
        if (this._options.findSimilarClassesSchemaURI !== undefined) {
            schemaInputs = schemaInputs.set("ComparisonBaseRoot", Ref.parse(this._options.findSimilarClassesSchemaURI));
        }
        if (!schemaInputs.isEmpty()) {
            await addTypesInSchema(typeBuilder, defined(schemaStore), schemaInputs);
        }

        // GraphQL
        const graphQLInputs = allInputs.graphQLInputs;
        graphQLInputs.forEach(({ schema, query }, name) => {
            const newTopLevels = makeGraphQLQueryTypes(name, typeBuilder, schema, query);
            newTopLevels.forEach((t, actualName) => {
                typeBuilder.addTopLevel(graphQLInputs.size === 1 ? name : actualName, t);
            });
        });

        // JSON
        const doInferEnums = this._options.inferEnums;
        const jsonInputs = allInputs.jsonInputs;
        if (!jsonInputs.isEmpty()) {
            const inference = new TypeInference(typeBuilder, doInferEnums, this._options.inferDates);

            jsonInputs.forEach(({ samples, description }, name) => {
                const tref = inference.inferType(
                    compressedJSON as CompressedJSON,
                    makeNamesTypeAttributes(name, false),
                    samples,
                    this._options.fixedTopLevels
                );
                typeBuilder.addTopLevel(name, tref);
                if (description !== undefined) {
                    const attributes = descriptionTypeAttributeKind.makeAttributes(OrderedSet([description]));
                    typeBuilder.addAttributes(tref, attributes);
                }
            });
        }

        let graph = typeBuilder.finish();
        if (this._options.debugPrintGraph) {
            graph.setPrintOnRewrite();
            graph.printGraph();
        }

        const debugPrintReconstitution = this._options.debugPrintReconstitution === true;

        if (typeBuilder.didAddForwardingIntersection) {
            graph = removeIndirectionIntersections(graph, stringTypeMapping, debugPrintReconstitution);
        }

        let unionsDone = false;
        if (!schemaInputs.isEmpty()) {
            let intersectionsDone = false;
            do {
                const graphBeforeRewrites = graph;
                if (!intersectionsDone) {
                    [graph, intersectionsDone] = resolveIntersections(
                        graph,
                        stringTypeMapping,
                        debugPrintReconstitution
                    );
                }
                if (!unionsDone) {
                    [graph, unionsDone] = flattenUnions(
                        graph,
                        stringTypeMapping,
                        conflateNumbers,
                        true,
                        debugPrintReconstitution
                    );
                }

                if (graph === graphBeforeRewrites) {
                    assert(intersectionsDone && unionsDone, "Graph didn't change but we're not done");
                }
            } while (!intersectionsDone || !unionsDone);
        }

        graph = replaceObjectType(
            graph,
            stringTypeMapping,
            conflateNumbers,
            targetLanguage.supportsFullObjectType,
            debugPrintReconstitution
        );
        do {
            [graph, unionsDone] = flattenUnions(
                graph,
                stringTypeMapping,
                conflateNumbers,
                false,
                debugPrintReconstitution
            );
        } while (!unionsDone);

        if (this._options.findSimilarClassesSchemaURI !== undefined) {
            return graph;
        }

        if (this._options.combineClasses) {
            const combinedGraph = combineClasses(
                graph,
                stringTypeMapping,
                this._options.alphabetizeProperties,
                true,
                false,
                debugPrintReconstitution
            );
            if (combinedGraph === graph) {
                graph = combinedGraph;
            } else {
                graph = combineClasses(
                    combinedGraph,
                    stringTypeMapping,
                    this._options.alphabetizeProperties,
                    false,
                    true,
                    debugPrintReconstitution
                );
            }
        }

        if (this._options.inferMaps) {
            for (;;) {
                const newGraph = inferMaps(graph, stringTypeMapping, true, debugPrintReconstitution);
                if (newGraph === graph) {
                    break;
                }
                graph = newGraph;
            }
        }

        const enumInference = schemaInputs.isEmpty() ? (doInferEnums ? "infer" : "none") : "all";
        graph = expandStrings(graph, stringTypeMapping, enumInference, debugPrintReconstitution);
        [graph, unionsDone] = flattenUnions(graph, stringTypeMapping, conflateNumbers, false, debugPrintReconstitution);
        assert(unionsDone, "We should only have to flatten unions once after expanding strings");

        if (!schemaInputs.isEmpty()) {
            graph = flattenStrings(graph, stringTypeMapping, debugPrintReconstitution);
        }

        graph = noneToAny(graph, stringTypeMapping, debugPrintReconstitution);
        if (!targetLanguage.supportsOptionalClassProperties) {
            graph = optionalToNullable(graph, stringTypeMapping, debugPrintReconstitution);
        }

        graph = makeTransformations(
            graph,
            stringTypeMapping,
            targetLanguage,
            this._options.debugPrintTransformations,
            debugPrintReconstitution
        );
        [graph, unionsDone] = flattenUnions(graph, stringTypeMapping, conflateNumbers, false, debugPrintReconstitution);
        assert(unionsDone, "We should only have to flatten unions once after making transformations");

        // Sometimes we combine classes in ways that will the order come out
        // differently compared to what it would be from the equivalent schema,
        // so we always just garbage collect to get a defined order and be done
        // with it.
        // FIXME: We don't actually have to do this if any of the above graph
        // rewrites did anything.  We could just check whether the current graph
        // is different from the one we started out with.
        graph = graph.garbageCollect(this._options.alphabetizeProperties, debugPrintReconstitution);

        if (this._options.debugPrintGraph) {
            console.log("\n# gather names");
        }
        gatherNames(graph, this._options.debugPrintGatherNames);
        if (this._options.debugPrintGraph) {
            graph.printGraph();
        }

        return graph;
    }

    private makeSimpleTextResult(lines: string[]): OrderedMap<string, SerializedRenderResult> {
        return OrderedMap([[this._options.outputFilename, { lines, annotations: List() }]] as [
            string,
            SerializedRenderResult
        ][]);
    }

    public async run(): Promise<OrderedMap<string, SerializedRenderResult>> {
        initTypeNames();

        const targetLanguage = getTargetLanguage(this._options.lang);
        let needIR =
            targetLanguage.names.indexOf("schema") < 0 ||
            this._options.findSimilarClassesSchemaURI !== undefined ||
            this._options.handlebarsTemplate !== undefined;

        const mapping = targetLanguage.stringTypeMapping;
        const makeDate = mapping.date !== "string";
        const makeTime = mapping.time !== "string";
        const makeDateTime = mapping.dateTime !== "string";

        const compressedJSON = new CompressedJSON(makeDate, makeTime, makeDateTime);
        const allInputs = new InputData(compressedJSON, this._options.schemaStore);

        if (await allInputs.addTypeSources(this._options.sources)) {
            needIR = true;
        }

        const schemaString = needIR ? undefined : allInputs.singleStringSchemaSource();
        if (schemaString !== undefined) {
            const lines = JSON.stringify(JSON.parse(schemaString), undefined, 4).split("\n");
            lines.push("");
            const srr = { lines, annotations: List() };
            return OrderedMap([[this._options.outputFilename, srr] as [string, SerializedRenderResult]]);
        }

        const schemaStore = await allInputs.addSchemaInputs();

        const graph = await this.makeGraph(allInputs, compressedJSON, schemaStore);

        if (this._options.noRender) {
            return this.makeSimpleTextResult(["Done.", ""]);
        }

        if (this._options.findSimilarClassesSchemaURI !== undefined) {
            const cliques = findSimilarityCliques(graph, false, true);
            const lines: string[] = [];
            if (cliques.length === 0) {
                lines.push("No similar classes found.");
            } else {
                for (let clique of cliques) {
                    lines.push(`similar: ${clique.map(c => c.getCombinedName()).join(", ")}`);
                }
            }
            lines.push("");
            return this.makeSimpleTextResult(lines);
        }

        if (this._options.handlebarsTemplate !== undefined) {
            return OrderedMap([
                [
                    this._options.outputFilename,
                    targetLanguage.processHandlebarsTemplate(
                        graph,
                        this._options.rendererOptions,
                        this._options.handlebarsTemplate
                    )
                ]
            ] as [string, SerializedRenderResult][]);
        } else {
            return targetLanguage.renderGraphAndSerialize(
                graph,
                this._options.outputFilename,
                this._options.alphabetizeProperties,
                this._options.leadingComments,
                this._options.rendererOptions,
                this._options.indentation
            );
        }
    }
}

export async function quicktypeMultiFile(options: Partial<Options>): Promise<Map<string, SerializedRenderResult>> {
    return await new Run(options).run();
}

function offsetLocation(loc: Location, lineOffset: number): Location {
    return { line: loc.line + lineOffset, column: loc.column };
}

function offsetSpan(span: Span, lineOffset: number): Span {
    return { start: offsetLocation(span.start, lineOffset), end: offsetLocation(span.end, lineOffset) };
}

export async function quicktype(options: Partial<Options>): Promise<SerializedRenderResult> {
    const result = await quicktypeMultiFile(options);
    if (result.size <= 1) {
        const first = result.first();
        if (first === undefined) {
            return { lines: [], annotations: List<Annotation>() };
        }
        return first;
    }
    let lines: string[] = [];
    let annotations: Annotation[] = [];
    result.forEach((srr, filename) => {
        const offset = lines.length + 2;
        lines = lines.concat([`// ${filename}`, ""], srr.lines);
        annotations = annotations.concat(
            srr.annotations.map(ann => ({ annotation: ann.annotation, span: offsetSpan(ann.span, offset) })).toArray()
        );
    });
    return { lines, annotations: List(annotations) };
}
