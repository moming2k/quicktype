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

/// Generated from source.json with shasum c696a95adeb0e1d82bb25144518a4f33fe538004
class JobApplication: Codable {
    let appliedPosition: AppliedPosition
    let certificatesOfCompetency: CertificatesOfCompetency
    let contactInformation: ContactInformation
    let familyData: FamilyData
    let nextOfKin: NextOfKin
    let passportVisa: PassportVisa
    let personalInformation: PersonalInformation
    let quickVersion: QuickVersion
    let seaServiceExperience: SeaServiceExperience
    let submitDate, submitID, type: String

    init(appliedPosition: AppliedPosition, certificatesOfCompetency: CertificatesOfCompetency, contactInformation: ContactInformation, familyData: FamilyData, nextOfKin: NextOfKin, passportVisa: PassportVisa, personalInformation: PersonalInformation, quickVersion: QuickVersion, seaServiceExperience: SeaServiceExperience, submitDate: String, submitID: String, type: String) {
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
}

class AppliedPosition: Codable {
    let appliedPositionAvailableFrom: String
    let appliedPositionLowerRank: Bool
    let appliedPositionRank: String

    enum CodingKeys: String, CodingKey {
        case appliedPositionAvailableFrom = "appliedPosition_availableFrom"
        case appliedPositionLowerRank = "appliedPosition_lowerRank"
        case appliedPositionRank = "appliedPosition_rank"
    }

    init(appliedPositionAvailableFrom: String, appliedPositionLowerRank: Bool, appliedPositionRank: String) {
        self.appliedPositionAvailableFrom = appliedPositionAvailableFrom
        self.appliedPositionLowerRank = appliedPositionLowerRank
        self.appliedPositionRank = appliedPositionRank
    }
}

class CertificatesOfCompetency: Codable {
    let certificatesCompetencyCountry: String

    enum CodingKeys: String, CodingKey {
        case certificatesCompetencyCountry = "certificatesCompetency_Country"
    }

    init(certificatesCompetencyCountry: String) {
        self.certificatesCompetencyCountry = certificatesCompetencyCountry
    }
}

class ContactInformation: Codable {
    let contactInformationCityLocal, contactInformationCityPermanent, contactInformationCountryLocal, contactInformationCountryPermanent: String
    let contactInformationEmail, contactInformationPhoneHomeLocal, contactInformationPhoneHomePermanent, contactInformationPhoneHomeQuickapply: String
    let contactInformationPhoneMobileLocal, contactInformationPhoneMobilePermanent, contactInformationPhoneMobileQuickapply, contactInformationPostcodeLocal: String
    let contactInformationPostcodePermanent, contactInformationStateLocal, contactInformationStatePermanent, contactInformationStreetFirstLocal: String
    let contactInformationStreetFirstPermanent, contactInformationStreetSecondLocal, contactInformationStreetSecondPermanent: String

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

    init(contactInformationCityLocal: String, contactInformationCityPermanent: String, contactInformationCountryLocal: String, contactInformationCountryPermanent: String, contactInformationEmail: String, contactInformationPhoneHomeLocal: String, contactInformationPhoneHomePermanent: String, contactInformationPhoneHomeQuickapply: String, contactInformationPhoneMobileLocal: String, contactInformationPhoneMobilePermanent: String, contactInformationPhoneMobileQuickapply: String, contactInformationPostcodeLocal: String, contactInformationPostcodePermanent: String, contactInformationStateLocal: String, contactInformationStatePermanent: String, contactInformationStreetFirstLocal: String, contactInformationStreetFirstPermanent: String, contactInformationStreetSecondLocal: String, contactInformationStreetSecondPermanent: String) {
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
}

class FamilyData: Codable {
    let familyDataMembers: [FamilyDataMember]

    enum CodingKeys: String, CodingKey {
        case familyDataMembers = "familyData_members"
    }

    init(familyDataMembers: [FamilyDataMember]) {
        self.familyDataMembers = familyDataMembers
    }
}

class FamilyDataMember: Codable {
    let familyDataDateOfBirth, familyDataDateOfExpiry, familyDataFirstName, familyDataLastName: String
    let familyDataPassportNumber, familyDataPlaceOfIssue: String

