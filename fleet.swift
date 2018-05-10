// Please help improve quicktype by enabling anonymous telemetry with:
//
//   $ quicktype --telemetry enable
//
// You can also enable telemetry on any quicktype invocation:
//
//   $ quicktype pokedex.json -o Pokedex.cs --telemetry enable
//
// This helps us improve quicktype by measuring:
//
//   * How many people use quicktype
//   * Which features are popular or unpopular
//   * Performance
//   * Errors
//
// quicktype does not collect:
//
//   * Your filenames or input data
//   * Any personally identifiable information (PII)
//   * Anything not directly related to quicktype's usage
//
// If you don't want to help improve quicktype, you can dismiss this message with:
//
//   $ quicktype --telemetry disable
//
// For a full privacy policy, visit app.quicktype.io/privacy
//

import Foundation


public enum JobApplicationType: String {
    case full = "full"
    case quick = "quick"
}        



extension Encodable {
    public func asDictionary() throws -> [String: Any] {
        let data = try JSONEncoder().encode(self)
        guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            throw NSError()
        }
        return dictionary
    }

    // func asJSON() throws -> String? {
    //     let data = try JSONEncoder().encode(self)
    //     let jsonString = String(data: data, encoding: .utf8)
    //     return jsonString
    // }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }

    static func == (lhs:Self, rhs: Self) -> Bool {
        var result = false
        do {
            let lhsJson = try lhs.jsonString()
            let rhsJson = try rhs.jsonString()
            if (lhsJson == rhsJson)
            {
                result = true
            }
            return result
        }
        catch {
            return false
        }
    }

    public func isEqual(_ object: Any?) -> Bool {

        if let o = object as? Self {
            return self == o
        }

        return false
    }
}

extension Decodable {
    static public func initFromJSON(json: String?) throws -> Self {
        guard let jsonStr = json, let data = jsonStr.data(using: .utf8) else { throw NSError() }

        let jsonDecoder = JSONDecoder()
        let object = try jsonDecoder.decode(Self.self, from: data)
        return object
    }
}

public class JobApplication: BasicJobApplication {
    public static var full = JobApplication()
    public static var quick = JobApplication()

    public var profilePicture: UIImage?
    public var profilePictureURL: String?

    public func setValue(_ value: Any, toFieldWithKey key: ApplicationFieldKey) {

    }

    public func getValue(key: ApplicationFieldKey) -> Any? {
        return ""
    }
}



public class BasicJobApplication: Codable {
    public var appliedPosition: AppliedPosition?
    public var certificatesOfCompetency: CertificatesOfCompetency?
    public var contactInformation: ContactInformation?
    public var familyData: FamilyData?
    public var nextOfKin: NextOfKin?
    public var passportVisa: PassportVisa?
    public var personalInformation: PersonalInformation?
    public var quickVersion: QuickVersion?
    public var seamansBookData: SeamansBookData?
    public var seaServiceExperience: SeaServiceExperience?
    public var submitDate: String?
    public var submitID: String?
    public var type: String?

    enum CodingKeys: String, CodingKey {
        case appliedPosition = "appliedPosition"
        case certificatesOfCompetency = "certificatesOfCompetency"
        case contactInformation = "contactInformation"
        case familyData = "familyData"
        case nextOfKin = "nextOfKin"
        case passportVisa = "passportVisa"
        case personalInformation = "personalInformation"
        case quickVersion = "quickVersion"
        case seamansBookData = "seamansBookData"
        case seaServiceExperience = "seaServiceExperience"
        case submitDate = "submitDate"
        case submitID = "submitID"
        case type = "type"
    }

    public init() {
        self.appliedPosition = AppliedPosition()
        self.certificatesOfCompetency = CertificatesOfCompetency()
        self.contactInformation = ContactInformation()
        self.familyData = FamilyData()
        self.nextOfKin = NextOfKin()
        self.passportVisa = PassportVisa()
        self.personalInformation = PersonalInformation()
        self.quickVersion = QuickVersion()
        self.seamansBookData = SeamansBookData()
        self.seaServiceExperience = SeaServiceExperience()
        self.submitDate = String()
        self.submitID = String()
        self.type = String()
    }

