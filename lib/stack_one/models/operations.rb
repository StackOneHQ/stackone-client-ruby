# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module StackOne
  module Operations
    autoload :StackoneDeleteAccountRequest, 'stack_one/models/operations/stackone_delete_account_request.rb'
    autoload :StackoneDeleteAccountResponse, 'stack_one/models/operations/stackone_delete_account_response.rb'
    autoload :StackoneGetAccountRequest, 'stack_one/models/operations/stackone_get_account_request.rb'
    autoload :StackoneGetAccountResponse, 'stack_one/models/operations/stackone_get_account_response.rb'
    autoload :StackoneGetAccountMetaInfoRequest, 'stack_one/models/operations/stackone_get_account_meta_info_request.rb'
    autoload :StackoneGetAccountMetaInfoResponse, 'stack_one/models/operations/stackone_get_account_meta_info_response.rb'
    autoload :StackoneListLinkedAccountsRequest, 'stack_one/models/operations/stackone_list_linked_accounts_request.rb'
    autoload :StackoneListLinkedAccountsResponse, 'stack_one/models/operations/stackone_list_linked_accounts_response.rb'
    autoload :StackoneUpdateAccountRequest, 'stack_one/models/operations/stackone_update_account_request.rb'
    autoload :StackoneUpdateAccountResponse, 'stack_one/models/operations/stackone_update_account_response.rb'
    autoload :StackoneAuthenticateConnectSessionResponse, 'stack_one/models/operations/stackone_authenticate_connect_session_response.rb'
    autoload :StackoneCreateConnectSessionResponse, 'stack_one/models/operations/stackone_create_connect_session_response.rb'
    autoload :StackoneGetConnectorMetaRequest, 'stack_one/models/operations/stackone_get_connector_meta_request.rb'
    autoload :StackoneGetConnectorMetaResponse, 'stack_one/models/operations/stackone_get_connector_meta_response.rb'
    autoload :StackoneListConnectorsMetaRequest, 'stack_one/models/operations/stackone_list_connectors_meta_request.rb'
    autoload :StackoneListConnectorsMetaResponse, 'stack_one/models/operations/stackone_list_connectors_meta_response.rb'
    autoload :AtsCreateApplicationRequest, 'stack_one/models/operations/ats_create_application_request.rb'
    autoload :AtsCreateApplicationResponse, 'stack_one/models/operations/ats_create_application_response.rb'
    autoload :AtsCreateCandidateRequest, 'stack_one/models/operations/ats_create_candidate_request.rb'
    autoload :AtsCreateCandidateResponse, 'stack_one/models/operations/ats_create_candidate_response.rb'
    autoload :AtsCreateCandidateNoteRequest, 'stack_one/models/operations/ats_create_candidate_note_request.rb'
    autoload :AtsCreateCandidateNoteResponse, 'stack_one/models/operations/ats_create_candidate_note_response.rb'
    autoload :AtsCreateOfferRequest, 'stack_one/models/operations/ats_create_offer_request.rb'
    autoload :AtsCreateOfferResponse, 'stack_one/models/operations/ats_create_offer_response.rb'
    autoload :AtsDownloadApplicationDocumentRequest, 'stack_one/models/operations/ats_download_application_document_request.rb'
    autoload :AtsDownloadApplicationDocumentResponse, 'stack_one/models/operations/ats_download_application_document_response.rb'
    autoload :AtsGetApplicationRequest, 'stack_one/models/operations/ats_get_application_request.rb'
    autoload :AtsGetApplicationResponse, 'stack_one/models/operations/ats_get_application_response.rb'
    autoload :AtsGetApplicationDocumentRequest, 'stack_one/models/operations/ats_get_application_document_request.rb'
    autoload :AtsGetApplicationDocumentResponse, 'stack_one/models/operations/ats_get_application_document_response.rb'
    autoload :AtsGetApplicationOfferRequest, 'stack_one/models/operations/ats_get_application_offer_request.rb'
    autoload :AtsGetApplicationOfferResponse, 'stack_one/models/operations/ats_get_application_offer_response.rb'
    autoload :AtsGetApplicationScheduledInterviewRequest, 'stack_one/models/operations/ats_get_application_scheduled_interview_request.rb'
    autoload :AtsGetApplicationScheduledInterviewResponse, 'stack_one/models/operations/ats_get_application_scheduled_interview_response.rb'
    autoload :AtsGetApplicationScorecardRequest, 'stack_one/models/operations/ats_get_application_scorecard_request.rb'
    autoload :AtsGetApplicationScorecardResponse, 'stack_one/models/operations/ats_get_application_scorecard_response.rb'
    autoload :AtsGetAssessmentsPackageRequest, 'stack_one/models/operations/ats_get_assessments_package_request.rb'
    autoload :AtsGetAssessmentsPackageResponse, 'stack_one/models/operations/ats_get_assessments_package_response.rb'
    autoload :AtsGetAssessmentsRequestRequest, 'stack_one/models/operations/ats_get_assessments_request_request.rb'
    autoload :AtsGetAssessmentsRequestResponse, 'stack_one/models/operations/ats_get_assessments_request_response.rb'
    autoload :AtsGetAssessmentsResultRequest, 'stack_one/models/operations/ats_get_assessments_result_request.rb'
    autoload :AtsGetAssessmentsResultResponse, 'stack_one/models/operations/ats_get_assessments_result_response.rb'
    autoload :AtsGetCandidateRequest, 'stack_one/models/operations/ats_get_candidate_request.rb'
    autoload :AtsGetCandidateResponse, 'stack_one/models/operations/ats_get_candidate_response.rb'
    autoload :AtsGetCandidateNoteRequest, 'stack_one/models/operations/ats_get_candidate_note_request.rb'
    autoload :AtsGetCandidateNoteResponse, 'stack_one/models/operations/ats_get_candidate_note_response.rb'
    autoload :AtsGetDepartmentRequest, 'stack_one/models/operations/ats_get_department_request.rb'
    autoload :AtsGetDepartmentResponse, 'stack_one/models/operations/ats_get_department_response.rb'
    autoload :AtsGetInterviewRequest, 'stack_one/models/operations/ats_get_interview_request.rb'
    autoload :AtsGetInterviewResponse, 'stack_one/models/operations/ats_get_interview_response.rb'
    autoload :AtsGetInterviewStageRequest, 'stack_one/models/operations/ats_get_interview_stage_request.rb'
    autoload :AtsGetInterviewStageResponse, 'stack_one/models/operations/ats_get_interview_stage_response.rb'
    autoload :AtsGetJobRequest, 'stack_one/models/operations/ats_get_job_request.rb'
    autoload :AtsGetJobResponse, 'stack_one/models/operations/ats_get_job_response.rb'
    autoload :AtsGetJobPostingRequest, 'stack_one/models/operations/ats_get_job_posting_request.rb'
    autoload :AtsGetJobPostingResponse, 'stack_one/models/operations/ats_get_job_posting_response.rb'
    autoload :AtsGetListRequest, 'stack_one/models/operations/ats_get_list_request.rb'
    autoload :AtsGetListResponse, 'stack_one/models/operations/ats_get_list_response.rb'
    autoload :AtsGetLocationRequest, 'stack_one/models/operations/ats_get_location_request.rb'
    autoload :AtsGetLocationResponse, 'stack_one/models/operations/ats_get_location_response.rb'
    autoload :AtsGetOfferRequest, 'stack_one/models/operations/ats_get_offer_request.rb'
    autoload :AtsGetOfferResponse, 'stack_one/models/operations/ats_get_offer_response.rb'
    autoload :AtsGetRejectedReasonRequest, 'stack_one/models/operations/ats_get_rejected_reason_request.rb'
    autoload :AtsGetRejectedReasonResponse, 'stack_one/models/operations/ats_get_rejected_reason_response.rb'
    autoload :AtsGetUserRequest, 'stack_one/models/operations/ats_get_user_request.rb'
    autoload :AtsGetUserResponse, 'stack_one/models/operations/ats_get_user_response.rb'
    autoload :Filter, 'stack_one/models/operations/filter.rb'
    autoload :AtsListApplicationCustomFieldDefinitionsRequest, 'stack_one/models/operations/ats_list_application_custom_field_definitions_request.rb'
    autoload :AtsListApplicationCustomFieldDefinitionsResponse, 'stack_one/models/operations/ats_list_application_custom_field_definitions_response.rb'
    autoload :QueryParamFilter, 'stack_one/models/operations/queryparam_filter.rb'
    autoload :AtsListApplicationDocumentsRequest, 'stack_one/models/operations/ats_list_application_documents_request.rb'
    autoload :AtsListApplicationDocumentsResponse, 'stack_one/models/operations/ats_list_application_documents_response.rb'
    autoload :AtsListApplicationScorecardsQueryParamFilter, 'stack_one/models/operations/ats_list_application_scorecards_queryparam_filter.rb'
    autoload :AtsListApplicationScorecardsRequest, 'stack_one/models/operations/ats_list_application_scorecards_request.rb'
    autoload :AtsListApplicationScorecardsResponse, 'stack_one/models/operations/ats_list_application_scorecards_response.rb'
    autoload :AtsListApplicationsQueryParamFilter, 'stack_one/models/operations/ats_list_applications_queryparam_filter.rb'
    autoload :AtsListApplicationsRequest, 'stack_one/models/operations/ats_list_applications_request.rb'
    autoload :AtsListApplicationsResponse, 'stack_one/models/operations/ats_list_applications_response.rb'
    autoload :AtsListApplicationsOffersQueryParamFilter, 'stack_one/models/operations/ats_list_applications_offers_queryparam_filter.rb'
    autoload :AtsListApplicationsOffersRequest, 'stack_one/models/operations/ats_list_applications_offers_request.rb'
    autoload :AtsListApplicationsOffersResponse, 'stack_one/models/operations/ats_list_applications_offers_response.rb'
    autoload :AtsListApplicationsScheduledInterviewsQueryParamFilter, 'stack_one/models/operations/ats_list_applications_scheduled_interviews_queryparam_filter.rb'
    autoload :AtsListApplicationsScheduledInterviewsRequest, 'stack_one/models/operations/ats_list_applications_scheduled_interviews_request.rb'
    autoload :AtsListApplicationsScheduledInterviewsResponse, 'stack_one/models/operations/ats_list_applications_scheduled_interviews_response.rb'
    autoload :AtsListAssessmentsPackagesQueryParamFilter, 'stack_one/models/operations/ats_list_assessments_packages_queryparam_filter.rb'
    autoload :AtsListAssessmentsPackagesRequest, 'stack_one/models/operations/ats_list_assessments_packages_request.rb'
    autoload :AtsListAssessmentsPackagesResponse, 'stack_one/models/operations/ats_list_assessments_packages_response.rb'
    autoload :AtsListCandidateCustomFieldDefinitionsQueryParamFilter, 'stack_one/models/operations/ats_list_candidate_custom_field_definitions_queryparam_filter.rb'
    autoload :AtsListCandidateCustomFieldDefinitionsRequest, 'stack_one/models/operations/ats_list_candidate_custom_field_definitions_request.rb'
    autoload :AtsListCandidateCustomFieldDefinitionsResponse, 'stack_one/models/operations/ats_list_candidate_custom_field_definitions_response.rb'
    autoload :AtsListCandidateNotesQueryParamFilter, 'stack_one/models/operations/ats_list_candidate_notes_queryparam_filter.rb'
    autoload :AtsListCandidateNotesRequest, 'stack_one/models/operations/ats_list_candidate_notes_request.rb'
    autoload :AtsListCandidateNotesResponse, 'stack_one/models/operations/ats_list_candidate_notes_response.rb'
    autoload :AtsListCandidatesQueryParamFilter, 'stack_one/models/operations/ats_list_candidates_queryparam_filter.rb'
    autoload :AtsListCandidatesRequest, 'stack_one/models/operations/ats_list_candidates_request.rb'
    autoload :AtsListCandidatesResponse, 'stack_one/models/operations/ats_list_candidates_response.rb'
    autoload :AtsListDepartmentsQueryParamFilter, 'stack_one/models/operations/ats_list_departments_queryparam_filter.rb'
    autoload :AtsListDepartmentsRequest, 'stack_one/models/operations/ats_list_departments_request.rb'
    autoload :AtsListDepartmentsResponse, 'stack_one/models/operations/ats_list_departments_response.rb'
    autoload :AtsListInterviewStagesQueryParamFilter, 'stack_one/models/operations/ats_list_interview_stages_queryparam_filter.rb'
    autoload :AtsListInterviewStagesRequest, 'stack_one/models/operations/ats_list_interview_stages_request.rb'
    autoload :AtsListInterviewStagesResponse, 'stack_one/models/operations/ats_list_interview_stages_response.rb'
    autoload :AtsListInterviewsQueryParamFilter, 'stack_one/models/operations/ats_list_interviews_queryparam_filter.rb'
    autoload :AtsListInterviewsRequest, 'stack_one/models/operations/ats_list_interviews_request.rb'
    autoload :AtsListInterviewsResponse, 'stack_one/models/operations/ats_list_interviews_response.rb'
    autoload :AtsListJobPostingsQueryParamFilter, 'stack_one/models/operations/ats_list_job_postings_queryparam_filter.rb'
    autoload :AtsListJobPostingsRequest, 'stack_one/models/operations/ats_list_job_postings_request.rb'
    autoload :AtsListJobPostingsResponse, 'stack_one/models/operations/ats_list_job_postings_response.rb'
    autoload :AtsListJobsQueryParamFilter, 'stack_one/models/operations/ats_list_jobs_queryparam_filter.rb'
    autoload :AtsListJobsRequest, 'stack_one/models/operations/ats_list_jobs_request.rb'
    autoload :AtsListJobsResponse, 'stack_one/models/operations/ats_list_jobs_response.rb'
    autoload :AtsListListsQueryParamFilter, 'stack_one/models/operations/ats_list_lists_queryparam_filter.rb'
    autoload :AtsListListsRequest, 'stack_one/models/operations/ats_list_lists_request.rb'
    autoload :AtsListListsResponse, 'stack_one/models/operations/ats_list_lists_response.rb'
    autoload :AtsListLocationsQueryParamFilter, 'stack_one/models/operations/ats_list_locations_queryparam_filter.rb'
    autoload :AtsListLocationsRequest, 'stack_one/models/operations/ats_list_locations_request.rb'
    autoload :AtsListLocationsResponse, 'stack_one/models/operations/ats_list_locations_response.rb'
    autoload :AtsListOffersQueryParamFilter, 'stack_one/models/operations/ats_list_offers_queryparam_filter.rb'
    autoload :AtsListOffersRequest, 'stack_one/models/operations/ats_list_offers_request.rb'
    autoload :AtsListOffersResponse, 'stack_one/models/operations/ats_list_offers_response.rb'
    autoload :AtsListRejectedReasonsQueryParamFilter, 'stack_one/models/operations/ats_list_rejected_reasons_queryparam_filter.rb'
    autoload :AtsListRejectedReasonsRequest, 'stack_one/models/operations/ats_list_rejected_reasons_request.rb'
    autoload :AtsListRejectedReasonsResponse, 'stack_one/models/operations/ats_list_rejected_reasons_response.rb'
    autoload :AtsListUsersQueryParamFilter, 'stack_one/models/operations/ats_list_users_queryparam_filter.rb'
    autoload :AtsListUsersRequest, 'stack_one/models/operations/ats_list_users_request.rb'
    autoload :AtsListUsersResponse, 'stack_one/models/operations/ats_list_users_response.rb'
    autoload :AtsUpdateApplicationRequest, 'stack_one/models/operations/ats_update_application_request.rb'
    autoload :AtsUpdateApplicationResponse, 'stack_one/models/operations/ats_update_application_response.rb'
    autoload :AtsUpdateCandidateRequest, 'stack_one/models/operations/ats_update_candidate_request.rb'
    autoload :AtsUpdateCandidateResponse, 'stack_one/models/operations/ats_update_candidate_response.rb'
    autoload :AtsUploadApplicationDocumentRequest, 'stack_one/models/operations/ats_upload_application_document_request.rb'
    autoload :AtsUploadApplicationDocumentResponse, 'stack_one/models/operations/ats_upload_application_document_response.rb'
    autoload :CrmCreateContactRequest, 'stack_one/models/operations/crm_create_contact_request.rb'
    autoload :CrmCreateContactResponse, 'stack_one/models/operations/crm_create_contact_response.rb'
    autoload :CrmGetAccountRequest, 'stack_one/models/operations/crm_get_account_request.rb'
    autoload :CrmGetAccountResponse, 'stack_one/models/operations/crm_get_account_response.rb'
    autoload :CrmGetContactRequest, 'stack_one/models/operations/crm_get_contact_request.rb'
    autoload :CrmGetContactResponse, 'stack_one/models/operations/crm_get_contact_response.rb'
    autoload :CrmGetListRequest, 'stack_one/models/operations/crm_get_list_request.rb'
    autoload :CrmGetListResponse, 'stack_one/models/operations/crm_get_list_response.rb'
    autoload :CrmListAccountsQueryParamFilter, 'stack_one/models/operations/crm_list_accounts_queryparam_filter.rb'
    autoload :CrmListAccountsRequest, 'stack_one/models/operations/crm_list_accounts_request.rb'
    autoload :CrmListAccountsResponse, 'stack_one/models/operations/crm_list_accounts_response.rb'
    autoload :CrmListContactsQueryParamFilter, 'stack_one/models/operations/crm_list_contacts_queryparam_filter.rb'
    autoload :CrmListContactsRequest, 'stack_one/models/operations/crm_list_contacts_request.rb'
    autoload :CrmListContactsResponse, 'stack_one/models/operations/crm_list_contacts_response.rb'
    autoload :CrmListListsQueryParamFilter, 'stack_one/models/operations/crm_list_lists_queryparam_filter.rb'
    autoload :CrmListListsRequest, 'stack_one/models/operations/crm_list_lists_request.rb'
    autoload :CrmListListsResponse, 'stack_one/models/operations/crm_list_lists_response.rb'
    autoload :CrmUpdateContactRequest, 'stack_one/models/operations/crm_update_contact_request.rb'
    autoload :CrmUpdateContactResponse, 'stack_one/models/operations/crm_update_contact_response.rb'
    autoload :HrisCreateEmployeeRequest, 'stack_one/models/operations/hris_create_employee_request.rb'
    autoload :HrisCreateEmployeeResponse, 'stack_one/models/operations/hris_create_employee_response.rb'
    autoload :HrisCreateEmployeeTimeOffRequestRequest, 'stack_one/models/operations/hris_create_employee_time_off_request_request.rb'
    autoload :HrisCreateEmployeeTimeOffRequestResponse, 'stack_one/models/operations/hris_create_employee_time_off_request_response.rb'
    autoload :HrisCreateEmployeeWorkEligibilityRequestRequest, 'stack_one/models/operations/hris_create_employee_work_eligibility_request_request.rb'
    autoload :HrisCreateEmployeeWorkEligibilityRequestResponse, 'stack_one/models/operations/hris_create_employee_work_eligibility_request_response.rb'
    autoload :HrisCreateTimeOffRequestRequest, 'stack_one/models/operations/hris_create_time_off_request_request.rb'
    autoload :HrisCreateTimeOffRequestResponse, 'stack_one/models/operations/hris_create_time_off_request_response.rb'
    autoload :HrisDownloadEmployeeDocumentRequest, 'stack_one/models/operations/hris_download_employee_document_request.rb'
    autoload :HrisDownloadEmployeeDocumentResponse, 'stack_one/models/operations/hris_download_employee_document_response.rb'
    autoload :HrisGetBenefitRequest, 'stack_one/models/operations/hris_get_benefit_request.rb'
    autoload :HrisGetBenefitResponse, 'stack_one/models/operations/hris_get_benefit_response.rb'
    autoload :HrisGetCompanyRequest, 'stack_one/models/operations/hris_get_company_request.rb'
    autoload :HrisGetCompanyResponse, 'stack_one/models/operations/hris_get_company_response.rb'
    autoload :HrisGetDepartmentGroupRequest, 'stack_one/models/operations/hris_get_department_group_request.rb'
    autoload :HrisGetDepartmentGroupResponse, 'stack_one/models/operations/hris_get_department_group_response.rb'
    autoload :HrisGetEmployeeRequest, 'stack_one/models/operations/hris_get_employee_request.rb'
    autoload :HrisGetEmployeeResponse, 'stack_one/models/operations/hris_get_employee_response.rb'
    autoload :HrisGetEmployeeDocumentRequest, 'stack_one/models/operations/hris_get_employee_document_request.rb'
    autoload :HrisGetEmployeeDocumentResponse, 'stack_one/models/operations/hris_get_employee_document_response.rb'
    autoload :HrisGetEmployeeDocumentCategoryRequest, 'stack_one/models/operations/hris_get_employee_document_category_request.rb'
    autoload :HrisGetEmployeeDocumentCategoryResponse, 'stack_one/models/operations/hris_get_employee_document_category_response.rb'
    autoload :HrisGetEmployeesTimeOffRequestRequest, 'stack_one/models/operations/hris_get_employees_time_off_request_request.rb'
    autoload :HrisGetEmployeesTimeOffRequestResponse, 'stack_one/models/operations/hris_get_employees_time_off_request_response.rb'
    autoload :HrisGetEmployeesWorkEligibilityRequest, 'stack_one/models/operations/hris_get_employees_work_eligibility_request.rb'
    autoload :HrisGetEmployeesWorkEligibilityResponse, 'stack_one/models/operations/hris_get_employees_work_eligibility_response.rb'
    autoload :HrisGetEmploymentRequest, 'stack_one/models/operations/hris_get_employment_request.rb'
    autoload :HrisGetEmploymentResponse, 'stack_one/models/operations/hris_get_employment_response.rb'
    autoload :HrisGetGroupRequest, 'stack_one/models/operations/hris_get_group_request.rb'
    autoload :HrisGetGroupResponse, 'stack_one/models/operations/hris_get_group_response.rb'
    autoload :HrisGetJobRequest, 'stack_one/models/operations/hris_get_job_request.rb'
    autoload :HrisGetJobResponse, 'stack_one/models/operations/hris_get_job_response.rb'
    autoload :HrisGetLocationRequest, 'stack_one/models/operations/hris_get_location_request.rb'
    autoload :HrisGetLocationResponse, 'stack_one/models/operations/hris_get_location_response.rb'
    autoload :HrisGetTimeOffRequestRequest, 'stack_one/models/operations/hris_get_time_off_request_request.rb'
    autoload :HrisGetTimeOffRequestResponse, 'stack_one/models/operations/hris_get_time_off_request_response.rb'
    autoload :HrisListBenefitsQueryParamFilter, 'stack_one/models/operations/hris_list_benefits_queryparam_filter.rb'
    autoload :HrisListBenefitsRequest, 'stack_one/models/operations/hris_list_benefits_request.rb'
    autoload :HrisListBenefitsResponse, 'stack_one/models/operations/hris_list_benefits_response.rb'
    autoload :HrisListCompaniesQueryParamFilter, 'stack_one/models/operations/hris_list_companies_queryparam_filter.rb'
    autoload :HrisListCompaniesRequest, 'stack_one/models/operations/hris_list_companies_request.rb'
    autoload :HrisListCompaniesResponse, 'stack_one/models/operations/hris_list_companies_response.rb'
    autoload :HrisListDepartmentGroupsQueryParamFilter, 'stack_one/models/operations/hris_list_department_groups_queryparam_filter.rb'
    autoload :HrisListDepartmentGroupsRequest, 'stack_one/models/operations/hris_list_department_groups_request.rb'
    autoload :HrisListDepartmentGroupsResponse, 'stack_one/models/operations/hris_list_department_groups_response.rb'
    autoload :HrisListEmployeeCategoriesQueryParamFilter, 'stack_one/models/operations/hris_list_employee_categories_queryparam_filter.rb'
    autoload :HrisListEmployeeCategoriesRequest, 'stack_one/models/operations/hris_list_employee_categories_request.rb'
    autoload :HrisListEmployeeCategoriesResponse, 'stack_one/models/operations/hris_list_employee_categories_response.rb'
    autoload :HrisListEmployeeDocumentsQueryParamFilter, 'stack_one/models/operations/hris_list_employee_documents_queryparam_filter.rb'
    autoload :HrisListEmployeeDocumentsRequest, 'stack_one/models/operations/hris_list_employee_documents_request.rb'
    autoload :HrisListEmployeeDocumentsResponse, 'stack_one/models/operations/hris_list_employee_documents_response.rb'
    autoload :HrisListEmployeeTimeOffRequestsQueryParamFilter, 'stack_one/models/operations/hris_list_employee_time_off_requests_queryparam_filter.rb'
    autoload :HrisListEmployeeTimeOffRequestsRequest, 'stack_one/models/operations/hris_list_employee_time_off_requests_request.rb'
    autoload :HrisListEmployeeTimeOffRequestsResponse, 'stack_one/models/operations/hris_list_employee_time_off_requests_response.rb'
    autoload :HrisListEmployeeWorkEligibilityQueryParamFilter, 'stack_one/models/operations/hris_list_employee_work_eligibility_queryparam_filter.rb'
    autoload :HrisListEmployeeWorkEligibilityRequest, 'stack_one/models/operations/hris_list_employee_work_eligibility_request.rb'
    autoload :HrisListEmployeeWorkEligibilityResponse, 'stack_one/models/operations/hris_list_employee_work_eligibility_response.rb'
    autoload :HrisListEmployeesQueryParamFilter, 'stack_one/models/operations/hris_list_employees_queryparam_filter.rb'
    autoload :HrisListEmployeesRequest, 'stack_one/models/operations/hris_list_employees_request.rb'
    autoload :HrisListEmployeesResponse, 'stack_one/models/operations/hris_list_employees_response.rb'
    autoload :HrisListEmploymentsQueryParamFilter, 'stack_one/models/operations/hris_list_employments_queryparam_filter.rb'
    autoload :HrisListEmploymentsRequest, 'stack_one/models/operations/hris_list_employments_request.rb'
    autoload :HrisListEmploymentsResponse, 'stack_one/models/operations/hris_list_employments_response.rb'
    autoload :HrisListGroupsQueryParamFilter, 'stack_one/models/operations/hris_list_groups_queryparam_filter.rb'
    autoload :HrisListGroupsRequest, 'stack_one/models/operations/hris_list_groups_request.rb'
    autoload :HrisListGroupsResponse, 'stack_one/models/operations/hris_list_groups_response.rb'
    autoload :HrisListJobsQueryParamFilter, 'stack_one/models/operations/hris_list_jobs_queryparam_filter.rb'
    autoload :HrisListJobsRequest, 'stack_one/models/operations/hris_list_jobs_request.rb'
    autoload :HrisListJobsResponse, 'stack_one/models/operations/hris_list_jobs_response.rb'
    autoload :HrisListLocationsQueryParamFilter, 'stack_one/models/operations/hris_list_locations_queryparam_filter.rb'
    autoload :HrisListLocationsRequest, 'stack_one/models/operations/hris_list_locations_request.rb'
    autoload :HrisListLocationsResponse, 'stack_one/models/operations/hris_list_locations_response.rb'
    autoload :HrisListTimeOffRequestsQueryParamFilter, 'stack_one/models/operations/hris_list_time_off_requests_queryparam_filter.rb'
    autoload :HrisListTimeOffRequestsRequest, 'stack_one/models/operations/hris_list_time_off_requests_request.rb'
    autoload :HrisListTimeOffRequestsResponse, 'stack_one/models/operations/hris_list_time_off_requests_response.rb'
    autoload :HrisUpdateEmployeeRequest, 'stack_one/models/operations/hris_update_employee_request.rb'
    autoload :HrisUpdateEmployeeResponse, 'stack_one/models/operations/hris_update_employee_response.rb'
    autoload :HrisUpdateEmployeeWorkEligibilityRequestRequest, 'stack_one/models/operations/hris_update_employee_work_eligibility_request_request.rb'
    autoload :HrisUpdateEmployeeWorkEligibilityRequestResponse, 'stack_one/models/operations/hris_update_employee_work_eligibility_request_response.rb'
    autoload :HrisUpdateTimeOffRequestRequest, 'stack_one/models/operations/hris_update_time_off_request_request.rb'
    autoload :HrisUpdateTimeOffRequestResponse, 'stack_one/models/operations/hris_update_time_off_request_response.rb'
    autoload :HrisUploadEmployeeDocumentRequest, 'stack_one/models/operations/hris_upload_employee_document_request.rb'
    autoload :HrisUploadEmployeeDocumentResponse, 'stack_one/models/operations/hris_upload_employee_document_response.rb'
    autoload :IamGetGroupRequest, 'stack_one/models/operations/iam_get_group_request.rb'
    autoload :IamGetGroupResponse, 'stack_one/models/operations/iam_get_group_response.rb'
    autoload :IamGetPolicyRequest, 'stack_one/models/operations/iam_get_policy_request.rb'
    autoload :IamGetPolicyResponse, 'stack_one/models/operations/iam_get_policy_response.rb'
    autoload :IamGetRoleRequest, 'stack_one/models/operations/iam_get_role_request.rb'
    autoload :IamGetRoleResponse, 'stack_one/models/operations/iam_get_role_response.rb'
    autoload :IamGetUserRequest, 'stack_one/models/operations/iam_get_user_request.rb'
    autoload :IamGetUserResponse, 'stack_one/models/operations/iam_get_user_response.rb'
    autoload :IamListGroupsQueryParamFilter, 'stack_one/models/operations/iam_list_groups_queryparam_filter.rb'
    autoload :IamListGroupsRequest, 'stack_one/models/operations/iam_list_groups_request.rb'
    autoload :IamListGroupsResponse, 'stack_one/models/operations/iam_list_groups_response.rb'
    autoload :IamListPoliciesQueryParamFilter, 'stack_one/models/operations/iam_list_policies_queryparam_filter.rb'
    autoload :IamListPoliciesRequest, 'stack_one/models/operations/iam_list_policies_request.rb'
    autoload :IamListPoliciesResponse, 'stack_one/models/operations/iam_list_policies_response.rb'
    autoload :IamListRolesQueryParamFilter, 'stack_one/models/operations/iam_list_roles_queryparam_filter.rb'
    autoload :IamListRolesRequest, 'stack_one/models/operations/iam_list_roles_request.rb'
    autoload :IamListRolesResponse, 'stack_one/models/operations/iam_list_roles_response.rb'
    autoload :IamListUsersQueryParamFilter, 'stack_one/models/operations/iam_list_users_queryparam_filter.rb'
    autoload :IamListUsersRequest, 'stack_one/models/operations/iam_list_users_request.rb'
    autoload :IamListUsersResponse, 'stack_one/models/operations/iam_list_users_response.rb'
    autoload :LmsCreateCompletionRequest, 'stack_one/models/operations/lms_create_completion_request.rb'
    autoload :LmsCreateCompletionResponse, 'stack_one/models/operations/lms_create_completion_response.rb'
    autoload :LmsCreateContentRequest, 'stack_one/models/operations/lms_create_content_request.rb'
    autoload :LmsCreateContentResponse, 'stack_one/models/operations/lms_create_content_response.rb'
    autoload :LmsGetCategoryRequest, 'stack_one/models/operations/lms_get_category_request.rb'
    autoload :LmsGetCategoryResponse, 'stack_one/models/operations/lms_get_category_response.rb'
    autoload :LmsGetCompletionRequest, 'stack_one/models/operations/lms_get_completion_request.rb'
    autoload :LmsGetCompletionResponse, 'stack_one/models/operations/lms_get_completion_response.rb'
    autoload :LmsGetContentRequest, 'stack_one/models/operations/lms_get_content_request.rb'
    autoload :LmsGetContentResponse, 'stack_one/models/operations/lms_get_content_response.rb'
    autoload :LmsListCategoriesQueryParamFilter, 'stack_one/models/operations/lms_list_categories_queryparam_filter.rb'
    autoload :LmsListCategoriesRequest, 'stack_one/models/operations/lms_list_categories_request.rb'
    autoload :LmsListCategoriesResponse, 'stack_one/models/operations/lms_list_categories_response.rb'
    autoload :LmsListContentQueryParamFilter, 'stack_one/models/operations/lms_list_content_queryparam_filter.rb'
    autoload :LmsListContentRequest, 'stack_one/models/operations/lms_list_content_request.rb'
    autoload :LmsListContentResponse, 'stack_one/models/operations/lms_list_content_response.rb'
    autoload :LmsUpdateContentRequest, 'stack_one/models/operations/lms_update_content_request.rb'
    autoload :LmsUpdateContentResponse, 'stack_one/models/operations/lms_update_content_response.rb'
    autoload :LmsUpsertContentRequest, 'stack_one/models/operations/lms_upsert_content_request.rb'
    autoload :LmsUpsertContentResponse, 'stack_one/models/operations/lms_upsert_content_response.rb'
    autoload :MarketingCreateContentBlockRequest, 'stack_one/models/operations/marketing_create_content_block_request.rb'
    autoload :MarketingCreateContentBlockResponse, 'stack_one/models/operations/marketing_create_content_block_response.rb'
    autoload :MarketingCreateEmailTemplateRequest, 'stack_one/models/operations/marketing_create_email_template_request.rb'
    autoload :MarketingCreateEmailTemplateResponse, 'stack_one/models/operations/marketing_create_email_template_response.rb'
    autoload :MarketingCreateInAppTemplateRequest, 'stack_one/models/operations/marketing_create_in_app_template_request.rb'
    autoload :MarketingCreateInAppTemplateResponse, 'stack_one/models/operations/marketing_create_in_app_template_response.rb'
    autoload :MarketingCreateOmniChannelTemplateRequest, 'stack_one/models/operations/marketing_create_omni_channel_template_request.rb'
    autoload :MarketingCreateOmniChannelTemplateResponse, 'stack_one/models/operations/marketing_create_omni_channel_template_response.rb'
    autoload :MarketingCreatePushTemplateRequest, 'stack_one/models/operations/marketing_create_push_template_request.rb'
    autoload :MarketingCreatePushTemplateResponse, 'stack_one/models/operations/marketing_create_push_template_response.rb'
    autoload :MarketingCreateSmsTemplateRequest, 'stack_one/models/operations/marketing_create_sms_template_request.rb'
    autoload :MarketingCreateSmsTemplateResponse, 'stack_one/models/operations/marketing_create_sms_template_response.rb'
    autoload :MarketingGetCampaignRequest, 'stack_one/models/operations/marketing_get_campaign_request.rb'
    autoload :MarketingGetCampaignResponse, 'stack_one/models/operations/marketing_get_campaign_response.rb'
    autoload :MarketingGetContentBlockRequest, 'stack_one/models/operations/marketing_get_content_block_request.rb'
    autoload :MarketingGetContentBlockResponse, 'stack_one/models/operations/marketing_get_content_block_response.rb'
    autoload :MarketingGetEmailTemplateRequest, 'stack_one/models/operations/marketing_get_email_template_request.rb'
    autoload :MarketingGetEmailTemplateResponse, 'stack_one/models/operations/marketing_get_email_template_response.rb'
    autoload :MarketingGetInAppTemplateRequest, 'stack_one/models/operations/marketing_get_in_app_template_request.rb'
    autoload :MarketingGetInAppTemplateResponse, 'stack_one/models/operations/marketing_get_in_app_template_response.rb'
    autoload :MarketingGetOmniChannelTemplateRequest, 'stack_one/models/operations/marketing_get_omni_channel_template_request.rb'
    autoload :MarketingGetOmniChannelTemplateResponse, 'stack_one/models/operations/marketing_get_omni_channel_template_response.rb'
    autoload :MarketingGetPushTemplateRequest, 'stack_one/models/operations/marketing_get_push_template_request.rb'
    autoload :MarketingGetPushTemplateResponse, 'stack_one/models/operations/marketing_get_push_template_response.rb'
    autoload :MarketingGetSmsTemplateRequest, 'stack_one/models/operations/marketing_get_sms_template_request.rb'
    autoload :MarketingGetSmsTemplateResponse, 'stack_one/models/operations/marketing_get_sms_template_response.rb'
    autoload :MarketingListCampaignsQueryParamFilter, 'stack_one/models/operations/marketing_list_campaigns_queryparam_filter.rb'
    autoload :MarketingListCampaignsRequest, 'stack_one/models/operations/marketing_list_campaigns_request.rb'
    autoload :MarketingListCampaignsResponse, 'stack_one/models/operations/marketing_list_campaigns_response.rb'
    autoload :MarketingListContentBlocksQueryParamFilter, 'stack_one/models/operations/marketing_list_content_blocks_queryparam_filter.rb'
    autoload :MarketingListContentBlocksRequest, 'stack_one/models/operations/marketing_list_content_blocks_request.rb'
    autoload :MarketingListContentBlocksResponse, 'stack_one/models/operations/marketing_list_content_blocks_response.rb'
    autoload :MarketingListEmailTemplatesQueryParamFilter, 'stack_one/models/operations/marketing_list_email_templates_queryparam_filter.rb'
    autoload :MarketingListEmailTemplatesRequest, 'stack_one/models/operations/marketing_list_email_templates_request.rb'
    autoload :MarketingListEmailTemplatesResponse, 'stack_one/models/operations/marketing_list_email_templates_response.rb'
    autoload :MarketingListInAppTemplatesQueryParamFilter, 'stack_one/models/operations/marketing_list_in_app_templates_queryparam_filter.rb'
    autoload :MarketingListInAppTemplatesRequest, 'stack_one/models/operations/marketing_list_in_app_templates_request.rb'
    autoload :MarketingListInAppTemplatesResponse, 'stack_one/models/operations/marketing_list_in_app_templates_response.rb'
    autoload :MarketingListOmniChannelTemplatesQueryParamFilter, 'stack_one/models/operations/marketing_list_omni_channel_templates_queryparam_filter.rb'
    autoload :MarketingListOmniChannelTemplatesRequest, 'stack_one/models/operations/marketing_list_omni_channel_templates_request.rb'
    autoload :MarketingListOmniChannelTemplatesResponse, 'stack_one/models/operations/marketing_list_omni_channel_templates_response.rb'
    autoload :MarketingListPushTemplatesQueryParamFilter, 'stack_one/models/operations/marketing_list_push_templates_queryparam_filter.rb'
    autoload :MarketingListPushTemplatesRequest, 'stack_one/models/operations/marketing_list_push_templates_request.rb'
    autoload :MarketingListPushTemplatesResponse, 'stack_one/models/operations/marketing_list_push_templates_response.rb'
    autoload :MarketingListSmsTemplatesQueryParamFilter, 'stack_one/models/operations/marketing_list_sms_templates_queryparam_filter.rb'
    autoload :MarketingListSmsTemplatesRequest, 'stack_one/models/operations/marketing_list_sms_templates_request.rb'
    autoload :MarketingListSmsTemplatesResponse, 'stack_one/models/operations/marketing_list_sms_templates_response.rb'
    autoload :MarketingUpdateContentBlockRequest, 'stack_one/models/operations/marketing_update_content_block_request.rb'
    autoload :MarketingUpdateContentBlockResponse, 'stack_one/models/operations/marketing_update_content_block_response.rb'
    autoload :MarketingUpdateEmailTemplateRequest, 'stack_one/models/operations/marketing_update_email_template_request.rb'
    autoload :MarketingUpdateEmailTemplateResponse, 'stack_one/models/operations/marketing_update_email_template_response.rb'
    autoload :MarketingUpdateInAppTemplateRequest, 'stack_one/models/operations/marketing_update_in_app_template_request.rb'
    autoload :MarketingUpdateInAppTemplateResponse, 'stack_one/models/operations/marketing_update_in_app_template_response.rb'
    autoload :MarketingUpdateOmniChannelTemplateRequest, 'stack_one/models/operations/marketing_update_omni_channel_template_request.rb'
    autoload :MarketingUpdateOmniChannelTemplateResponse, 'stack_one/models/operations/marketing_update_omni_channel_template_response.rb'
    autoload :MarketingUpdatePushTemplateRequest, 'stack_one/models/operations/marketing_update_push_template_request.rb'
    autoload :MarketingUpdatePushTemplateResponse, 'stack_one/models/operations/marketing_update_push_template_response.rb'
    autoload :MarketingUpdateSmsTemplateRequest, 'stack_one/models/operations/marketing_update_sms_template_request.rb'
    autoload :MarketingUpdateSmsTemplateResponse, 'stack_one/models/operations/marketing_update_sms_template_response.rb'
    autoload :StackoneProxyRequestRequest, 'stack_one/models/operations/stackone_proxy_request_request.rb'
    autoload :StackoneProxyRequestResponse, 'stack_one/models/operations/stackone_proxy_request_response.rb'
  end
end
