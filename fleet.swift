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


extension Encodable {
    func asDictionary() throws -> [String: Any] {
        let data = try JSONEncoder().encode(self)
        guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            throw NSError()
        }
        return dictionary
    }
}

/// Generated from source.json with shasum c696a95adeb0e1d82bb25144518a4f33fe538004
public class JobApplication: Codable {
    public var appliedPosition: AppliedPosition?
    public var certificatesOfCompetency: CertificatesOfCompetency?
    public var contactInformation: ContactInformation?
    public var familyData: FamilyData?
    public var nextOfKin: NextOfKin?
    public var passportVisa: PassportVisa?
    public var personalInformation: PersonalInformation?
    public var quickVersion: QuickVersion?
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
        self.seaServiceExperience = SeaServiceExperience()
        self.submitDate = String()
        self.submitID = String()
        self.type = String()
    }

    public init(appliedPosition: AppliedPosition, certificatesOfCompetency: CertificatesOfCompetency, contactInformation: ContactInformation, familyData: FamilyData, nextOfKin: NextOfKin, passportVisa: PassportVisa, personalInformation: PersonalInformation, quickVersion: QuickVersion, seaServiceExperience: SeaServiceExperience, submitDate: String, submitID: String, type: String) {
        self.appliedPosition = appliedPosition
        self.certificatesOfCompetency = certificatesOfCompetency
        self.contactInformation = contactInformation
        self.familyData = familyData
        self.nextOfKin = nextOfKin
        self.passportVisa = passportVisa
        self.personalInformation = personalInformation
        self.quickVersion = quickVersion
        self.seaServiceExperience = seaServiceExperience
        self.submitDate = submitDate
        self.submitID = submitID
        self.type = type
    }
    // MARK: - Fleet Related Code
}

public class AppliedPosition: Codable {
    public var appliedPositionAvailableFrom: String?
    public var appliedPositionLowerRank: Bool?
    public var appliedPositionRank: String?

    enum CodingKeys: String, CodingKey {
        case appliedPositionAvailableFrom = "appliedPosition_availableFrom"
        case appliedPositionLowerRank = "appliedPosition_lowerRank"
        case appliedPositionRank = "appliedPosition_rank"
    }

    public init() {
        self.appliedPositionAvailableFrom = String()
        self.appliedPositionLowerRank = Bool()
        self.appliedPositionRank = String()
    }

    public init(appliedPositionAvailableFrom: String, appliedPositionLowerRank: Bool, appliedPositionRank: String) {
        self.appliedPositionAvailableFrom = appliedPositionAvailableFrom
        self.appliedPositionLowerRank = appliedPositionLowerRank
        self.appliedPositionRank = appliedPositionRank
    }
    // MARK: - Fleet Related Code
}

public class CertificatesOfCompetency: Codable {
    public var certificatesCompetencyCountry: String?

    enum CodingKeys: String, CodingKey {
        case certificatesCompetencyCountry = "certificatesCompetency_Country"
    }

    public init() {
        self.certificatesCompetencyCountry = String()
    }

    public init(certificatesCompetencyCountry: String) {
        self.certificatesCompetencyCountry = certificatesCompetencyCountry
    }
    // MARK: - Fleet Related Code
}

public class ContactInformation: Codable {
    public var contactInformationCityLocal: String?
    public var contactInformationCityPermanent: String?
    public var contactInformationCountryLocal: String?
    public var contactInformationCountryPermanent: String?
    public var contactInformationEmail: String?
    public var contactInformationPhoneHomeLocal: String?
    public var contactInformationPhoneHomePermanent: String?
    public var contactInformationPhoneHomeQuickapply: String?
    public var contactInformationPhoneMobileLocal: String?
    public var contactInformationPhoneMobilePermanent: String?
    public var contactInformationPhoneMobileQuickapply: String?
    public var contactInformationPostcodeLocal: String?
    public var contactInformationPostcodePermanent: String?
    public var contactInformationStateLocal: String?
    public var contactInformationStatePermanent: String?
    public var contactInformationStreetFirstLocal: String?
    public var contactInformationStreetFirstPermanent: String?
    public var contactInformationStreetSecondLocal: String?
    public var contactInformationStreetSecondPermanent: String?