    public init(appliedPosition: AppliedPosition?, certificatesOfCompetency: CertificatesOfCompetency?, contactInformation: ContactInformation?, familyData: FamilyData?, nextOfKin: NextOfKin?, passportVisa: PassportVisa?, personalInformation: PersonalInformation?, quickVersion: QuickVersion?, seamansBookData: SeamansBookData?, seaServiceExperience: SeaServiceExperience?, submitDate: String?, submitID: String?, type: String?) {
        self.appliedPosition = appliedPosition
        self.certificatesOfCompetency = certificatesOfCompetency
        self.contactInformation = contactInformation
        self.familyData = familyData
        self.nextOfKin = nextOfKin
        self.passportVisa = passportVisa
        self.personalInformation = personalInformation
        self.quickVersion = quickVersion
        self.seamansBookData = seamansBookData
        self.seaServiceExperience = seaServiceExperience
        self.submitDate = submitDate
        self.submitID = submitID
        self.type = type
    }
    // MARK: - Fleet Related Code
}

public class AppliedPosition: Codable {
    public var availableFrom: String?
    public var lowerRank: Bool?
    public var rank: String?

    enum CodingKeys: String, CodingKey {
        case availableFrom = "availableFrom"
        case lowerRank = "lowerRank"
        case rank = "rank"
    }

    public init() {
        self.availableFrom = String()
        self.lowerRank = Bool()
        self.rank = String()
    }

    public init(availableFrom: String?, lowerRank: Bool?, rank: String?) {
        self.availableFrom = availableFrom
        self.lowerRank = lowerRank
        self.rank = rank
    }
    // MARK: - Fleet Related Code
}

public class CertificatesOfCompetency: Codable {
    public var country: String?

    enum CodingKeys: String, CodingKey {
        case country = "Country"
    }

    public init() {
        self.country = String()
    }

    public init(country: String?) {
        self.country = country
    }
    // MARK: - Fleet Related Code
}

public class ContactInformation: Codable {
    public var cityLocal: String?
    public var cityPermanent: String?
    public var countryLocal: String?
    public var countryPermanent: String?
    public var email: String?
    public var phoneHomeLocal: String?
    public var phoneHomePermanent: String?
    public var phoneHomeQuickapply: String?
    public var phoneMobileLocal: String?
    public var phoneMobilePermanent: String?
    public var phoneMobileQuickapply: String?
    public var postcodeLocal: String?
    public var postcodePermanent: String?
    public var stateLocal: String?
    public var statePermanent: String?
    public var streetFirstLocal: String?
    public var streetFirstPermanent: String?
    public var streetSecondLocal: String?
    public var streetSecondPermanent: String?
    public var valid: Bool?

    enum CodingKeys: String, CodingKey {
        case cityLocal = "city_local"
        case cityPermanent = "city_permanent"
        case countryLocal = "country_local"
        case countryPermanent = "country_permanent"
        case email = "email"
        case phoneHomeLocal = "phoneHome_local"
        case phoneHomePermanent = "phoneHome_permanent"
        case phoneHomeQuickapply = "phoneHome_quickapply"
        case phoneMobileLocal = "phoneMobile_local"
        case phoneMobilePermanent = "phoneMobile_permanent"
        case phoneMobileQuickapply = "phoneMobile_quickapply"
        case postcodeLocal = "postcode_local"
        case postcodePermanent = "postcode_permanent"
        case stateLocal = "state_local"
        case statePermanent = "state_permanent"
        case streetFirstLocal = "street_first_local"
        case streetFirstPermanent = "street_first_permanent"
        case streetSecondLocal = "street_second_local"
        case streetSecondPermanent = "street_second_permanent"
        case valid = "valid"
    }