    enum CodingKeys: String, CodingKey {
        case familyDataDateOfBirth = "familyData_date_of_birth"
        case familyDataDateOfExpiry = "familyData_date_of_expiry"
        case familyDataFirstName = "familyData_first_name"
        case familyDataLastName = "familyData_last_name"
        case familyDataPassportNumber = "familyData_passport_number"
        case familyDataPlaceOfIssue = "familyData_place_of_issue"
    }

    init(familyDataDateOfBirth: String, familyDataDateOfExpiry: String, familyDataFirstName: String, familyDataLastName: String, familyDataPassportNumber: String, familyDataPlaceOfIssue: String) {
        self.familyDataDateOfBirth = familyDataDateOfBirth
        self.familyDataDateOfExpiry = familyDataDateOfExpiry
        self.familyDataFirstName = familyDataFirstName
        self.familyDataLastName = familyDataLastName
        self.familyDataPassportNumber = familyDataPassportNumber
        self.familyDataPlaceOfIssue = familyDataPlaceOfIssue
    }
}

class NextOfKin: Codable {
    let nextOfKinCity, nextOfKinCountry, nextOfKinDateOfBirth, nextOfKinName: String
    let nextOfKinNameAlternate, nextOfKinPhoneHome, nextOfKinPhoneMobile, nextOfKinPostcode: String
    let nextOfKinRelationship, nextOfKinRelationshipAlternate, nextOfKinState, nextOfKinStreetFirst: String
    let nextOfKinStreetSecond: String

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

    init(nextOfKinCity: String, nextOfKinCountry: String, nextOfKinDateOfBirth: String, nextOfKinName: String, nextOfKinNameAlternate: String, nextOfKinPhoneHome: String, nextOfKinPhoneMobile: String, nextOfKinPostcode: String, nextOfKinRelationship: String, nextOfKinRelationshipAlternate: String, nextOfKinState: String, nextOfKinStreetFirst: String, nextOfKinStreetSecond: String) {
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
}

class PassportVisa: Codable {
    let passportAustralianMaritimeCrewVisa: Bool
    let passportCountry, passportDateOfExpiry, passportDateOfIssue: String
    let passportEcnr: Bool
    let passportNumber, passportPlaceOfIssue: String
    let passportUSVisaCD: Bool
    let passportUSVisaCDDateOfExpiry: String

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

    init(passportAustralianMaritimeCrewVisa: Bool, passportCountry: String, passportDateOfExpiry: String, passportDateOfIssue: String, passportEcnr: Bool, passportNumber: String, passportPlaceOfIssue: String, passportUSVisaCD: Bool, passportUSVisaCDDateOfExpiry: String) {
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
}

class PersonalInformation: Codable {
    let personalDetailsBloodGroup, personalDetailsBoilerSuitSize, personalDetailsDateOfBirth, personalDetailsFirstName: String
    let personalDetailsHeight, personalDetailsLastName, personalDetailsMiddleName, personalDetailsNationality: String
    let personalDetailsPlaceOfBirth, personalDetailsShoeSize: String
    let personalDetailsSmoker, personalDetailsUnionMembership, personalDetailsVegetarian: Bool
    let personalDetailsWeight, personalDetailsYellowFeverVaccinationBATCHLOTNumber, personalDetailsYellowFeverVaccinationDateOfExpiry, personalDetailsYellowFeverVaccinationDateOfIssue: String

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

    init(personalDetailsBloodGroup: String, personalDetailsBoilerSuitSize: String, personalDetailsDateOfBirth: String, personalDetailsFirstName: String, personalDetailsHeight: String, personalDetailsLastName: String, personalDetailsMiddleName: String, personalDetailsNationality: String, personalDetailsPlaceOfBirth: String, personalDetailsShoeSize: String, personalDetailsSmoker: Bool, personalDetailsUnionMembership: Bool, personalDetailsVegetarian: Bool, personalDetailsWeight: String, personalDetailsYellowFeverVaccinationBATCHLOTNumber: String, personalDetailsYellowFeverVaccinationDateOfExpiry: String, personalDetailsYellowFeverVaccinationDateOfIssue: String) {
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
}

class QuickVersion: Codable {
    let quickApplicationNearestOffice, quickApplicationRemarks, quickApplicationYearsOfExperience: String