    enum CodingKeys: String, CodingKey {
        case contactInformationCityLocal = "contactInformation_city_local"
        case contactInformationCityPermanent = "contactInformation_city_permanent"
        case contactInformationCountryLocal = "contactInformation_country_local"
        case contactInformationCountryPermanent = "contactInformation_country_permanent"
        case contactInformationEmail = "contactInformation_email"
        case contactInformationPhoneHomeLocal = "contactInformation_phoneHome_local"
        case contactInformationPhoneHomePermanent = "contactInformation_phoneHome_permanent"
        case contactInformationPhoneHomeQuickapply = "contactInformation_phoneHome_quickapply"
        case contactInformationPhoneMobileLocal = "contactInformation_phoneMobile_local"
        case contactInformationPhoneMobilePermanent = "contactInformation_phoneMobile_permanent"
        case contactInformationPhoneMobileQuickapply = "contactInformation_phoneMobile_quickapply"
        case contactInformationPostcodeLocal = "contactInformation_postcode_local"
        case contactInformationPostcodePermanent = "contactInformation_postcode_permanent"
        case contactInformationStateLocal = "contactInformation_state_local"
        case contactInformationStatePermanent = "contactInformation_state_permanent"
        case contactInformationStreetFirstLocal = "contactInformation_street_first_local"
        case contactInformationStreetFirstPermanent = "contactInformation_street_first_permanent"
        case contactInformationStreetSecondLocal = "contactInformation_street_second_local"
        case contactInformationStreetSecondPermanent = "contactInformation_street_second_permanent"
    }

    public init() {
        self.contactInformationCityLocal = String()
        self.contactInformationCityPermanent = String()
        self.contactInformationCountryLocal = String()
        self.contactInformationCountryPermanent = String()
        self.contactInformationEmail = String()
        self.contactInformationPhoneHomeLocal = String()
        self.contactInformationPhoneHomePermanent = String()
        self.contactInformationPhoneHomeQuickapply = String()
        self.contactInformationPhoneMobileLocal = String()
        self.contactInformationPhoneMobilePermanent = String()
        self.contactInformationPhoneMobileQuickapply = String()
        self.contactInformationPostcodeLocal = String()
        self.contactInformationPostcodePermanent = String()
        self.contactInformationStateLocal = String()
        self.contactInformationStatePermanent = String()
        self.contactInformationStreetFirstLocal = String()
        self.contactInformationStreetFirstPermanent = String()
        self.contactInformationStreetSecondLocal = String()
        self.contactInformationStreetSecondPermanent = String()
    }