    public init() {
        self.cityLocal = String()
        self.cityPermanent = String()
        self.countryLocal = String()
        self.countryPermanent = String()
        self.email = String()
        self.phoneHomeLocal = String()
        self.phoneHomePermanent = String()
        self.phoneHomeQuickapply = String()
        self.phoneMobileLocal = String()
        self.phoneMobilePermanent = String()
        self.phoneMobileQuickapply = String()
        self.postcodeLocal = String()
        self.postcodePermanent = String()
        self.stateLocal = String()
        self.statePermanent = String()
        self.streetFirstLocal = String()
        self.streetFirstPermanent = String()
        self.streetSecondLocal = String()
        self.streetSecondPermanent = String()
        self.valid = Bool()
    }

    public init(cityLocal: String?, cityPermanent: String?, countryLocal: String?, countryPermanent: String?, email: String?, phoneHomeLocal: String?, phoneHomePermanent: String?, phoneHomeQuickapply: String?, phoneMobileLocal: String?, phoneMobilePermanent: String?, phoneMobileQuickapply: String?, postcodeLocal: String?, postcodePermanent: String?, stateLocal: String?, statePermanent: String?, streetFirstLocal: String?, streetFirstPermanent: String?, streetSecondLocal: String?, streetSecondPermanent: String?, valid: Bool?) {
        self.cityLocal = cityLocal
        self.cityPermanent = cityPermanent
        self.countryLocal = countryLocal
        self.countryPermanent = countryPermanent
        self.email = email
        self.phoneHomeLocal = phoneHomeLocal
        self.phoneHomePermanent = phoneHomePermanent
        self.phoneHomeQuickapply = phoneHomeQuickapply
        self.phoneMobileLocal = phoneMobileLocal
        self.phoneMobilePermanent = phoneMobilePermanent
        self.phoneMobileQuickapply = phoneMobileQuickapply
        self.postcodeLocal = postcodeLocal
        self.postcodePermanent = postcodePermanent
        self.stateLocal = stateLocal
        self.statePermanent = statePermanent
        self.streetFirstLocal = streetFirstLocal
        self.streetFirstPermanent = streetFirstPermanent
        self.streetSecondLocal = streetSecondLocal
        self.streetSecondPermanent = streetSecondPermanent
        self.valid = valid
    }
    // MARK: - Fleet Related Code
}

public class FamilyData: Codable {
    public var members: [Member]?

    enum CodingKeys: String, CodingKey {
        case members = "members"
    }

    public init() {
        self.members = [Member]()
    }

    public init(members: [Member]?) {
        self.members = members
    }
    // MARK: - Fleet Related Code
}

public class Member: Codable {
    public var dateOfBirth: String?
    public var dateOfExpiry: String?
    public var firstName: String?
    public var gender: Bool?
    public var lastName: String?
    public var memberID: String?
    public var passportNumber: String?
    public var placeOfIssue: String?
    public var relationship: Bool?

    enum CodingKeys: String, CodingKey {
        case dateOfBirth = "date_of_birth"
        case dateOfExpiry = "date_of_expiry"
        case firstName = "first_name"
        case gender = "gender"
        case lastName = "last_name"
        case memberID = "memberID"
        case passportNumber = "passport_number"
        case placeOfIssue = "place_of_issue"
        case relationship = "relationship"
    }

    public init() {
        self.dateOfBirth = String()
        self.dateOfExpiry = String()
        self.firstName = String()
        self.gender = Bool()
        self.lastName = String()
        self.memberID = String()
        self.passportNumber = String()
        self.placeOfIssue = String()
        self.relationship = Bool()
    }

    public init(dateOfBirth: String?, dateOfExpiry: String?, firstName: String?, gender: Bool?, lastName: String?, memberID: String?, passportNumber: String?, placeOfIssue: String?, relationship: Bool?) {
        self.dateOfBirth = dateOfBirth
        self.dateOfExpiry = dateOfExpiry
        self.firstName = firstName
        self.gender = gender
        self.lastName = lastName
        self.memberID = memberID
        self.passportNumber = passportNumber
        self.placeOfIssue = placeOfIssue
        self.relationship = relationship
    }
    // MARK: - Fleet Related Code
}

public class NextOfKin: Codable {
    public var city: String?
    public var country: String?
    public var dateOfBirth: String?
    public var name: String?
    public var nameAlternate: String?
    public var phoneHome: String?
    public var phoneMobile: String?
    public var postcode: String?
    public var relationship: String?
    public var relationshipAlternate: String?
    public var state: String?
    public var streetFirst: String?
    public var streetSecond: String?
    public var valid: Bool?