    enum CodingKeys: String, CodingKey {
        case quickApplicationNearestOffice = "quickApplication_nearestOffice"
        case quickApplicationRemarks = "quickApplication_Remarks"
        case quickApplicationYearsOfExperience = "quickApplication_YearsOfExperience"
    }

    init(quickApplicationNearestOffice: String, quickApplicationRemarks: String, quickApplicationYearsOfExperience: String) {
        self.quickApplicationNearestOffice = quickApplicationNearestOffice
        self.quickApplicationRemarks = quickApplicationRemarks
        self.quickApplicationYearsOfExperience = quickApplicationYearsOfExperience
    }
}

class SeaServiceExperience: Codable {
    let seaServiceExperienceBrakeHorsepower, seaServiceExperienceEngineType, seaServiceExperienceVesselSize, seaServiceExperienceVesselType: String

    enum CodingKeys: String, CodingKey {
        case seaServiceExperienceBrakeHorsepower = "seaServiceExperience_brakeHorsepower"
        case seaServiceExperienceEngineType = "seaServiceExperience_engineType"
        case seaServiceExperienceVesselSize = "seaServiceExperience_vesselSize"
        case seaServiceExperienceVesselType = "seaServiceExperience_vesselType"
    }

    init(seaServiceExperienceBrakeHorsepower: String, seaServiceExperienceEngineType: String, seaServiceExperienceVesselSize: String, seaServiceExperienceVesselType: String) {
        self.seaServiceExperienceBrakeHorsepower = seaServiceExperienceBrakeHorsepower
        self.seaServiceExperienceEngineType = seaServiceExperienceEngineType
        self.seaServiceExperienceVesselSize = seaServiceExperienceVesselSize
        self.seaServiceExperienceVesselType = seaServiceExperienceVesselType
    }
}

// MARK: Convenience initializers

extension JobApplication {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(JobApplication.self, from: data)
        self.init(appliedPosition: me.appliedPosition, certificatesOfCompetency: me.certificatesOfCompetency, contactInformation: me.contactInformation, familyData: me.familyData, nextOfKin: me.nextOfKin, passportVisa: me.passportVisa, personalInformation: me.personalInformation, quickVersion: me.quickVersion, seaServiceExperience: me.seaServiceExperience, submitDate: me.submitDate, submitID: me.submitID, type: me.type)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension AppliedPosition {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(AppliedPosition.self, from: data)
        self.init(appliedPositionAvailableFrom: me.appliedPositionAvailableFrom, appliedPositionLowerRank: me.appliedPositionLowerRank, appliedPositionRank: me.appliedPositionRank)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension CertificatesOfCompetency {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(CertificatesOfCompetency.self, from: data)
        self.init(certificatesCompetencyCountry: me.certificatesCompetencyCountry)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension ContactInformation {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(ContactInformation.self, from: data)
        self.init(contactInformationCityLocal: me.contactInformationCityLocal, contactInformationCityPermanent: me.contactInformationCityPermanent, contactInformationCountryLocal: me.contactInformationCountryLocal, contactInformationCountryPermanent: me.contactInformationCountryPermanent, contactInformationEmail: me.contactInformationEmail, contactInformationPhoneHomeLocal: me.contactInformationPhoneHomeLocal, contactInformationPhoneHomePermanent: me.contactInformationPhoneHomePermanent, contactInformationPhoneHomeQuickapply: me.contactInformationPhoneHomeQuickapply, contactInformationPhoneMobileLocal: me.contactInformationPhoneMobileLocal, contactInformationPhoneMobilePermanent: me.contactInformationPhoneMobilePermanent, contactInformationPhoneMobileQuickapply: me.contactInformationPhoneMobileQuickapply, contactInformationPostcodeLocal: me.contactInformationPostcodeLocal, contactInformationPostcodePermanent: me.contactInformationPostcodePermanent, contactInformationStateLocal: me.contactInformationStateLocal, contactInformationStatePermanent: me.contactInformationStatePermanent, contactInformationStreetFirstLocal: me.contactInformationStreetFirstLocal, contactInformationStreetFirstPermanent: me.contactInformationStreetFirstPermanent, contactInformationStreetSecondLocal: me.contactInformationStreetSecondLocal, contactInformationStreetSecondPermanent: me.contactInformationStreetSecondPermanent)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension FamilyData {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(FamilyData.self, from: data)
        self.init(familyDataMembers: me.familyDataMembers)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension FamilyDataMember {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(FamilyDataMember.self, from: data)
        self.init(familyDataDateOfBirth: me.familyDataDateOfBirth, familyDataDateOfExpiry: me.familyDataDateOfExpiry, familyDataFirstName: me.familyDataFirstName, familyDataLastName: me.familyDataLastName, familyDataPassportNumber: me.familyDataPassportNumber, familyDataPlaceOfIssue: me.familyDataPlaceOfIssue)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension NextOfKin {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(NextOfKin.self, from: data)
        self.init(nextOfKinCity: me.nextOfKinCity, nextOfKinCountry: me.nextOfKinCountry, nextOfKinDateOfBirth: me.nextOfKinDateOfBirth, nextOfKinName: me.nextOfKinName, nextOfKinNameAlternate: me.nextOfKinNameAlternate, nextOfKinPhoneHome: me.nextOfKinPhoneHome, nextOfKinPhoneMobile: me.nextOfKinPhoneMobile, nextOfKinPostcode: me.nextOfKinPostcode, nextOfKinRelationship: me.nextOfKinRelationship, nextOfKinRelationshipAlternate: me.nextOfKinRelationshipAlternate, nextOfKinState: me.nextOfKinState, nextOfKinStreetFirst: me.nextOfKinStreetFirst, nextOfKinStreetSecond: me.nextOfKinStreetSecond)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension PassportVisa {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(PassportVisa.self, from: data)
        self.init(passportAustralianMaritimeCrewVisa: me.passportAustralianMaritimeCrewVisa, passportCountry: me.passportCountry, passportDateOfExpiry: me.passportDateOfExpiry, passportDateOfIssue: me.passportDateOfIssue, passportEcnr: me.passportEcnr, passportNumber: me.passportNumber, passportPlaceOfIssue: me.passportPlaceOfIssue, passportUSVisaCD: me.passportUSVisaCD, passportUSVisaCDDateOfExpiry: me.passportUSVisaCDDateOfExpiry)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension PersonalInformation {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(PersonalInformation.self, from: data)
        self.init(personalDetailsBloodGroup: me.personalDetailsBloodGroup, personalDetailsBoilerSuitSize: me.personalDetailsBoilerSuitSize, personalDetailsDateOfBirth: me.personalDetailsDateOfBirth, personalDetailsFirstName: me.personalDetailsFirstName, personalDetailsHeight: me.personalDetailsHeight, personalDetailsLastName: me.personalDetailsLastName, personalDetailsMiddleName: me.personalDetailsMiddleName, personalDetailsNationality: me.personalDetailsNationality, personalDetailsPlaceOfBirth: me.personalDetailsPlaceOfBirth, personalDetailsShoeSize: me.personalDetailsShoeSize, personalDetailsSmoker: me.personalDetailsSmoker, personalDetailsUnionMembership: me.personalDetailsUnionMembership, personalDetailsVegetarian: me.personalDetailsVegetarian, personalDetailsWeight: me.personalDetailsWeight, personalDetailsYellowFeverVaccinationBATCHLOTNumber: me.personalDetailsYellowFeverVaccinationBATCHLOTNumber, personalDetailsYellowFeverVaccinationDateOfExpiry: me.personalDetailsYellowFeverVaccinationDateOfExpiry, personalDetailsYellowFeverVaccinationDateOfIssue: me.personalDetailsYellowFeverVaccinationDateOfIssue)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension QuickVersion {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(QuickVersion.self, from: data)
        self.init(quickApplicationNearestOffice: me.quickApplicationNearestOffice, quickApplicationRemarks: me.quickApplicationRemarks, quickApplicationYearsOfExperience: me.quickApplicationYearsOfExperience)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension SeaServiceExperience {
    convenience init(data: Data) throws {
        let me = try JSONDecoder().decode(SeaServiceExperience.self, from: data)
        self.init(seaServiceExperienceBrakeHorsepower: me.seaServiceExperienceBrakeHorsepower, seaServiceExperienceEngineType: me.seaServiceExperienceEngineType, seaServiceExperienceVesselSize: me.seaServiceExperienceVesselSize, seaServiceExperienceVesselType: me.seaServiceExperienceVesselType)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