    public init(contactInformationCityLocal: String, contactInformationCityPermanent: String, contactInformationCountryLocal: String, contactInformationCountryPermanent: String, contactInformationEmail: String, contactInformationPhoneHomeLocal: String, contactInformationPhoneHomePermanent: String, contactInformationPhoneHomeQuickapply: String, contactInformationPhoneMobileLocal: String, contactInformationPhoneMobilePermanent: String, contactInformationPhoneMobileQuickapply: String, contactInformationPostcodeLocal: String, contactInformationPostcodePermanent: String, contactInformationStateLocal: String, contactInformationStatePermanent: String, contactInformationStreetFirstLocal: String, contactInformationStreetFirstPermanent: String, contactInformationStreetSecondLocal: String, contactInformationStreetSecondPermanent: String) {
        self.contactInformationCityLocal = contactInformationCityLocal
        self.contactInformationCityPermanent = contactInformationCityPermanent
        self.contactInformationCountryLocal = contactInformationCountryLocal
        self.contactInformationCountryPermanent = contactInformationCountryPermanent
        self.contactInformationEmail = contactInformationEmail
        self.contactInformationPhoneHomeLocal = contactInformationPhoneHomeLocal
        self.contactInformationPhoneHomePermanent = contactInformationPhoneHomePermanent
        self.contactInformationPhoneHomeQuickapply = contactInformationPhoneHomeQuickapply
        self.contactInformationPhoneMobileLocal = contactInformationPhoneMobileLocal
        self.contactInformationPhoneMobilePermanent = contactInformationPhoneMobilePermanent
        self.contactInformationPhoneMobileQuickapply = contactInformationPhoneMobileQuickapply
        self.contactInformationPostcodeLocal = contactInformationPostcodeLocal
        self.contactInformationPostcodePermanent = contactInformationPostcodePermanent
        self.contactInformationStateLocal = contactInformationStateLocal
        self.contactInformationStatePermanent = contactInformationStatePermanent
        self.contactInformationStreetFirstLocal = contactInformationStreetFirstLocal
        self.contactInformationStreetFirstPermanent = contactInformationStreetFirstPermanent
        self.contactInformationStreetSecondLocal = contactInformationStreetSecondLocal
        self.contactInformationStreetSecondPermanent = contactInformationStreetSecondPermanent
    }
    // MARK: - Fleet Related Code
}

public class FamilyData: Codable {
    public var familyDataMembers: [FamilyDataMember]?

    enum CodingKeys: String, CodingKey {
        case familyDataMembers = "familyData_members"
    }

    public init() {
        self.familyDataMembers = [FamilyDataMember]()
    }

    public init(familyDataMembers: [FamilyDataMember]) {
        self.familyDataMembers = familyDataMembers
    }
    // MARK: - Fleet Related Code
}

public class FamilyDataMember: Codable {
    public var familyDataDateOfBirth: String?
    public var familyDataDateOfExpiry: String?
    public var familyDataFirstName: String?
    public var familyDataLastName: String?
    public var familyDataPassportNumber: String?
    public var familyDataPlaceOfIssue: String?

    enum CodingKeys: String, CodingKey {
        case familyDataDateOfBirth = "familyData_date_of_birth"
        case familyDataDateOfExpiry = "familyData_date_of_expiry"
        case familyDataFirstName = "familyData_first_name"
        case familyDataLastName = "familyData_last_name"
        case familyDataPassportNumber = "familyData_passport_number"
        case familyDataPlaceOfIssue = "familyData_place_of_issue"
    }

    public init() {
        self.familyDataDateOfBirth = String()
        self.familyDataDateOfExpiry = String()
        self.familyDataFirstName = String()
        self.familyDataLastName = String()
        self.familyDataPassportNumber = String()
        self.familyDataPlaceOfIssue = String()
    }

    public init(familyDataDateOfBirth: String, familyDataDateOfExpiry: String, familyDataFirstName: String, familyDataLastName: String, familyDataPassportNumber: String, familyDataPlaceOfIssue: String) {
        self.familyDataDateOfBirth = familyDataDateOfBirth
        self.familyDataDateOfExpiry = familyDataDateOfExpiry
        self.familyDataFirstName = familyDataFirstName
        self.familyDataLastName = familyDataLastName
        self.familyDataPassportNumber = familyDataPassportNumber
        self.familyDataPlaceOfIssue = familyDataPlaceOfIssue
    }
    // MARK: - Fleet Related Code
}

public class NextOfKin: Codable {
    public var nextOfKinCity: String?
    public var nextOfKinCountry: String?
    public var nextOfKinDateOfBirth: String?
    public var nextOfKinName: String?
    public var nextOfKinNameAlternate: String?
    public var nextOfKinPhoneHome: String?
    public var nextOfKinPhoneMobile: String?
    public var nextOfKinPostcode: String?
    public var nextOfKinRelationship: String?
    public var nextOfKinRelationshipAlternate: String?
    public var nextOfKinState: String?
    public var nextOfKinStreetFirst: String?
    public var nextOfKinStreetSecond: String?