    enum CodingKeys: String, CodingKey {
        case city = "city"
        case country = "country"
        case dateOfBirth = "dateOfBirth"
        case name = "name"
        case nameAlternate = "name_alternate"
        case phoneHome = "phoneHome"
        case phoneMobile = "phoneMobile"
        case postcode = "postcode"
        case relationship = "relationship"
        case relationshipAlternate = "relationship_alternate"
        case state = "state"
        case streetFirst = "street_first"
        case streetSecond = "street_second"
        case valid = "valid"
    }

    public init() {
        self.city = String()
        self.country = String()
        self.dateOfBirth = String()
        self.name = String()
        self.nameAlternate = String()
        self.phoneHome = String()
        self.phoneMobile = String()
        self.postcode = String()
        self.relationship = String()
        self.relationshipAlternate = String()
        self.state = String()
        self.streetFirst = String()
        self.streetSecond = String()
        self.valid = Bool()
    }

    public init(city: String?, country: String?, dateOfBirth: String?, name: String?, nameAlternate: String?, phoneHome: String?, phoneMobile: String?, postcode: String?, relationship: String?, relationshipAlternate: String?, state: String?, streetFirst: String?, streetSecond: String?, valid: Bool?) {
        self.city = city
        self.country = country
        self.dateOfBirth = dateOfBirth
        self.name = name
        self.nameAlternate = nameAlternate
        self.phoneHome = phoneHome
        self.phoneMobile = phoneMobile
        self.postcode = postcode
        self.relationship = relationship
        self.relationshipAlternate = relationshipAlternate
        self.state = state
        self.streetFirst = streetFirst
        self.streetSecond = streetSecond
        self.valid = valid
    }
    // MARK: - Fleet Related Code
}

public class PassportVisa: Codable {
    public var australianMaritimeCrewVisa: Bool?
    public var country: String?
    public var dateOfExpiry: String?
    public var dateOfIssue: String?
    public var ecnr: Bool?
    public var number: String?
    public var placeOfIssue: String?
    public var usVisaCD: Bool?
    public var usVisaCDDateOfExpiry: String?

    enum CodingKeys: String, CodingKey {
        case australianMaritimeCrewVisa = "Australian_Maritime_Crew_Visa"
        case country = "country"
        case dateOfExpiry = "date_of_expiry"
        case dateOfIssue = "date_of_issue"
        case ecnr = "ecnr"
        case number = "number"
        case placeOfIssue = "place_of_issue"
        case usVisaCD = "US_Visa_CD"
        case usVisaCDDateOfExpiry = "US_Visa_CD_date_of_expiry"
    }

    public init() {
        self.australianMaritimeCrewVisa = Bool()
        self.country = String()
        self.dateOfExpiry = String()
        self.dateOfIssue = String()
        self.ecnr = Bool()
        self.number = String()
        self.placeOfIssue = String()
        self.usVisaCD = Bool()
        self.usVisaCDDateOfExpiry = String()
    }

    public init(australianMaritimeCrewVisa: Bool?, country: String?, dateOfExpiry: String?, dateOfIssue: String?, ecnr: Bool?, number: String?, placeOfIssue: String?, usVisaCD: Bool?, usVisaCDDateOfExpiry: String?) {
        self.australianMaritimeCrewVisa = australianMaritimeCrewVisa
        self.country = country
        self.dateOfExpiry = dateOfExpiry
        self.dateOfIssue = dateOfIssue
        self.ecnr = ecnr
        self.number = number
        self.placeOfIssue = placeOfIssue
        self.usVisaCD = usVisaCD
        self.usVisaCDDateOfExpiry = usVisaCDDateOfExpiry
    }
    // MARK: - Fleet Related Code
}

