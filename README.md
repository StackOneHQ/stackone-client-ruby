# stackone_client

<div align="left">
    <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>

<!-- Start Summary [summary] -->
## Summary

IAM: The documentation for the StackOne Unified API - IAM
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents

* [SDK Installation](#sdk-installation)
* [SDK Example Usage](#sdk-example-usage)
* [Available Resources and Operations](#available-resources-and-operations)
* [Server Selection](#server-selection)
<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install stackone_client
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### List Employees

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListEmployeesRequest.new(
  expand: "company,employments,work_location,home_location,custom_fields,groups",
  fields_: "id,remote_id,first_name,last_name,name,display_name,gender,ethnicity,date_of_birth,birthday,marital_status,avatar_url,avatar,personal_email,personal_phone_number,work_email,work_phone_number,job_id,remote_job_id,job_title,job_description,department_id,remote_department_id,department,cost_centers,benefits,manager_id,remote_manager_id,hire_date,start_date,tenure,work_anniversary,employment_type,employment_contract_type,employment_status,termination_date,company_name,preferred_language,citizenships,home_location,work_location,employments,custom_fields,documents,created_at,updated_at,employee_number,national_identity_number",
  filter: ::StackOne::Operations::HrisListEmployeesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  include: "avatar_url,avatar,custom_fields,job_description,benefits",
  x_account_id: "<value>",
)
    
res = s.hris.list_employees(req)

if ! res.employees_paginated.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [Accounts](docs/sdks/accounts/README.md)

* [delete_account](docs/sdks/accounts/README.md#delete_account) - Delete Account
* [get_account](docs/sdks/accounts/README.md#get_account) - Get Account
* [get_account_meta_info](docs/sdks/accounts/README.md#get_account_meta_info) - Get meta information of the account
* [list_linked_accounts](docs/sdks/accounts/README.md#list_linked_accounts) - List Accounts
* [update_account](docs/sdks/accounts/README.md#update_account) - Update Account

### [Ats](docs/sdks/ats/README.md)

* [create_application](docs/sdks/ats/README.md#create_application) - Create Application
* [create_candidate](docs/sdks/ats/README.md#create_candidate) - Create Candidate
* [create_candidate_note](docs/sdks/ats/README.md#create_candidate_note) - Create Candidate Note
* [create_job](docs/sdks/ats/README.md#create_job) - Create Job
* [create_offer](docs/sdks/ats/README.md#create_offer) - Creates an offer
* [download_application_document](docs/sdks/ats/README.md#download_application_document) - Download Application Document
* [get_application](docs/sdks/ats/README.md#get_application) - Get Application
* [get_application_custom_field_definition](docs/sdks/ats/README.md#get_application_custom_field_definition) - Get Application Custom Field Definition
* [get_application_document](docs/sdks/ats/README.md#get_application_document) - Get Application Document
* [get_application_offer](docs/sdks/ats/README.md#get_application_offer) - Get Application Offer
* [get_application_scheduled_interview](docs/sdks/ats/README.md#get_application_scheduled_interview) - Get Applications scheduled interview
* [get_application_scorecard](docs/sdks/ats/README.md#get_application_scorecard) - Get Application Scorecard
* [get_assessments_package](docs/sdks/ats/README.md#get_assessments_package) - Get Assessments Package
* [get_assessments_request](docs/sdks/ats/README.md#get_assessments_request) - Get Assessments Requests
* [get_assessments_result](docs/sdks/ats/README.md#get_assessments_result) - Get Assessments Results
* [get_candidate](docs/sdks/ats/README.md#get_candidate) - Get Candidate
* [get_candidate_custom_field_definition](docs/sdks/ats/README.md#get_candidate_custom_field_definition) - Get Candidate Custom Field Definition
* [get_candidate_note](docs/sdks/ats/README.md#get_candidate_note) - Get Candidate Note
* [get_department](docs/sdks/ats/README.md#get_department) - Get Department
* [get_interview](docs/sdks/ats/README.md#get_interview) - Get Interview
* [get_interview_stage](docs/sdks/ats/README.md#get_interview_stage) - Get Interview Stage
* [get_job](docs/sdks/ats/README.md#get_job) - Get Job
* [get_job_custom_field_definition](docs/sdks/ats/README.md#get_job_custom_field_definition) - Get Job Custom Field Definition
* [get_job_posting](docs/sdks/ats/README.md#get_job_posting) - Get Job Posting
* [get_list](docs/sdks/ats/README.md#get_list) - Get List
* [get_location](docs/sdks/ats/README.md#get_location) - Get Location
* [get_offer](docs/sdks/ats/README.md#get_offer) - Get Offer
* [get_rejected_reason](docs/sdks/ats/README.md#get_rejected_reason) - Get Rejected Reason
* [get_user](docs/sdks/ats/README.md#get_user) - Get User
* [list_application_custom_field_definitions](docs/sdks/ats/README.md#list_application_custom_field_definitions) - List Application Custom Field Definitions
* [list_application_documents](docs/sdks/ats/README.md#list_application_documents) - List Application Documents
* [list_application_scorecards](docs/sdks/ats/README.md#list_application_scorecards) - List Application Scorecards
* [list_applications](docs/sdks/ats/README.md#list_applications) - List Applications
* [list_applications_offers](docs/sdks/ats/README.md#list_applications_offers) - List Application Offers
* [list_applications_scheduled_interviews](docs/sdks/ats/README.md#list_applications_scheduled_interviews) - List Applications scheduled interviews
* [list_assessments_packages](docs/sdks/ats/README.md#list_assessments_packages) - List Assessments Packages
* [list_candidate_custom_field_definitions](docs/sdks/ats/README.md#list_candidate_custom_field_definitions) - List Candidate Custom Field Definitions
* [list_candidate_notes](docs/sdks/ats/README.md#list_candidate_notes) - List Candidate Notes
* [list_candidates](docs/sdks/ats/README.md#list_candidates) - List Candidates
* [list_departments](docs/sdks/ats/README.md#list_departments) - List Departments
* [list_interview_stages](docs/sdks/ats/README.md#list_interview_stages) - List Interview Stages
* [list_interviews](docs/sdks/ats/README.md#list_interviews) - List Interviews
* [list_job_custom_field_definitions](docs/sdks/ats/README.md#list_job_custom_field_definitions) - List Job Custom Field Definitions
* [list_job_postings](docs/sdks/ats/README.md#list_job_postings) - List Job Postings
* [list_jobs](docs/sdks/ats/README.md#list_jobs) - List Jobs
* [list_lists](docs/sdks/ats/README.md#list_lists) - Get all Lists
* [list_locations](docs/sdks/ats/README.md#list_locations) - List locations
* [list_offers](docs/sdks/ats/README.md#list_offers) - List Offers
* [list_rejected_reasons](docs/sdks/ats/README.md#list_rejected_reasons) - List Rejected Reasons
* [list_users](docs/sdks/ats/README.md#list_users) - List Users
* [move_application](docs/sdks/ats/README.md#move_application) - Move Application
* [reject_application](docs/sdks/ats/README.md#reject_application) - Reject Application
* [update_application](docs/sdks/ats/README.md#update_application) - Update an Application
* [update_candidate](docs/sdks/ats/README.md#update_candidate) - Update Candidate
* [update_job](docs/sdks/ats/README.md#update_job) - Update Job
* [upload_application_document](docs/sdks/ats/README.md#upload_application_document) - Upload Application Document

### [Connectors](docs/sdks/connectors/README.md)

* [get_connector_meta](docs/sdks/connectors/README.md#get_connector_meta) - Get Connector Meta information for the given provider key
* [list_connectors_meta](docs/sdks/connectors/README.md#list_connectors_meta) - List Connectors Meta Information for all providers

### [ConnectSessions](docs/sdks/connectsessions/README.md)

* [authenticate_connect_session](docs/sdks/connectsessions/README.md#authenticate_connect_session) - Authenticate Connect Session
* [create_connect_session](docs/sdks/connectsessions/README.md#create_connect_session) - Create Connect Session

### [Crm](docs/sdks/crm/README.md)

* [create_contact](docs/sdks/crm/README.md#create_contact) - Creates a new Contact
* [get_account](docs/sdks/crm/README.md#get_account) - Get Account
* [get_contact](docs/sdks/crm/README.md#get_contact) - Get Contact
* [get_list](docs/sdks/crm/README.md#get_list) - Get List
* [list_accounts](docs/sdks/crm/README.md#list_accounts) - List Accounts
* [list_contacts](docs/sdks/crm/README.md#list_contacts) - List Contacts
* [list_lists](docs/sdks/crm/README.md#list_lists) - Get all Lists
* [update_contact](docs/sdks/crm/README.md#update_contact) - Update Contact (early access)

### [Hris](docs/sdks/hris/README.md)

* [batch_upload_employee_document](docs/sdks/hris/README.md#batch_upload_employee_document) - Batch Upload Employee Document
* [create_employee](docs/sdks/hris/README.md#create_employee) - Creates an employee
* [create_employee_time_off_request](docs/sdks/hris/README.md#create_employee_time_off_request) - Create Employee Time Off Request
* [create_employee_work_eligibility_request](docs/sdks/hris/README.md#create_employee_work_eligibility_request) - Create Employee Work Eligibility Request
* [create_time_off_request](docs/sdks/hris/README.md#create_time_off_request) - Creates a time off request
* [download_employee_document](docs/sdks/hris/README.md#download_employee_document) - Download Employee Document
* [get_benefit](docs/sdks/hris/README.md#get_benefit) - Get Benefit
* [get_company](docs/sdks/hris/README.md#get_company) - Get Company
* [get_department_group](docs/sdks/hris/README.md#get_department_group) - Get Department Group
* [get_employee](docs/sdks/hris/README.md#get_employee) - Get Employee
* [get_employee_document](docs/sdks/hris/README.md#get_employee_document) - Get Employee Document
* [get_employee_document_category](docs/sdks/hris/README.md#get_employee_document_category) - Get Employee Document Category
* [get_employee_employment](docs/sdks/hris/README.md#get_employee_employment) - Get Employee Employment
* [get_employees_time_off_request](docs/sdks/hris/README.md#get_employees_time_off_request) - Get Employees Time Off Request
* [get_employees_work_eligibility](docs/sdks/hris/README.md#get_employees_work_eligibility) - Get Employees Work Eligibility
* [get_employment](docs/sdks/hris/README.md#get_employment) - Get Employment
* [get_group](docs/sdks/hris/README.md#get_group) - Get Group
* [get_job](docs/sdks/hris/README.md#get_job) - Get Job
* [get_location](docs/sdks/hris/README.md#get_location) - Get Location
* [get_time_off_request](docs/sdks/hris/README.md#get_time_off_request) - Get time off request
* [list_benefits](docs/sdks/hris/README.md#list_benefits) - List benefits
* [list_companies](docs/sdks/hris/README.md#list_companies) - List Companies
* [list_department_groups](docs/sdks/hris/README.md#list_department_groups) - List Department Groups
* [list_employee_categories](docs/sdks/hris/README.md#list_employee_categories) - List Employee Document Categories
* [list_employee_documents](docs/sdks/hris/README.md#list_employee_documents) - List Employee Documents
* [list_employee_employments](docs/sdks/hris/README.md#list_employee_employments) - List Employee Employments
* [list_employee_time_off_requests](docs/sdks/hris/README.md#list_employee_time_off_requests) - List Employee Time Off Requests
* [list_employee_work_eligibility](docs/sdks/hris/README.md#list_employee_work_eligibility) - List Employee Work Eligibility
* [list_employees](docs/sdks/hris/README.md#list_employees) - List Employees
* [list_employments](docs/sdks/hris/README.md#list_employments) - List Employments
* [list_groups](docs/sdks/hris/README.md#list_groups) - List Groups
* [list_jobs](docs/sdks/hris/README.md#list_jobs) - List Jobs
* [list_locations](docs/sdks/hris/README.md#list_locations) - List locations
* [list_time_off_requests](docs/sdks/hris/README.md#list_time_off_requests) - List time off requests
* [update_employee](docs/sdks/hris/README.md#update_employee) - Updates an employee
* [update_employee_work_eligibility_request](docs/sdks/hris/README.md#update_employee_work_eligibility_request) - Update Employee Work Eligibility Request
* [update_time_off_request](docs/sdks/hris/README.md#update_time_off_request) - Update time off request
* [upload_employee_document](docs/sdks/hris/README.md#upload_employee_document) - Upload Employee Document

### [Iam](docs/sdks/iam/README.md)

* [get_group](docs/sdks/iam/README.md#get_group) - Get Group
* [get_policy](docs/sdks/iam/README.md#get_policy) - Get Policy
* [get_role](docs/sdks/iam/README.md#get_role) - Get Role
* [get_user](docs/sdks/iam/README.md#get_user) - Get User
* [list_groups](docs/sdks/iam/README.md#list_groups) - List Groups
* [list_policies](docs/sdks/iam/README.md#list_policies) - List Policies
* [list_roles](docs/sdks/iam/README.md#list_roles) - List Roles
* [list_users](docs/sdks/iam/README.md#list_users) - List Users

### [Lms](docs/sdks/lms/README.md)

* [batch_upsert_content](docs/sdks/lms/README.md#batch_upsert_content) - Batch Upsert Content
* [create_content](docs/sdks/lms/README.md#create_content) - Create Content
* [create_user_completion](docs/sdks/lms/README.md#create_user_completion) - Create User Completion
* [get_assignment](docs/sdks/lms/README.md#get_assignment) - Get Assignment
* [get_category](docs/sdks/lms/README.md#get_category) - Get Category
* [get_completion](docs/sdks/lms/README.md#get_completion) - Get Completion
* [get_content](docs/sdks/lms/README.md#get_content) - Get Content
* [get_course](docs/sdks/lms/README.md#get_course) - Get Course
* [get_skill](docs/sdks/lms/README.md#get_skill) - Get Skill
* [get_user](docs/sdks/lms/README.md#get_user) - Get User
* [get_user_assignment](docs/sdks/lms/README.md#get_user_assignment) - Get User Assignment
* [get_user_completion](docs/sdks/lms/README.md#get_user_completion) - Get User Completion
* [list_assignments](docs/sdks/lms/README.md#list_assignments) - List Assignments
* [list_categories](docs/sdks/lms/README.md#list_categories) - List Categories
* [list_completions](docs/sdks/lms/README.md#list_completions) - List Completions
* [list_content](docs/sdks/lms/README.md#list_content) - List Content
* [list_courses](docs/sdks/lms/README.md#list_courses) - List Courses
* [list_skills](docs/sdks/lms/README.md#list_skills) - List Skills
* [list_user_assignments](docs/sdks/lms/README.md#list_user_assignments) - List User Assignments
* [list_user_completions](docs/sdks/lms/README.md#list_user_completions) - List User Completions
* [list_users](docs/sdks/lms/README.md#list_users) - List Users
* [update_content](docs/sdks/lms/README.md#update_content) - Update Content
* [upsert_content](docs/sdks/lms/README.md#upsert_content) - Upsert Content

### [Marketing](docs/sdks/marketing/README.md)

* [create_content_block](docs/sdks/marketing/README.md#create_content_block) - Create Content Block
* [create_email_template](docs/sdks/marketing/README.md#create_email_template) - Create Email Templates
* [create_in_app_template](docs/sdks/marketing/README.md#create_in_app_template) - Create In-App Template
* [~~create_omni_channel_template~~](docs/sdks/marketing/README.md#create_omni_channel_template) - Create Omni-Channel Template :warning: **Deprecated**
* [create_push_template](docs/sdks/marketing/README.md#create_push_template) - Create Push Template
* [create_sms_template](docs/sdks/marketing/README.md#create_sms_template) - Create SMS Template
* [get_campaign](docs/sdks/marketing/README.md#get_campaign) - Get campaign
* [get_content_block](docs/sdks/marketing/README.md#get_content_block) - Get Content Blocks
* [get_email_template](docs/sdks/marketing/README.md#get_email_template) - Get Email Templates
* [get_in_app_template](docs/sdks/marketing/README.md#get_in_app_template) - Get In-App Template
* [~~get_omni_channel_template~~](docs/sdks/marketing/README.md#get_omni_channel_template) - Get Omni-Channel Template :warning: **Deprecated**
* [get_push_template](docs/sdks/marketing/README.md#get_push_template) - Get Push Template
* [get_sms_template](docs/sdks/marketing/README.md#get_sms_template) - Get SMS Template
* [list_campaigns](docs/sdks/marketing/README.md#list_campaigns) - List campaigns
* [list_content_blocks](docs/sdks/marketing/README.md#list_content_blocks) - List Content Blocks
* [list_email_templates](docs/sdks/marketing/README.md#list_email_templates) - List Email Templates
* [list_in_app_templates](docs/sdks/marketing/README.md#list_in_app_templates) - List In-App Templates
* [~~list_omni_channel_templates~~](docs/sdks/marketing/README.md#list_omni_channel_templates) - List Omni-Channel Templates :warning: **Deprecated**
* [list_push_templates](docs/sdks/marketing/README.md#list_push_templates) - List Push Templates
* [list_sms_templates](docs/sdks/marketing/README.md#list_sms_templates) - List SMS Templates
* [update_content_block](docs/sdks/marketing/README.md#update_content_block) - Update Content Block
* [update_email_template](docs/sdks/marketing/README.md#update_email_template) - Update Email Templates
* [update_in_app_template](docs/sdks/marketing/README.md#update_in_app_template) - Update In-App Template
* [~~update_omni_channel_template~~](docs/sdks/marketing/README.md#update_omni_channel_template) - Update Omni-Channel Template :warning: **Deprecated**
* [update_push_template](docs/sdks/marketing/README.md#update_push_template) - Update Push Template
* [update_sms_template](docs/sdks/marketing/README.md#update_sms_template) - Update SMS Template

### [Proxy](docs/sdks/proxy/README.md)

* [proxy_request](docs/sdks/proxy/README.md#proxy_request) - Proxy Request


</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

## Server Selection

### Select Server by Index

You can override the default server globally by passing a server index to the `server_idx: int` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the indexes associated with the available servers:

| # | Server | Variables |
| - | ------ | --------- |
| 0 | `https://api.stackone.com` | None |




### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url: str` optional parameter when initializing the SDK client instance. For example:
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release!

### SDK Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