    enum CodingKeys: String, CodingKey {
        case nextOfKinCity = "nextOfKin_city"
        case nextOfKinCountry = "nextOfKin_country"
        case nextOfKinDateOfBirth = "nextOfKin_dateOfBirth"
        case nextOfKinName = "nextOfKin_name"
        case nextOfKinNameAlternate = "nextOfKin_name_alternate"
        case nextOfKinPhoneHome = "nextOfKin_phoneHome"
        case nextOfKinPhoneMobile = "nextOfKin_phoneMobile"
        case nextOfKinPostcode = "nextOfKin_postcode"
        case nextOfKinRelationship = "nextOfKin_relationship"
        case nextOfKinRelationshipAlternate = "nextOfKin_relationship_alternate"
        case nextOfKinState = "nextOfKin_state"
        case nextOfKinStreetFirst = "nextOfKin_street_first"
        case nextOfKinStreetSecond = "nextOfKin_street_second"
    }

    public init() {
        self.nextOfKinCity = String()
        self.nextOfKinCountry = String()
        self.nextOfKinDateOfBirth = String()
        self.nextOfKinName = String()
        self.nextOfKinNameAlternate = String()
        self.nextOfKinPhoneHome = String()
        self.nextOfKinPhoneMobile = String()
        self.nextOfKinPostcode = String()
        self.nextOfKinRelationship = String()
        self.nextOfKinRelationshipAlternate = String()
        self.nextOfKinState = String()
        self.nextOfKinStreetFirst = String()
        self.nextOfKinStreetSecond = String()
    }

    public init(nextOfKinCity: String, nextOfKinCountry: String, nextOfKinDateOfBirth: String, nextOfKinName: String, nextOfKinNameAlternate: String, nextOfKinPhoneHome: String, nextOfKinPhoneMobile: String, nextOfKinPostcode: String, nextOfKinRelationship: String, nextOfKinRelationshipAlternate: String, nextOfKinState: String, nextOfKinStreetFirst: String, nextOfKinStreetSecond: String) {
        self.nextOfKinCity = nextOfKinCity
        self.nextOfKinCountry = nextOfKinCountry
        self.nextOfKinDateOfBirth = nextOfKinDateOfBirth
        self.nextOfKinName = nextOfKinName
        self.nextOfKinNameAlternate = nextOfKinNameAlternate
        self.nextOfKinPhoneHome = nextOfKinPhoneHome
        self.nextOfKinPhoneMobile = nextOfKinPhoneMobile
        self.nextOfKinPostcode = nextOfKinPostcode
        self.nextOfKinRelationship = nextOfKinRelationship
        self.nextOfKinRelationshipAlternate = nextOfKinRelationshipAlternate
        self.nextOfKinState = nextOfKinState
        self.nextOfKinStreetFirst = nextOfKinStreetFirst
        self.nextOfKinStreetSecond = nextOfKinStreetSecond
    }
    // MARK: - Fleet Related Code
}

public class PassportVisa: Codable {
    public var passportAustralianMaritimeCrewVisa: Bool?
    public var passportCountry: String?
    public var passportDateOfExpiry: String?
    public var passportDateOfIssue: String?
    public var passportEcnr: Bool?
    public var passportNumber: String?
    public var passportPlaceOfIssue: String?
    public var passportUSVisaCD: Bool?
    public var passportUSVisaCDDateOfExpiry: String?

    enum CodingKeys: String, CodingKey {
        case passportAustralianMaritimeCrewVisa = "passport_Australian_Maritime_Crew_Visa"
        case passportCountry = "passport_country"
        case passportDateOfExpiry = "passport_date_of_expiry"
        case passportDateOfIssue = "passport_date_of_issue"
        case passportEcnr = "passport_ecnr"
        case passportNumber = "passport_number"
        case passportPlaceOfIssue = "passport_place_of_issue"
        case passportUSVisaCD = "passport_US_Visa_CD"
        case passportUSVisaCDDateOfExpiry = "passport_US_Visa_CD_date_of_expiry"
    }