public class PersonalInformation: Codable {
    public var bloodGroup: String?
    public var boilerSuitSize: String?
    public var dateOfBirth: String?
    public var firstName: String?
    public var height: String?
    public var lastName: String?
    public var middleName: String?
    public var nationality: String?
    public var placeOfBirth: String?
    public var shoeSize: String?
    public var smoker: Bool?
    public var unionMembership: Bool?
    public var vegetarian: Bool?
    public var weight: String?
    public var yellowFeverVaccinationBATCHLOTNumber: String?
    public var yellowFeverVaccinationDateOfExpiry: String?
    public var yellowFeverVaccinationDateOfIssue: String?

    enum CodingKeys: String, CodingKey {
        case bloodGroup = "bloodGroup"
        case boilerSuitSize = "boilerSuitSize"
        case dateOfBirth = "dateOfBirth"
        case firstName = "firstName"
        case height = "height"
        case lastName = "lastName"
        case middleName = "middleName"
        case nationality = "nationality"
        case placeOfBirth = "placeOfBirth"
        case shoeSize = "shoeSize"
        case smoker = "smoker"
        case unionMembership = "UnionMembership"
        case vegetarian = "vegetarian"
        case weight = "weight"
        case yellowFeverVaccinationBATCHLOTNumber = "YellowFeverVaccination_BATCH_LOTNumber"
        case yellowFeverVaccinationDateOfExpiry = "YellowFeverVaccination_DateOfExpiry"
        case yellowFeverVaccinationDateOfIssue = "YellowFeverVaccination_DateOfIssue"
    }

    public init() {
        self.bloodGroup = String()
        self.boilerSuitSize = String()
        self.dateOfBirth = String()
        self.firstName = String()
        self.height = String()
        self.lastName = String()
        self.middleName = String()
        self.nationality = String()
        self.placeOfBirth = String()
        self.shoeSize = String()
        self.smoker = Bool()
        self.unionMembership = Bool()
        self.vegetarian = Bool()
        self.weight = String()
        self.yellowFeverVaccinationBATCHLOTNumber = String()
        self.yellowFeverVaccinationDateOfExpiry = String()
        self.yellowFeverVaccinationDateOfIssue = String()
    }

    public init(bloodGroup: String?, boilerSuitSize: String?, dateOfBirth: String?, firstName: String?, height: String?, lastName: String?, middleName: String?, nationality: String?, placeOfBirth: String?, shoeSize: String?, smoker: Bool?, unionMembership: Bool?, vegetarian: Bool?, weight: String?, yellowFeverVaccinationBATCHLOTNumber: String?, yellowFeverVaccinationDateOfExpiry: String?, yellowFeverVaccinationDateOfIssue: String?) {
        self.bloodGroup = bloodGroup
        self.boilerSuitSize = boilerSuitSize
        self.dateOfBirth = dateOfBirth
        self.firstName = firstName
        self.height = height
        self.lastName = lastName
        self.middleName = middleName
        self.nationality = nationality
        self.placeOfBirth = placeOfBirth
        self.shoeSize = shoeSize
        self.smoker = smoker
        self.unionMembership = unionMembership
        self.vegetarian = vegetarian
        self.weight = weight
        self.yellowFeverVaccinationBATCHLOTNumber = yellowFeverVaccinationBATCHLOTNumber
        self.yellowFeverVaccinationDateOfExpiry = yellowFeverVaccinationDateOfExpiry
        self.yellowFeverVaccinationDateOfIssue = yellowFeverVaccinationDateOfIssue
    }
    // MARK: - Fleet Related Code
}

public class QuickVersion: Codable {
    public var nearestOffice: String?
    public var remarks: String?
    public var yearsOfExperience: String?

    enum CodingKeys: String, CodingKey {
        case nearestOffice = "nearestOffice"
        case remarks = "Remarks"
        case yearsOfExperience = "YearsOfExperience"
    }

    public init() {
        self.nearestOffice = String()
        self.remarks = String()
        self.yearsOfExperience = String()
    }

    public init(nearestOffice: String?, remarks: String?, yearsOfExperience: String?) {
        self.nearestOffice = nearestOffice
        self.remarks = remarks
        self.yearsOfExperience = yearsOfExperience
    }
    // MARK: - Fleet Related Code
}

