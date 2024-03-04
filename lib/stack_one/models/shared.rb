# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module StackOne
  module Shared
    autoload :Credentials, 'stack_one/models/shared/credentials.rb'
    autoload :SetupInformation, 'stack_one/models/shared/setup_information.rb'
    autoload :LinkedAccount, 'stack_one/models/shared/linkedaccount.rb'
    autoload :LinkedAccountMetaCategory, 'stack_one/models/shared/linkedaccountmeta_category.rb'
    autoload :LinkedAccountMeta, 'stack_one/models/shared/linkedaccountmeta.rb'
    autoload :PatchAccountDto, 'stack_one/models/shared/patchaccountdto.rb'
    autoload :Categories, 'stack_one/models/shared/categories.rb'
    autoload :ConnectSession, 'stack_one/models/shared/connectsession.rb'
    autoload :ConnectSessionAuthenticate, 'stack_one/models/shared/connectsessionauthenticate.rb'
    autoload :ConnectSessionTokenCategories, 'stack_one/models/shared/connectsessiontoken_categories.rb'
    autoload :ConnectSessionToken, 'stack_one/models/shared/connectsessiontoken.rb'
    autoload :ConnectSessionCreateCategories, 'stack_one/models/shared/connectsessioncreate_categories.rb'
    autoload :Metadata, 'stack_one/models/shared/metadata.rb'
    autoload :ConnectSessionCreate, 'stack_one/models/shared/connectsessioncreate.rb'
    autoload :Category, 'stack_one/models/shared/category.rb'
    autoload :Images, 'stack_one/models/shared/images.rb'
    autoload :Resources, 'stack_one/models/shared/resources.rb'
    autoload :ConnectorsMeta, 'stack_one/models/shared/connectorsmeta.rb'
    autoload :CreateResult, 'stack_one/models/shared/createresult.rb'
    autoload :AtsCreateApplicationRequestDtoValue, 'stack_one/models/shared/atscreateapplicationrequestdto_value.rb'
    autoload :AtsCreateApplicationRequestDtoApplicationStatus, 'stack_one/models/shared/atscreateapplicationrequestdto_application_status.rb'
    autoload :AtsCreateApplicationRequestDtoCandidate, 'stack_one/models/shared/atscreateapplicationrequestdto_candidate.rb'
    autoload :AtsCreateApplicationRequestDto, 'stack_one/models/shared/atscreateapplicationrequestdto.rb'
    autoload :Questionnaire, 'stack_one/models/shared/questionnaire.rb'
    autoload :AnswerValue, 'stack_one/models/shared/answer_value.rb'
    autoload :Type, 'stack_one/models/shared/type.rb'
    autoload :Answer, 'stack_one/models/shared/answer.rb'
    autoload :ApplicationAttachmentValue, 'stack_one/models/shared/applicationattachment_value.rb'
    autoload :ContentType, 'stack_one/models/shared/content_type.rb'
    autoload :ApplicationAttachment, 'stack_one/models/shared/applicationattachment.rb'
    autoload :CandidateResult, 'stack_one/models/shared/candidateresult.rb'
    autoload :RawResponse, 'stack_one/models/shared/rawresponse.rb'
    autoload :Candidate, 'stack_one/models/shared/candidate.rb'
    autoload :SocialLink, 'stack_one/models/shared/sociallink.rb'
    autoload :PhoneNumberType, 'stack_one/models/shared/phonenumber_type.rb'
    autoload :PhoneNumber, 'stack_one/models/shared/phonenumber.rb'
    autoload :CandidateEmail, 'stack_one/models/shared/candidateemail.rb'
    autoload :AtsCreateCandidateRequestDto, 'stack_one/models/shared/atscreatecandidaterequestdto.rb'
    autoload :CreateCandidateNoteResult, 'stack_one/models/shared/createcandidatenoteresult.rb'
    autoload :AtsCreateNotesRequestDtoValue, 'stack_one/models/shared/atscreatenotesrequestdto_value.rb'
    autoload :Visibility, 'stack_one/models/shared/visibility.rb'
    autoload :AtsCreateNotesRequestDto, 'stack_one/models/shared/atscreatenotesrequestdto.rb'
    autoload :NoteContentApiModel, 'stack_one/models/shared/notecontentapimodel.rb'
    autoload :CreateOfferResult, 'stack_one/models/shared/createofferresult.rb'
    autoload :AtsCreateOfferRequestDtoValue, 'stack_one/models/shared/atscreateofferrequestdto_value.rb'
    autoload :OfferStatus, 'stack_one/models/shared/offer_status.rb'
    autoload :AtsCreateOfferRequestDto, 'stack_one/models/shared/atscreateofferrequestdto.rb'
    autoload :OfferHistory, 'stack_one/models/shared/offerhistory.rb'
    autoload :ApplicationResult, 'stack_one/models/shared/applicationresult.rb'
    autoload :ApplicationValue, 'stack_one/models/shared/application_value.rb'
    autoload :ApplicationStatus, 'stack_one/models/shared/application_status.rb'
    autoload :ApplicationCandidate, 'stack_one/models/shared/application_candidate.rb'
    autoload :ApplicationInterviewStage, 'stack_one/models/shared/application_interview_stage.rb'
    autoload :Application, 'stack_one/models/shared/application.rb'
    autoload :ResultLink, 'stack_one/models/shared/resultlink.rb'
    autoload :RejectedReasonValue, 'stack_one/models/shared/rejectedreason_value.rb'
    autoload :RejectedReasonType, 'stack_one/models/shared/rejected_reason_type.rb'
    autoload :RejectedReason, 'stack_one/models/shared/rejectedreason.rb'
    autoload :DocumentApiModelValue, 'stack_one/models/shared/documentapimodel_value.rb'
    autoload :DocumentApiModelType, 'stack_one/models/shared/documentapimodel_type.rb'
    autoload :DocumentApiModel, 'stack_one/models/shared/documentapimodel.rb'
    autoload :Content, 'stack_one/models/shared/content.rb'
    autoload :FileFormatEnumValue, 'stack_one/models/shared/fileformatenum_value.rb'
    autoload :FileFormatEnum, 'stack_one/models/shared/fileformatenum.rb'
    autoload :DocumentResult, 'stack_one/models/shared/documentresult.rb'
    autoload :OffersResult, 'stack_one/models/shared/offersresult.rb'
    autoload :OfferValue, 'stack_one/models/shared/offer_value.rb'
    autoload :OfferOfferStatus, 'stack_one/models/shared/offer_offer_status.rb'
    autoload :Offer, 'stack_one/models/shared/offer.rb'
    autoload :NoteResult, 'stack_one/models/shared/noteresult.rb'
    autoload :NoteValue, 'stack_one/models/shared/note_value.rb'
    autoload :NoteVisibility, 'stack_one/models/shared/note_visibility.rb'
    autoload :Note, 'stack_one/models/shared/note.rb'
    autoload :DepartmentResult, 'stack_one/models/shared/departmentresult.rb'
    autoload :Department, 'stack_one/models/shared/department.rb'
    autoload :InterviewsResult, 'stack_one/models/shared/interviewsresult.rb'
    autoload :InterviewInterviewStage, 'stack_one/models/shared/interview_interview_stage.rb'
    autoload :InterviewValue, 'stack_one/models/shared/interview_value.rb'
    autoload :InterviewStatus, 'stack_one/models/shared/interview_status.rb'
    autoload :Interview, 'stack_one/models/shared/interview.rb'
    autoload :Interviewer, 'stack_one/models/shared/interviewer.rb'
    autoload :InterviewPart, 'stack_one/models/shared/interviewpart.rb'
    autoload :InterviewStageResult, 'stack_one/models/shared/interviewstageresult.rb'
    autoload :InterviewStage, 'stack_one/models/shared/interviewstage.rb'
    autoload :JobResult, 'stack_one/models/shared/jobresult.rb'
    autoload :Confidential, 'stack_one/models/shared/confidential.rb'
    autoload :JobValue, 'stack_one/models/shared/job_value.rb'
    autoload :JobStatus, 'stack_one/models/shared/job_status.rb'
    autoload :JobSchemasStatus, 'stack_one/models/shared/job_schemas_status.rb'
    autoload :Job, 'stack_one/models/shared/job.rb'
    autoload :JobHiringTeam, 'stack_one/models/shared/jobhiringteam.rb'
    autoload :JobPostingResult, 'stack_one/models/shared/jobpostingresult.rb'
    autoload :JobPostingContent, 'stack_one/models/shared/jobposting_content.rb'
    autoload :JobPostingValue, 'stack_one/models/shared/jobposting_value.rb'
    autoload :JobPostingEmploymentContractType, 'stack_one/models/shared/jobposting_employment_contract_type.rb'
    autoload :JobPostingSchemasValue, 'stack_one/models/shared/jobposting_schemas_value.rb'
    autoload :JobPostingEmploymentType, 'stack_one/models/shared/jobposting_employment_type.rb'
    autoload :Internal, 'stack_one/models/shared/internal.rb'
    autoload :JobPostingSchemasStatusValue, 'stack_one/models/shared/jobposting_schemas_status_value.rb'
    autoload :JobPostingStatus, 'stack_one/models/shared/jobposting_status.rb'
    autoload :JobPosting, 'stack_one/models/shared/jobposting.rb'
    autoload :JobPostingQuestionnaire, 'stack_one/models/shared/jobpostingquestionnaire.rb'
    autoload :QuestionValue, 'stack_one/models/shared/question_value.rb'
    autoload :QuestionType, 'stack_one/models/shared/question_type.rb'
    autoload :Question, 'stack_one/models/shared/question.rb'
    autoload :QuestionMultipleChoiceAnswers, 'stack_one/models/shared/questionmultiplechoiceanswers.rb'
    autoload :JobPostingLocation, 'stack_one/models/shared/jobpostinglocation.rb'
    autoload :JobPostingCompensationValue, 'stack_one/models/shared/jobpostingcompensation_value.rb'
    autoload :JobPostingCompensationPayFrequency, 'stack_one/models/shared/jobpostingcompensation_pay_frequency.rb'
    autoload :JobPostingCompensationSchemasValue, 'stack_one/models/shared/jobpostingcompensation_schemas_value.rb'
    autoload :JobPostingCompensationPayPeriod, 'stack_one/models/shared/jobpostingcompensation_pay_period.rb'
    autoload :JobPostingCompensationSchemasTypeValue, 'stack_one/models/shared/jobpostingcompensation_schemas_type_value.rb'
    autoload :JobPostingCompensationType, 'stack_one/models/shared/jobpostingcompensation_type.rb'
    autoload :JobPostingCompensation, 'stack_one/models/shared/jobpostingcompensation.rb'
    autoload :ATSLocationResult, 'stack_one/models/shared/atslocationresult.rb'
    autoload :ATSLocation, 'stack_one/models/shared/atslocation.rb'
    autoload :RejectedReasonResult, 'stack_one/models/shared/rejectedreasonresult.rb'
    autoload :UserResult, 'stack_one/models/shared/userresult.rb'
    autoload :User, 'stack_one/models/shared/user.rb'
    autoload :DocumentsPaginated, 'stack_one/models/shared/documentspaginated.rb'
    autoload :ScorecardsPaginated, 'stack_one/models/shared/scorecardspaginated.rb'
    autoload :OverallRecommendation, 'stack_one/models/shared/overall_recommendation.rb'
    autoload :Scorecard, 'stack_one/models/shared/scorecard.rb'
    autoload :ScorecardSection, 'stack_one/models/shared/scorecardsection.rb'
    autoload :FieldType, 'stack_one/models/shared/field_type.rb'
    autoload :Field, 'stack_one/models/shared/field.rb'
    autoload :ApplicationsPaginated, 'stack_one/models/shared/applicationspaginated.rb'
    autoload :OffersPaginated, 'stack_one/models/shared/offerspaginated.rb'
    autoload :NotesPaginated, 'stack_one/models/shared/notespaginated.rb'
    autoload :CandidatesPaginated, 'stack_one/models/shared/candidatespaginated.rb'
    autoload :DepartmentsPaginated, 'stack_one/models/shared/departmentspaginated.rb'
    autoload :InterviewStagesPaginated, 'stack_one/models/shared/interviewstagespaginated.rb'
    autoload :InterviewsPaginated, 'stack_one/models/shared/interviewspaginated.rb'
    autoload :JobPostingsPaginated, 'stack_one/models/shared/jobpostingspaginated.rb'
    autoload :JobsPaginated, 'stack_one/models/shared/jobspaginated.rb'
    autoload :ATSLocationsPaginated, 'stack_one/models/shared/atslocationspaginated.rb'
    autoload :RejectedReasonsPaginated, 'stack_one/models/shared/rejectedreasonspaginated.rb'
    autoload :UsersPaginated, 'stack_one/models/shared/userspaginated.rb'
    autoload :UpdateResult, 'stack_one/models/shared/updateresult.rb'
    autoload :AtsUpdateApplicationRequestDtoValue, 'stack_one/models/shared/atsupdateapplicationrequestdto_value.rb'
    autoload :AtsUpdateApplicationRequestDtoApplicationStatus, 'stack_one/models/shared/atsupdateapplicationrequestdto_application_status.rb'
    autoload :AtsUpdateApplicationRequestDtoCandidate, 'stack_one/models/shared/atsupdateapplicationrequestdto_candidate.rb'
    autoload :AtsUpdateApplicationRequestDto, 'stack_one/models/shared/atsupdateapplicationrequestdto.rb'
    autoload :AtsUpdateCandidatesRequestDto, 'stack_one/models/shared/atsupdatecandidatesrequestdto.rb'
    autoload :ContactResult, 'stack_one/models/shared/contactresult.rb'
    autoload :Contact, 'stack_one/models/shared/contact.rb'
    autoload :CrmCreateContactRequestDto, 'stack_one/models/shared/crmcreatecontactrequestdto.rb'
    autoload :AccountResult, 'stack_one/models/shared/accountresult.rb'
    autoload :Account, 'stack_one/models/shared/account.rb'
    autoload :AccountAddressSchemasValue, 'stack_one/models/shared/accountaddress_schemas_value.rb'
    autoload :Country, 'stack_one/models/shared/country.rb'
    autoload :AccountAddressValue, 'stack_one/models/shared/accountaddress_value.rb'
    autoload :LocationType, 'stack_one/models/shared/location_type.rb'
    autoload :AccountAddress, 'stack_one/models/shared/accountaddress.rb'
    autoload :ListResult, 'stack_one/models/shared/listresult.rb'
    autoload :ListValue, 'stack_one/models/shared/list_value.rb'
    autoload :ListType, 'stack_one/models/shared/list_type.rb'
    autoload :List, 'stack_one/models/shared/list.rb'
    autoload :AccountsPaginated, 'stack_one/models/shared/accountspaginated.rb'
    autoload :ContactsPaginated, 'stack_one/models/shared/contactspaginated.rb'
    autoload :ListsPaginated, 'stack_one/models/shared/listspaginated.rb'
    autoload :CreateEmployeeResult, 'stack_one/models/shared/createemployeeresult.rb'
    autoload :HrisCreateEmployeeRequestDtoAvatar, 'stack_one/models/shared/hriscreateemployeerequestdto_avatar.rb'
    autoload :HrisCreateEmployeeRequestDtoValue, 'stack_one/models/shared/hriscreateemployeerequestdto_value.rb'
    autoload :HrisCreateEmployeeRequestDtoEmploymentContractType, 'stack_one/models/shared/hriscreateemployeerequestdto_employment_contract_type.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasValue, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_value.rb'
    autoload :HrisCreateEmployeeRequestDtoEmploymentStatus, 'stack_one/models/shared/hriscreateemployeerequestdto_employment_status.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasEmploymentTypeValue, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_employment_type_value.rb'
    autoload :HrisCreateEmployeeRequestDtoEmploymentType, 'stack_one/models/shared/hriscreateemployeerequestdto_employment_type.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasEthnicityValue, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_ethnicity_value.rb'
    autoload :HrisCreateEmployeeRequestDtoEthnicity, 'stack_one/models/shared/hriscreateemployeerequestdto_ethnicity.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasGenderValue, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_gender_value.rb'
    autoload :HrisCreateEmployeeRequestDtoGender, 'stack_one/models/shared/hriscreateemployeerequestdto_gender.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasHomeLocationValue, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_home_location_value.rb'
    autoload :HrisCreateEmployeeRequestDtoCountry, 'stack_one/models/shared/hriscreateemployeerequestdto_country.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasHomeLocationStateValue, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_home_location_state_value.rb'
    autoload :State, 'stack_one/models/shared/state.rb'
    autoload :HrisCreateEmployeeRequestDtoHomeLocation, 'stack_one/models/shared/hriscreateemployeerequestdto_home_location.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasMaritalStatusValue, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_marital_status_value.rb'
    autoload :HrisCreateEmployeeRequestDtoMaritalStatus, 'stack_one/models/shared/hriscreateemployeerequestdto_marital_status.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasWorkLocationValue, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_work_location_value.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasCountry, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_country.rb'
    autoload :HrisCreateEmployeeRequestDtoSchemasWorkLocationStateValue, 'stack_one/models/shared/hriscreateemployeerequestdto_schemas_work_location_state_value.rb'
    autoload :HrisCreateEmployeeRequestDtoState, 'stack_one/models/shared/hriscreateemployeerequestdto_state.rb'
    autoload :HrisCreateEmployeeRequestDtoWorkLocation, 'stack_one/models/shared/hriscreateemployeerequestdto_work_location.rb'
    autoload :HrisCreateEmployeeRequestDto, 'stack_one/models/shared/hriscreateemployeerequestdto.rb'
    autoload :EmploymentValue, 'stack_one/models/shared/employment_value.rb'
    autoload :EmploymentEmploymentContractType, 'stack_one/models/shared/employment_employment_contract_type.rb'
    autoload :EmploymentSchemasValue, 'stack_one/models/shared/employment_schemas_value.rb'
    autoload :EmploymentEmploymentType, 'stack_one/models/shared/employment_employment_type.rb'
    autoload :EmploymentSchemasPayFrequencyValue, 'stack_one/models/shared/employment_schemas_pay_frequency_value.rb'
    autoload :PayFrequency, 'stack_one/models/shared/pay_frequency.rb'
    autoload :EmploymentSchemasPayPeriodValue, 'stack_one/models/shared/employment_schemas_pay_period_value.rb'
    autoload :PayPeriod, 'stack_one/models/shared/pay_period.rb'
    autoload :Employment, 'stack_one/models/shared/employment.rb'
    autoload :EmployeeCustomFieldsSchemasValue, 'stack_one/models/shared/employeecustomfields_schemas_value.rb'
    autoload :EmployeeCustomFieldsType, 'stack_one/models/shared/employeecustomfields_type.rb'
    autoload :EmployeeCustomFieldsValue, 'stack_one/models/shared/employeecustomfields_value.rb'
    autoload :EmployeeCustomFields, 'stack_one/models/shared/employeecustomfields.rb'
    autoload :CountryCodeEnumValue, 'stack_one/models/shared/countrycodeenum_value.rb'
    autoload :CountryCodeEnum, 'stack_one/models/shared/countrycodeenum.rb'
    autoload :HRISBenefitValue, 'stack_one/models/shared/hrisbenefit_value.rb'
    autoload :BenefitType, 'stack_one/models/shared/benefit_type.rb'
    autoload :HRISBenefit, 'stack_one/models/shared/hrisbenefit.rb'
    autoload :CreateDocumentResult, 'stack_one/models/shared/createdocumentresult.rb'
    autoload :HrisCreateDocumentRequestDtoValue, 'stack_one/models/shared/hriscreatedocumentrequestdto_value.rb'
    autoload :HrisCreateDocumentRequestDtoType, 'stack_one/models/shared/hriscreatedocumentrequestdto_type.rb'
    autoload :HrisCreateDocumentRequestDto, 'stack_one/models/shared/hriscreatedocumentrequestdto.rb'
    autoload :CreateTimeOffResult, 'stack_one/models/shared/createtimeoffresult.rb'
    autoload :HrisCreateTimeOffRequestDtoValue, 'stack_one/models/shared/hriscreatetimeoffrequestdto_value.rb'
    autoload :HrisCreateTimeOffRequestDtoStatus, 'stack_one/models/shared/hriscreatetimeoffrequestdto_status.rb'
    autoload :HrisCreateTimeOffRequestDtoSchemasValue, 'stack_one/models/shared/hriscreatetimeoffrequestdto_schemas_value.rb'
    autoload :HrisCreateTimeOffRequestDtoType, 'stack_one/models/shared/hriscreatetimeoffrequestdto_type.rb'
    autoload :HrisCreateTimeOffRequestDto, 'stack_one/models/shared/hriscreatetimeoffrequestdto.rb'
    autoload :CreateWorkEligibilityResult, 'stack_one/models/shared/createworkeligibilityresult.rb'
    autoload :Document, 'stack_one/models/shared/document.rb'
    autoload :HrisCreateWorkEligibilityRequestDtoValue, 'stack_one/models/shared/hriscreateworkeligibilityrequestdto_value.rb'
    autoload :IssuedBy, 'stack_one/models/shared/issued_by.rb'
    autoload :HrisCreateWorkEligibilityRequestDtoSchemasValue, 'stack_one/models/shared/hriscreateworkeligibilityrequestdto_schemas_value.rb'
    autoload :HrisCreateWorkEligibilityRequestDtoType, 'stack_one/models/shared/hriscreateworkeligibilityrequestdto_type.rb'
    autoload :HrisCreateWorkEligibilityRequestDto, 'stack_one/models/shared/hriscreateworkeligibilityrequestdto.rb'
    autoload :HRISBenefitResult, 'stack_one/models/shared/hrisbenefitresult.rb'
    autoload :CompanyResult, 'stack_one/models/shared/companyresult.rb'
    autoload :Company, 'stack_one/models/shared/company.rb'
    autoload :EmployeeResult, 'stack_one/models/shared/employeeresult.rb'
    autoload :Avatar, 'stack_one/models/shared/avatar.rb'
    autoload :EmployeeCompany, 'stack_one/models/shared/employee_company.rb'
    autoload :EmployeeValue, 'stack_one/models/shared/employee_value.rb'
    autoload :EmploymentContractType, 'stack_one/models/shared/employment_contract_type.rb'
    autoload :EmployeeSchemasValue, 'stack_one/models/shared/employee_schemas_value.rb'
    autoload :EmploymentStatus, 'stack_one/models/shared/employment_status.rb'
    autoload :EmployeeSchemasEmploymentTypeValue, 'stack_one/models/shared/employee_schemas_employment_type_value.rb'
    autoload :EmploymentType, 'stack_one/models/shared/employment_type.rb'
    autoload :EmployeeSchemasEthnicityValue, 'stack_one/models/shared/employee_schemas_ethnicity_value.rb'
    autoload :Ethnicity, 'stack_one/models/shared/ethnicity.rb'
    autoload :EmployeeSchemasGenderValue, 'stack_one/models/shared/employee_schemas_gender_value.rb'
    autoload :Gender, 'stack_one/models/shared/gender.rb'
    autoload :EmployeeSchemasHomeLocationValue, 'stack_one/models/shared/employee_schemas_home_location_value.rb'
    autoload :EmployeeCountry, 'stack_one/models/shared/employee_country.rb'
    autoload :EmployeeSchemasHomeLocationLocationTypeValue, 'stack_one/models/shared/employee_schemas_home_location_location_type_value.rb'
    autoload :EmployeeLocationType, 'stack_one/models/shared/employee_location_type.rb'
    autoload :HomeLocation, 'stack_one/models/shared/home_location.rb'
    autoload :JobDescription, 'stack_one/models/shared/job_description.rb'
    autoload :EmployeeSchemasMaritalStatusValue, 'stack_one/models/shared/employee_schemas_marital_status_value.rb'
    autoload :MaritalStatus, 'stack_one/models/shared/marital_status.rb'
    autoload :EmployeeSchemasWorkLocationValue, 'stack_one/models/shared/employee_schemas_work_location_value.rb'
    autoload :EmployeeSchemasCountry, 'stack_one/models/shared/employee_schemas_country.rb'
    autoload :EmployeeSchemasWorkLocationLocationTypeValue, 'stack_one/models/shared/employee_schemas_work_location_location_type_value.rb'
    autoload :EmployeeSchemasLocationType, 'stack_one/models/shared/employee_schemas_location_type.rb'
    autoload :WorkLocation, 'stack_one/models/shared/work_location.rb'
    autoload :Employee, 'stack_one/models/shared/employee.rb'
    autoload :CostCenters, 'stack_one/models/shared/costcenters.rb'
    autoload :TimeOffResult, 'stack_one/models/shared/timeoffresult.rb'
    autoload :TimeOffValue, 'stack_one/models/shared/timeoff_value.rb'
    autoload :TimeOffStatus, 'stack_one/models/shared/timeoff_status.rb'
    autoload :TimeOffSchemasValue, 'stack_one/models/shared/timeoff_schemas_value.rb'
    autoload :TimeOffType, 'stack_one/models/shared/timeoff_type.rb'
    autoload :TimeOff, 'stack_one/models/shared/timeoff.rb'
    autoload :WorkEligibilityResult, 'stack_one/models/shared/workeligibilityresult.rb'
    autoload :WorkEligibilityDocument, 'stack_one/models/shared/workeligibility_document.rb'
    autoload :WorkEligibilityValue, 'stack_one/models/shared/workeligibility_value.rb'
    autoload :WorkEligibilityIssuedBy, 'stack_one/models/shared/workeligibility_issued_by.rb'
    autoload :WorkEligibilitySchemasValue, 'stack_one/models/shared/workeligibility_schemas_value.rb'
    autoload :WorkEligibilityType, 'stack_one/models/shared/workeligibility_type.rb'
    autoload :WorkEligibility, 'stack_one/models/shared/workeligibility.rb'
    autoload :EmploymentResult, 'stack_one/models/shared/employmentresult.rb'
    autoload :HRISLocationResult, 'stack_one/models/shared/hrislocationresult.rb'
    autoload :HRISLocationValue, 'stack_one/models/shared/hrislocation_value.rb'
    autoload :HRISLocationCountry, 'stack_one/models/shared/hrislocation_country.rb'
    autoload :HRISLocationSchemasValue, 'stack_one/models/shared/hrislocation_schemas_value.rb'
    autoload :HRISLocationLocationType, 'stack_one/models/shared/hrislocation_location_type.rb'
    autoload :HRISLocation, 'stack_one/models/shared/hrislocation.rb'
    autoload :HRISBenefitsPaginated, 'stack_one/models/shared/hrisbenefitspaginated.rb'
    autoload :CompaniesPaginated, 'stack_one/models/shared/companiespaginated.rb'
    autoload :TimeOffPaginated, 'stack_one/models/shared/timeoffpaginated.rb'
    autoload :WorkEligibilityPaginated, 'stack_one/models/shared/workeligibilitypaginated.rb'
    autoload :EmployeesPaginated, 'stack_one/models/shared/employeespaginated.rb'
    autoload :EmploymentsPaginated, 'stack_one/models/shared/employmentspaginated.rb'
    autoload :HRISLocationsPaginated, 'stack_one/models/shared/hrislocationspaginated.rb'
    autoload :CreateTemplateResult, 'stack_one/models/shared/createtemplateresult.rb'
    autoload :MarketingCreateEmailTemplateRequestDto, 'stack_one/models/shared/marketingcreateemailtemplaterequestdto.rb'
    autoload :MessageContent, 'stack_one/models/shared/message_content.rb'
    autoload :EmailMessagesValue, 'stack_one/models/shared/emailmessages_value.rb'
    autoload :MessageType, 'stack_one/models/shared/message_type.rb'
    autoload :EmailMessages, 'stack_one/models/shared/emailmessages.rb'
    autoload :MarketingCreateTemplateRequestDto, 'stack_one/models/shared/marketingcreatetemplaterequestdto.rb'
    autoload :MessageValue, 'stack_one/models/shared/message_value.rb'
    autoload :MessageMessageType, 'stack_one/models/shared/message_message_type.rb'
    autoload :Message, 'stack_one/models/shared/message.rb'
    autoload :MarketingCreatePushTemplateRequestDto, 'stack_one/models/shared/marketingcreatepushtemplaterequestdto.rb'
    autoload :PushMessagesMessageContent, 'stack_one/models/shared/pushmessages_message_content.rb'
    autoload :PushMessagesValue, 'stack_one/models/shared/pushmessages_value.rb'
    autoload :PushMessagesMessageType, 'stack_one/models/shared/pushmessages_message_type.rb'
    autoload :PushMessages, 'stack_one/models/shared/pushmessages.rb'
    autoload :CampaignResult, 'stack_one/models/shared/campaignresult.rb'
    autoload :CampaignValue, 'stack_one/models/shared/campaign_value.rb'
    autoload :ScheduleType, 'stack_one/models/shared/schedule_type.rb'
    autoload :CampaignSchemasValue, 'stack_one/models/shared/campaign_schemas_value.rb'
    autoload :Status, 'stack_one/models/shared/status.rb'
    autoload :Campaign, 'stack_one/models/shared/campaign.rb'
    autoload :Value, 'stack_one/models/shared/value.rb'
    autoload :ChannelsEnum, 'stack_one/models/shared/channelsenum.rb'
    autoload :TemplateResult, 'stack_one/models/shared/templateresult.rb'
    autoload :Template, 'stack_one/models/shared/template.rb'
    autoload :CampaignsPaginated, 'stack_one/models/shared/campaignspaginated.rb'
    autoload :TemplatesPaginated, 'stack_one/models/shared/templatespaginated.rb'
    autoload :Body, 'stack_one/models/shared/body.rb'
    autoload :Headers, 'stack_one/models/shared/headers.rb'
    autoload :Method, 'stack_one/models/shared/method.rb'
    autoload :ProxyRequestBody, 'stack_one/models/shared/proxyrequestbody.rb'
    autoload :Security, 'stack_one/models/shared/security.rb'
  end
end