    public init() {
        self.passportAustralianMaritimeCrewVisa = Bool()
        self.passportCountry = String()
        self.passportDateOfExpiry = String()
        self.passportDateOfIssue = String()
        self.passportEcnr = Bool()
        self.passportNumber = String()
        self.passportPlaceOfIssue = String()
        self.passportUSVisaCD = Bool()
        self.passportUSVisaCDDateOfExpiry = String()
    }

    public init(passportAustralianMaritimeCrewVisa: Bool, passportCountry: String, passportDateOfExpiry: String, passportDateOfIssue: String, passportEcnr: Bool, passportNumber: String, passportPlaceOfIssue: String, passportUSVisaCD: Bool, passportUSVisaCDDateOfExpiry: String) {
        self.passportAustralianMaritimeCrewVisa = passportAustralianMaritimeCrewVisa
        self.passportCountry = passportCountry
        self.passportDateOfExpiry = passportDateOfExpiry
        self.passportDateOfIssue = passportDateOfIssue
        self.passportEcnr = passportEcnr
        self.passportNumber = passportNumber
        self.passportPlaceOfIssue = passportPlaceOfIssue
        self.passportUSVisaCD = passportUSVisaCD
        self.passportUSVisaCDDateOfExpiry = passportUSVisaCDDateOfExpiry
    }
    // MARK: - Fleet Related Code
}

public class PersonalInformation: Codable {
    public var personalDetailsBloodGroup: String?
    public var personalDetailsBoilerSuitSize: String?
    public var personalDetailsDateOfBirth: String?
    public var personalDetailsFirstName: String?
    public var personalDetailsHeight: String?
    public var personalDetailsLastName: String?
    public var personalDetailsMiddleName: String?
    public var personalDetailsNationality: String?
    public var personalDetailsPlaceOfBirth: String?
    public var personalDetailsShoeSize: String?
    public var personalDetailsSmoker: Bool?
    public var personalDetailsUnionMembership: Bool?
    public var personalDetailsVegetarian: Bool?
    public var personalDetailsWeight: String?
    public var personalDetailsYellowFeverVaccinationBATCHLOTNumber: String?
    public var personalDetailsYellowFeverVaccinationDateOfExpiry: String?
    public var personalDetailsYellowFeverVaccinationDateOfIssue: String?

    enum CodingKeys: String, CodingKey {
        case personalDetailsBloodGroup = "personalDetails_bloodGroup"
        case personalDetailsBoilerSuitSize = "personalDetails_boilerSuitSize"
        case personalDetailsDateOfBirth = "personalDetails_dateOfBirth"
        case personalDetailsFirstName = "personalDetails_firstName"
        case personalDetailsHeight = "personalDetails_height"
        case personalDetailsLastName = "personalDetails_lastName"
        case personalDetailsMiddleName = "personalDetails_middleName"
        case personalDetailsNationality = "personalDetails_nationality"
        case personalDetailsPlaceOfBirth = "personalDetails_placeOfBirth"
        case personalDetailsShoeSize = "personalDetails_shoeSize"
        case personalDetailsSmoker = "personalDetails_smoker"
        case personalDetailsUnionMembership = "personalDetails_UnionMembership"
        case personalDetailsVegetarian = "personalDetails_vegetarian"
        case personalDetailsWeight = "personalDetails_weight"
        case personalDetailsYellowFeverVaccinationBATCHLOTNumber = "personalDetails_YellowFeverVaccination_BATCH_LOTNumber"
        case personalDetailsYellowFeverVaccinationDateOfExpiry = "personalDetails_YellowFeverVaccination_DateOfExpiry"
        case personalDetailsYellowFeverVaccinationDateOfIssue = "personalDetails_YellowFeverVaccination_DateOfIssue"
    }