public class SeaServiceExperience: Codable {
    public var brakeHorsepower: String?
    public var engineType: String?
    public var vesselSize: String?
    public var vesselType: String?

    enum CodingKeys: String, CodingKey {
        case brakeHorsepower = "brakeHorsepower"
        case engineType = "engineType"
        case vesselSize = "vesselSize"
        case vesselType = "vesselType"
    }

    public init() {
        self.brakeHorsepower = String()
        self.engineType = String()
        self.vesselSize = String()
        self.vesselType = String()
    }

    public init(brakeHorsepower: String?, engineType: String?, vesselSize: String?, vesselType: String?) {
        self.brakeHorsepower = brakeHorsepower
        self.engineType = engineType
        self.vesselSize = vesselSize
        self.vesselType = vesselType
    }
    // MARK: - Fleet Related Code
}

public class SeamansBookData: Codable {
    public var liberian: SeamansBook?
    public var marshelIslands: SeamansBook?
    public var norwagian: SeamansBook?
    public var otherBooks: [SeamansBook]?
    public var panamanian: SeamansBook?

    enum CodingKeys: String, CodingKey {
        case liberian = "liberian"
        case marshelIslands = "marshel_islands"
        case norwagian = "norwagian"
        case otherBooks = "other_books"
        case panamanian = "panamanian"
    }

    public init() {
        self.liberian = SeamansBook()
        self.marshelIslands = SeamansBook()
        self.norwagian = SeamansBook()
        self.otherBooks = [SeamansBook]()
        self.panamanian = SeamansBook()
    }

    public init(liberian: SeamansBook?, marshelIslands: SeamansBook?, norwagian: SeamansBook?, otherBooks: [SeamansBook]?, panamanian: SeamansBook?) {
        self.liberian = liberian
        self.marshelIslands = marshelIslands
        self.norwagian = norwagian
        self.otherBooks = otherBooks
        self.panamanian = panamanian
    }
    // MARK: - Fleet Related Code
}

public class SeamansBook: Codable {
    public var bookID: String?
    public var country: String?
    public var dateOfExpiry: String?
    public var dateOfIssue: String?
    public var number: String?
    public var placeOfIssue: String?

    enum CodingKeys: String, CodingKey {
        case bookID = "bookID"
        case country = "country"
        case dateOfExpiry = "date_of_expiry"
        case dateOfIssue = "date_of_issue"
        case number = "number"
        case placeOfIssue = "place_of_issue"
    }

    public init() {
        self.bookID = String()
        self.country = String()
        self.dateOfExpiry = String()
        self.dateOfIssue = String()
        self.number = String()
        self.placeOfIssue = String()
    }

    public init(bookID: String?, country: String?, dateOfExpiry: String?, dateOfIssue: String?, number: String?, placeOfIssue: String?) {
        self.bookID = bookID
        self.country = country
        self.dateOfExpiry = dateOfExpiry
        self.dateOfIssue = dateOfIssue
        self.number = number
        self.placeOfIssue = placeOfIssue
    }
    // MARK: - Fleet Related Code
}

// MARK: Convenience initializers