    public init() {
        self.personalDetailsBloodGroup = String()
        self.personalDetailsBoilerSuitSize = String()
        self.personalDetailsDateOfBirth = String()
        self.personalDetailsFirstName = String()
        self.personalDetailsHeight = String()
        self.personalDetailsLastName = String()
        self.personalDetailsMiddleName = String()
        self.personalDetailsNationality = String()
        self.personalDetailsPlaceOfBirth = String()
        self.personalDetailsShoeSize = String()
        self.personalDetailsSmoker = Bool()
        self.personalDetailsUnionMembership = Bool()
        self.personalDetailsVegetarian = Bool()
        self.personalDetailsWeight = String()
        self.personalDetailsYellowFeverVaccinationBATCHLOTNumber = String()
        self.personalDetailsYellowFeverVaccinationDateOfExpiry = String()
        self.personalDetailsYellowFeverVaccinationDateOfIssue = String()
    }

    public init(personalDetailsBloodGroup: String, personalDetailsBoilerSuitSize: String, personalDetailsDateOfBirth: String, personalDetailsFirstName: String, personalDetailsHeight: String, personalDetailsLastName: String, personalDetailsMiddleName: String, personalDetailsNationality: String, personalDetailsPlaceOfBirth: String, personalDetailsShoeSize: String, personalDetailsSmoker: Bool, personalDetailsUnionMembership: Bool, personalDetailsVegetarian: Bool, personalDetailsWeight: String, personalDetailsYellowFeverVaccinationBATCHLOTNumber: String, personalDetailsYellowFeverVaccinationDateOfExpiry: String, personalDetailsYellowFeverVaccinationDateOfIssue: String) {
        self.personalDetailsBloodGroup = personalDetailsBloodGroup
        self.personalDetailsBoilerSuitSize = personalDetailsBoilerSuitSize
        self.personalDetailsDateOfBirth = personalDetailsDateOfBirth
        self.personalDetailsFirstName = personalDetailsFirstName
        self.personalDetailsHeight = personalDetailsHeight
        self.personalDetailsLastName = personalDetailsLastName
        self.personalDetailsMiddleName = personalDetailsMiddleName
        self.personalDetailsNationality = personalDetailsNationality
        self.personalDetailsPlaceOfBirth = personalDetailsPlaceOfBirth
        self.personalDetailsShoeSize = personalDetailsShoeSize
        self.personalDetailsSmoker = personalDetailsSmoker
        self.personalDetailsUnionMembership = personalDetailsUnionMembership
        self.personalDetailsVegetarian = personalDetailsVegetarian
        self.personalDetailsWeight = personalDetailsWeight
        self.personalDetailsYellowFeverVaccinationBATCHLOTNumber = personalDetailsYellowFeverVaccinationBATCHLOTNumber
        self.personalDetailsYellowFeverVaccinationDateOfExpiry = personalDetailsYellowFeverVaccinationDateOfExpiry
        self.personalDetailsYellowFeverVaccinationDateOfIssue = personalDetailsYellowFeverVaccinationDateOfIssue
    }
    // MARK: - Fleet Related Code
}

public class QuickVersion: Codable {
    public var quickApplicationNearestOffice: String?
    public var quickApplicationRemarks: String?
    public var quickApplicationYearsOfExperience: String?

    enum CodingKeys: String, CodingKey {
        case quickApplicationNearestOffice = "quickApplication_nearestOffice"
        case quickApplicationRemarks = "quickApplication_Remarks"
        case quickApplicationYearsOfExperience = "quickApplication_YearsOfExperience"
    }

    public init() {
        self.quickApplicationNearestOffice = String()
        self.quickApplicationRemarks = String()
        self.quickApplicationYearsOfExperience = String()
    }

    public init(quickApplicationNearestOffice: String, quickApplicationRemarks: String, quickApplicationYearsOfExperience: String) {
        self.quickApplicationNearestOffice = quickApplicationNearestOffice
        self.quickApplicationRemarks = quickApplicationRemarks
        self.quickApplicationYearsOfExperience = quickApplicationYearsOfExperience
    }
    // MARK: - Fleet Related Code
}

public class SeaServiceExperience: Codable {
    public var seaServiceExperienceBrakeHorsepower: String?
    public var seaServiceExperienceEngineType: String?
    public var seaServiceExperienceVesselSize: String?
    public var seaServiceExperienceVesselType: String?

    enum CodingKeys: String, CodingKey {
        case seaServiceExperienceBrakeHorsepower = "seaServiceExperience_brakeHorsepower"
        case seaServiceExperienceEngineType = "seaServiceExperience_engineType"
        case seaServiceExperienceVesselSize = "seaServiceExperience_vesselSize"
        case seaServiceExperienceVesselType = "seaServiceExperience_vesselType"
    }

    public init() {
        self.seaServiceExperienceBrakeHorsepower = String()
        self.seaServiceExperienceEngineType = String()
        self.seaServiceExperienceVesselSize = String()
        self.seaServiceExperienceVesselType = String()
    }

    public init(seaServiceExperienceBrakeHorsepower: String, seaServiceExperienceEngineType: String, seaServiceExperienceVesselSize: String, seaServiceExperienceVesselType: String) {
        self.seaServiceExperienceBrakeHorsepower = seaServiceExperienceBrakeHorsepower
        self.seaServiceExperienceEngineType = seaServiceExperienceEngineType
        self.seaServiceExperienceVesselSize = seaServiceExperienceVesselSize
        self.seaServiceExperienceVesselType = seaServiceExperienceVesselType
    }
    // MARK: - Fleet Related Code
}

// MARK: Convenience initializers