public extension BasicJobApplication {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(BasicJobApplication.self, from: data)
        self.init(appliedPosition: me.appliedPosition, certificatesOfCompetency: me.certificatesOfCompetency, contactInformation: me.contactInformation, familyData: me.familyData, nextOfKin: me.nextOfKin, passportVisa: me.passportVisa, personalInformation: me.personalInformation, quickVersion: me.quickVersion, seamansBookData: me.seamansBookData, seaServiceExperience: me.seaServiceExperience, submitDate: me.submitDate, submitID: me.submitID, type: me.type)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension AppliedPosition {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(AppliedPosition.self, from: data)
        self.init(availableFrom: me.availableFrom, lowerRank: me.lowerRank, rank: me.rank)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension CertificatesOfCompetency {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(CertificatesOfCompetency.self, from: data)
        self.init(country: me.country)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension ContactInformation {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(ContactInformation.self, from: data)
        self.init(cityLocal: me.cityLocal, cityPermanent: me.cityPermanent, countryLocal: me.countryLocal, countryPermanent: me.countryPermanent, email: me.email, phoneHomeLocal: me.phoneHomeLocal, phoneHomePermanent: me.phoneHomePermanent, phoneHomeQuickapply: me.phoneHomeQuickapply, phoneMobileLocal: me.phoneMobileLocal, phoneMobilePermanent: me.phoneMobilePermanent, phoneMobileQuickapply: me.phoneMobileQuickapply, postcodeLocal: me.postcodeLocal, postcodePermanent: me.postcodePermanent, stateLocal: me.stateLocal, statePermanent: me.statePermanent, streetFirstLocal: me.streetFirstLocal, streetFirstPermanent: me.streetFirstPermanent, streetSecondLocal: me.streetSecondLocal, streetSecondPermanent: me.streetSecondPermanent, valid: me.valid)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension FamilyData {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(FamilyData.self, from: data)
        self.init(members: me.members)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension Member {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(Member.self, from: data)
        self.init(dateOfBirth: me.dateOfBirth, dateOfExpiry: me.dateOfExpiry, firstName: me.firstName, gender: me.gender, lastName: me.lastName, memberID: me.memberID, passportNumber: me.passportNumber, placeOfIssue: me.placeOfIssue, relationship: me.relationship)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension NextOfKin {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(NextOfKin.self, from: data)
        self.init(city: me.city, country: me.country, dateOfBirth: me.dateOfBirth, name: me.name, nameAlternate: me.nameAlternate, phoneHome: me.phoneHome, phoneMobile: me.phoneMobile, postcode: me.postcode, relationship: me.relationship, relationshipAlternate: me.relationshipAlternate, state: me.state, streetFirst: me.streetFirst, streetSecond: me.streetSecond, valid: me.valid)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension PassportVisa {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(PassportVisa.self, from: data)
        self.init(australianMaritimeCrewVisa: me.australianMaritimeCrewVisa, country: me.country, dateOfExpiry: me.dateOfExpiry, dateOfIssue: me.dateOfIssue, ecnr: me.ecnr, number: me.number, placeOfIssue: me.placeOfIssue, usVisaCD: me.usVisaCD, usVisaCDDateOfExpiry: me.usVisaCDDateOfExpiry)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension PersonalInformation {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(PersonalInformation.self, from: data)
        self.init(bloodGroup: me.bloodGroup, boilerSuitSize: me.boilerSuitSize, dateOfBirth: me.dateOfBirth, firstName: me.firstName, height: me.height, lastName: me.lastName, middleName: me.middleName, nationality: me.nationality, placeOfBirth: me.placeOfBirth, shoeSize: me.shoeSize, smoker: me.smoker, unionMembership: me.unionMembership, vegetarian: me.vegetarian, weight: me.weight, yellowFeverVaccinationBATCHLOTNumber: me.yellowFeverVaccinationBATCHLOTNumber, yellowFeverVaccinationDateOfExpiry: me.yellowFeverVaccinationDateOfExpiry, yellowFeverVaccinationDateOfIssue: me.yellowFeverVaccinationDateOfIssue)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension QuickVersion {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(QuickVersion.self, from: data)
        self.init(nearestOffice: me.nearestOffice, remarks: me.remarks, yearsOfExperience: me.yearsOfExperience)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension SeaServiceExperience {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(SeaServiceExperience.self, from: data)
        self.init(brakeHorsepower: me.brakeHorsepower, engineType: me.engineType, vesselSize: me.vesselSize, vesselType: me.vesselType)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension SeamansBookData {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(SeamansBookData.self, from: data)
        self.init(liberian: me.liberian, marshelIslands: me.marshelIslands, norwagian: me.norwagian, otherBooks: me.otherBooks, panamanian: me.panamanian)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

public extension SeamansBook {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(SeamansBook.self, from: data)
        self.init(bookID: me.bookID, country: me.country, dateOfExpiry: me.dateOfExpiry, dateOfIssue: me.dateOfIssue, number: me.number, placeOfIssue: me.placeOfIssue)
    }

    public convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    public convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    public func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    public func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Fleet Management code