public extension JobApplication {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(JobApplication.self, from: data)
        self.init(appliedPosition: me.appliedPosition, certificatesOfCompetency: me.certificatesOfCompetency, contactInformation: me.contactInformation, familyData: me.familyData, nextOfKin: me.nextOfKin, passportVisa: me.passportVisa, personalInformation: me.personalInformation, quickVersion: me.quickVersion, seaServiceExperience: me.seaServiceExperience, submitDate: me.submitDate, submitID: me.submitID, type: me.type)
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
        self.init(appliedPositionAvailableFrom: me.appliedPositionAvailableFrom, appliedPositionLowerRank: me.appliedPositionLowerRank, appliedPositionRank: me.appliedPositionRank)
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
        self.init(certificatesCompetencyCountry: me.certificatesCompetencyCountry)
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
        self.init(contactInformationCityLocal: me.contactInformationCityLocal, contactInformationCityPermanent: me.contactInformationCityPermanent, contactInformationCountryLocal: me.contactInformationCountryLocal, contactInformationCountryPermanent: me.contactInformationCountryPermanent, contactInformationEmail: me.contactInformationEmail, contactInformationPhoneHomeLocal: me.contactInformationPhoneHomeLocal, contactInformationPhoneHomePermanent: me.contactInformationPhoneHomePermanent, contactInformationPhoneHomeQuickapply: me.contactInformationPhoneHomeQuickapply, contactInformationPhoneMobileLocal: me.contactInformationPhoneMobileLocal, contactInformationPhoneMobilePermanent: me.contactInformationPhoneMobilePermanent, contactInformationPhoneMobileQuickapply: me.contactInformationPhoneMobileQuickapply, contactInformationPostcodeLocal: me.contactInformationPostcodeLocal, contactInformationPostcodePermanent: me.contactInformationPostcodePermanent, contactInformationStateLocal: me.contactInformationStateLocal, contactInformationStatePermanent: me.contactInformationStatePermanent, contactInformationStreetFirstLocal: me.contactInformationStreetFirstLocal, contactInformationStreetFirstPermanent: me.contactInformationStreetFirstPermanent, contactInformationStreetSecondLocal: me.contactInformationStreetSecondLocal, contactInformationStreetSecondPermanent: me.contactInformationStreetSecondPermanent)
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
        self.init(familyDataMembers: me.familyDataMembers)
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

public extension FamilyDataMember {
    public convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(FamilyDataMember.self, from: data)
        self.init(familyDataDateOfBirth: me.familyDataDateOfBirth, familyDataDateOfExpiry: me.familyDataDateOfExpiry, familyDataFirstName: me.familyDataFirstName, familyDataLastName: me.familyDataLastName, familyDataPassportNumber: me.familyDataPassportNumber, familyDataPlaceOfIssue: me.familyDataPlaceOfIssue)
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
        self.init(nextOfKinCity: me.nextOfKinCity, nextOfKinCountry: me.nextOfKinCountry, nextOfKinDateOfBirth: me.nextOfKinDateOfBirth, nextOfKinName: me.nextOfKinName, nextOfKinNameAlternate: me.nextOfKinNameAlternate, nextOfKinPhoneHome: me.nextOfKinPhoneHome, nextOfKinPhoneMobile: me.nextOfKinPhoneMobile, nextOfKinPostcode: me.nextOfKinPostcode, nextOfKinRelationship: me.nextOfKinRelationship, nextOfKinRelationshipAlternate: me.nextOfKinRelationshipAlternate, nextOfKinState: me.nextOfKinState, nextOfKinStreetFirst: me.nextOfKinStreetFirst, nextOfKinStreetSecond: me.nextOfKinStreetSecond)
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
        self.init(passportAustralianMaritimeCrewVisa: me.passportAustralianMaritimeCrewVisa, passportCountry: me.passportCountry, passportDateOfExpiry: me.passportDateOfExpiry, passportDateOfIssue: me.passportDateOfIssue, passportEcnr: me.passportEcnr, passportNumber: me.passportNumber, passportPlaceOfIssue: me.passportPlaceOfIssue, passportUSVisaCD: me.passportUSVisaCD, passportUSVisaCDDateOfExpiry: me.passportUSVisaCDDateOfExpiry)
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
        self.init(personalDetailsBloodGroup: me.personalDetailsBloodGroup, personalDetailsBoilerSuitSize: me.personalDetailsBoilerSuitSize, personalDetailsDateOfBirth: me.personalDetailsDateOfBirth, personalDetailsFirstName: me.personalDetailsFirstName, personalDetailsHeight: me.personalDetailsHeight, personalDetailsLastName: me.personalDetailsLastName, personalDetailsMiddleName: me.personalDetailsMiddleName, personalDetailsNationality: me.personalDetailsNationality, personalDetailsPlaceOfBirth: me.personalDetailsPlaceOfBirth, personalDetailsShoeSize: me.personalDetailsShoeSize, personalDetailsSmoker: me.personalDetailsSmoker, personalDetailsUnionMembership: me.personalDetailsUnionMembership, personalDetailsVegetarian: me.personalDetailsVegetarian, personalDetailsWeight: me.personalDetailsWeight, personalDetailsYellowFeverVaccinationBATCHLOTNumber: me.personalDetailsYellowFeverVaccinationBATCHLOTNumber, personalDetailsYellowFeverVaccinationDateOfExpiry: me.personalDetailsYellowFeverVaccinationDateOfExpiry, personalDetailsYellowFeverVaccinationDateOfIssue: me.personalDetailsYellowFeverVaccinationDateOfIssue)
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
        self.init(quickApplicationNearestOffice: me.quickApplicationNearestOffice, quickApplicationRemarks: me.quickApplicationRemarks, quickApplicationYearsOfExperience: me.quickApplicationYearsOfExperience)
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
        self.init(seaServiceExperienceBrakeHorsepower: me.seaServiceExperienceBrakeHorsepower, seaServiceExperienceEngineType: me.seaServiceExperienceEngineType, seaServiceExperienceVesselSize: me.seaServiceExperienceVesselSize, seaServiceExperienceVesselType: me.seaServiceExperienceVesselType)
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
