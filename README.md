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
<!-- $toc-max-depth=2 -->
* [stackone_client](#stackoneclient)
  * [SDK Installation](#sdk-installation)
  * [SDK Example Usage](#sdk-example-usage)
  * [Authentication](#authentication)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Retries](#retries)
  * [Error Handling](#error-handling)
  * [Server Selection](#server-selection)
* [Development](#development)
  * [Maturity](#maturity)
  * [Contributions](#contributions)

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

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeesRequest.new(
  expand: "company,employments,work_location,home_location,groups,skills",
  fields_: "id,remote_id,first_name,last_name,name,display_name,gender,ethnicity,date_of_birth,birthday,marital_status,avatar_url,avatar,personal_email,personal_phone_number,work_email,work_phone_number,job_id,remote_job_id,job_title,job_description,department_id,remote_department_id,department,cost_centers,company,manager_id,remote_manager_id,hire_date,start_date,tenure,work_anniversary,employment_type,employment_contract_type,employment_status,termination_date,company_name,company_id,remote_company_id,preferred_language,citizenships,home_location,work_location,employments,custom_fields,documents,created_at,updated_at,benefits,employee_number,national_identity_number,national_identity_numbers,skills",
  filter: Models::Operations::HrisListEmployeesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  include: "avatar_url,avatar,custom_fields,job_description,benefits",
  x_account_id: "<id>",
)

res = s.hris.list_employees(req)

if ! res.employees_paginated.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Authentication [security] -->
## Authentication

### Per-Client Security Schemes

This SDK supports the following security scheme globally:

| Name                      | Type | Scheme     |
| ------------------------- | ---- | ---------- |
| `username`<br/>`password` | http | HTTP Basic |

You can set the security parameters through the `security` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.accounts.delete_account(id="<id>")

if ! res.linked_account.nil?
  # handle response
end

```
<!-- End Authentication [security] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [accounts](docs/sdks/accounts/README.md)

* [delete_account](docs/sdks/accounts/README.md#delete_account) - Delete Account
* [get_account](docs/sdks/accounts/README.md#get_account) - Get Account
* [get_account_meta_info](docs/sdks/accounts/README.md#get_account_meta_info) - Get meta information of the account
* [list_linked_accounts](docs/sdks/accounts/README.md#list_linked_accounts) - List Accounts
* [update_account](docs/sdks/accounts/README.md#update_account) - Update Account

### [ats](docs/sdks/ats/README.md)

* [create_application](docs/sdks/ats/README.md#create_application) - Create Application
* [create_application_note](docs/sdks/ats/README.md#create_application_note) - Create Application Note
* [create_background_check_package](docs/sdks/ats/README.md#create_background_check_package) - Create Background Check Package
* [create_candidate](docs/sdks/ats/README.md#create_candidate) - Create Candidate
* [create_candidate_note](docs/sdks/ats/README.md#create_candidate_note) - Create Candidate Note
* [create_job](docs/sdks/ats/README.md#create_job) - Create Job
* [create_offer](docs/sdks/ats/README.md#create_offer) - Creates an offer
* [delete_background_check_package](docs/sdks/ats/README.md#delete_background_check_package) - Delete Background Check Package
* [download_application_document](docs/sdks/ats/README.md#download_application_document) - Download Application Document
* [get_application](docs/sdks/ats/README.md#get_application) - Get Application
* [get_application_custom_field_definition](docs/sdks/ats/README.md#get_application_custom_field_definition) - Get Application Custom Field Definition
* [get_application_document](docs/sdks/ats/README.md#get_application_document) - Get Application Document
* [get_application_note](docs/sdks/ats/README.md#get_application_note) - Get Application Note
* [get_application_offer](docs/sdks/ats/README.md#get_application_offer) - Get Application Offer
* [get_application_scheduled_interview](docs/sdks/ats/README.md#get_application_scheduled_interview) - Get Applications scheduled interview
* [get_application_scorecard](docs/sdks/ats/README.md#get_application_scorecard) - Get Application Scorecard
* [get_assessments_package](docs/sdks/ats/README.md#get_assessments_package) - Get Assessments Package
* [get_assessments_request](docs/sdks/ats/README.md#get_assessments_request) - Get Assessments Requests
* [get_assessments_result](docs/sdks/ats/README.md#get_assessments_result) - Get Assessments Results
* [get_background_check_package](docs/sdks/ats/README.md#get_background_check_package) - Get Background Check Package
* [get_background_check_request](docs/sdks/ats/README.md#get_background_check_request) - Get Background Check Request
* [get_background_check_result](docs/sdks/ats/README.md#get_background_check_result) - Get Background Check Results
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
* [list_application_notes](docs/sdks/ats/README.md#list_application_notes) - List Application Notes
* [list_application_scorecards](docs/sdks/ats/README.md#list_application_scorecards) - List Application Scorecards
* [list_applications](docs/sdks/ats/README.md#list_applications) - List Applications
* [list_applications_offers](docs/sdks/ats/README.md#list_applications_offers) - List Application Offers
* [list_applications_scheduled_interviews](docs/sdks/ats/README.md#list_applications_scheduled_interviews) - List Applications scheduled interviews
* [list_assessments_packages](docs/sdks/ats/README.md#list_assessments_packages) - List Assessments Packages
* [list_background_check_packages](docs/sdks/ats/README.md#list_background_check_packages) - List Background Check Packages
* [list_background_check_request](docs/sdks/ats/README.md#list_background_check_request) - List Background Check Request
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
* [order_assessments_request](docs/sdks/ats/README.md#order_assessments_request) - Order Assessments Request
* [order_background_check_request](docs/sdks/ats/README.md#order_background_check_request) - Order Background Check Request
* [reject_application](docs/sdks/ats/README.md#reject_application) - Reject Application
* [update_application](docs/sdks/ats/README.md#update_application) - Update an Application
* [update_application_note](docs/sdks/ats/README.md#update_application_note) - Update an Application Note
* [update_assessments_result](docs/sdks/ats/README.md#update_assessments_result) - Update Assessments Result
* [update_background_check_package](docs/sdks/ats/README.md#update_background_check_package) - Update Background Check Package
* [update_background_check_result](docs/sdks/ats/README.md#update_background_check_result) - Update Background Check Result
* [update_candidate](docs/sdks/ats/README.md#update_candidate) - Update Candidate
* [update_job](docs/sdks/ats/README.md#update_job) - Update Job
* [upload_application_document](docs/sdks/ats/README.md#upload_application_document) - Upload Application Document

### [connect_sessions](docs/sdks/connectsessions/README.md)

* [authenticate_connect_session](docs/sdks/connectsessions/README.md#authenticate_connect_session) - Authenticate Connect Session
* [create_connect_session](docs/sdks/connectsessions/README.md#create_connect_session) - Create Connect Session

### [connectors](docs/sdks/connectors/README.md)

* [get_connector_meta](docs/sdks/connectors/README.md#get_connector_meta) - Get Connector Meta information for the given provider key
* [list_connectors_meta](docs/sdks/connectors/README.md#list_connectors_meta) - List Connectors Meta Information for all providers

### [crm](docs/sdks/crm/README.md)

* [create_contact](docs/sdks/crm/README.md#create_contact) - Creates a new Contact
* [get_account](docs/sdks/crm/README.md#get_account) - Get Account
* [get_contact](docs/sdks/crm/README.md#get_contact) - Get Contact
* [get_contact_custom_field_definition](docs/sdks/crm/README.md#get_contact_custom_field_definition) - Get Contact Custom Field Definition
* [get_list](docs/sdks/crm/README.md#get_list) - Get List
* [list_accounts](docs/sdks/crm/README.md#list_accounts) - List Accounts
* [list_contact_custom_field_definitions](docs/sdks/crm/README.md#list_contact_custom_field_definitions) - List Contact Custom Field Definitions
* [list_contacts](docs/sdks/crm/README.md#list_contacts) - List Contacts
* [list_lists](docs/sdks/crm/README.md#list_lists) - Get all Lists
* [update_contact](docs/sdks/crm/README.md#update_contact) - Update Contact (early access)

### [hris](docs/sdks/hris/README.md)

* [batch_upload_employee_document](docs/sdks/hris/README.md#batch_upload_employee_document) - Batch Upload Employee Document
* [cancel_employee_time_off_request](docs/sdks/hris/README.md#cancel_employee_time_off_request) - Cancel Employee Time Off Request
* [create_employee](docs/sdks/hris/README.md#create_employee) - Creates an employee
* [create_employee_employment](docs/sdks/hris/README.md#create_employee_employment) - Create Employee Employment
* [create_employee_skill](docs/sdks/hris/README.md#create_employee_skill) - Create Employee Skill
* [create_employee_time_off_request](docs/sdks/hris/README.md#create_employee_time_off_request) - Create Employee Time Off Request
* [create_employee_work_eligibility_request](docs/sdks/hris/README.md#create_employee_work_eligibility_request) - Create Employee Work Eligibility Request
* [download_employee_document](docs/sdks/hris/README.md#download_employee_document) - Download Employee Document
* [get_benefit](docs/sdks/hris/README.md#get_benefit) - Get Benefit
* [get_company](docs/sdks/hris/README.md#get_company) - Get Company
* [get_cost_center_group](docs/sdks/hris/README.md#get_cost_center_group) - Get Cost Center Group
* [get_department_group](docs/sdks/hris/README.md#get_department_group) - Get Department Group
* [get_employee](docs/sdks/hris/README.md#get_employee) - Get Employee
* [get_employee_custom_field_definition](docs/sdks/hris/README.md#get_employee_custom_field_definition) - Get employee Custom Field Definition
* [get_employee_document](docs/sdks/hris/README.md#get_employee_document) - Get Employee Document
* [get_employee_document_category](docs/sdks/hris/README.md#get_employee_document_category) - Get Employee Document Category
* [get_employee_employment](docs/sdks/hris/README.md#get_employee_employment) - Get Employee Employment
* [get_employee_skill](docs/sdks/hris/README.md#get_employee_skill) - Get Employee Skill
* [get_employee_task](docs/sdks/hris/README.md#get_employee_task) - Get Employee Task
* [get_employee_time_off_balance](docs/sdks/hris/README.md#get_employee_time_off_balance) - Get Employee Time Off Balance
* [get_employees_time_off_request](docs/sdks/hris/README.md#get_employees_time_off_request) - Get Employees Time Off Request
* [get_employees_work_eligibility](docs/sdks/hris/README.md#get_employees_work_eligibility) - Get Employees Work Eligibility
* [get_employment](docs/sdks/hris/README.md#get_employment) - Get Employment
* [get_group](docs/sdks/hris/README.md#get_group) - Get Group
* [get_job](docs/sdks/hris/README.md#get_job) - Get Job
* [get_location](docs/sdks/hris/README.md#get_location) - Get Work Location
* [get_team_group](docs/sdks/hris/README.md#get_team_group) - Get Team Group
* [get_time_entries](docs/sdks/hris/README.md#get_time_entries) - Get Time Entry
* [get_time_off_policy](docs/sdks/hris/README.md#get_time_off_policy) - Get Time Off Policy
* [get_time_off_request](docs/sdks/hris/README.md#get_time_off_request) - Get time off request
* [~~get_time_off_type~~](docs/sdks/hris/README.md#get_time_off_type) - Get time off type :warning: **Deprecated**
* [invite_employee](docs/sdks/hris/README.md#invite_employee) - Invite Employee
* [list_benefits](docs/sdks/hris/README.md#list_benefits) - List benefits
* [list_companies](docs/sdks/hris/README.md#list_companies) - List Companies
* [list_cost_center_groups](docs/sdks/hris/README.md#list_cost_center_groups) - List Cost Center Groups
* [list_department_groups](docs/sdks/hris/README.md#list_department_groups) - List Department Groups
* [list_employee_categories](docs/sdks/hris/README.md#list_employee_categories) - List Employee Document Categories
* [list_employee_custom_field_definitions](docs/sdks/hris/README.md#list_employee_custom_field_definitions) - List employee Custom Field Definitions
* [list_employee_documents](docs/sdks/hris/README.md#list_employee_documents) - List Employee Documents
* [list_employee_employments](docs/sdks/hris/README.md#list_employee_employments) - List Employee Employments
* [list_employee_skills](docs/sdks/hris/README.md#list_employee_skills) - List Employee Skills
* [list_employee_tasks](docs/sdks/hris/README.md#list_employee_tasks) - List Employee Tasks
* [list_employee_time_off_balances](docs/sdks/hris/README.md#list_employee_time_off_balances) - List Employee Time Off Balances
* [list_employee_time_off_policies](docs/sdks/hris/README.md#list_employee_time_off_policies) - List Assigned Time Off Policies
* [list_employee_time_off_requests](docs/sdks/hris/README.md#list_employee_time_off_requests) - List Employee Time Off Requests
* [list_employee_work_eligibility](docs/sdks/hris/README.md#list_employee_work_eligibility) - List Employee Work Eligibility
* [list_employees](docs/sdks/hris/README.md#list_employees) - List Employees
* [list_employments](docs/sdks/hris/README.md#list_employments) - List Employments
* [list_groups](docs/sdks/hris/README.md#list_groups) - List Groups
* [list_jobs](docs/sdks/hris/README.md#list_jobs) - List Jobs
* [list_locations](docs/sdks/hris/README.md#list_locations) - List Work Locations
* [list_team_groups](docs/sdks/hris/README.md#list_team_groups) - List Team Groups
* [list_time_entries](docs/sdks/hris/README.md#list_time_entries) - List Time Entries
* [list_time_off_policies](docs/sdks/hris/README.md#list_time_off_policies) - List Time Off Policies
* [list_time_off_requests](docs/sdks/hris/README.md#list_time_off_requests) - List time off requests
* [~~list_time_off_types~~](docs/sdks/hris/README.md#list_time_off_types) - List time off types :warning: **Deprecated**
* [update_employee](docs/sdks/hris/README.md#update_employee) - Updates an employee
* [update_employee_employment](docs/sdks/hris/README.md#update_employee_employment) - Update Employee Employment
* [update_employee_time_off_request](docs/sdks/hris/README.md#update_employee_time_off_request) - Update Employee Time Off Request
* [update_employee_work_eligibility_request](docs/sdks/hris/README.md#update_employee_work_eligibility_request) - Update Employee Work Eligibility Request
* [upload_employee_document](docs/sdks/hris/README.md#upload_employee_document) - Upload Employee Document

### [iam](docs/sdks/iam/README.md)

* [delete_user](docs/sdks/iam/README.md#delete_user) - Delete User
* [get_group](docs/sdks/iam/README.md#get_group) - Get Group
* [get_policy](docs/sdks/iam/README.md#get_policy) - Get Policy
* [get_role](docs/sdks/iam/README.md#get_role) - Get Role
* [get_user](docs/sdks/iam/README.md#get_user) - Get User
* [list_groups](docs/sdks/iam/README.md#list_groups) - List Groups
* [list_policies](docs/sdks/iam/README.md#list_policies) - List Policies
* [list_roles](docs/sdks/iam/README.md#list_roles) - List Roles
* [list_users](docs/sdks/iam/README.md#list_users) - List Users
* [update_user](docs/sdks/iam/README.md#update_user) - Update User

### [lms](docs/sdks/lms/README.md)

* [batch_upsert_content](docs/sdks/lms/README.md#batch_upsert_content) - Batch Upsert Content
* [batch_upsert_course](docs/sdks/lms/README.md#batch_upsert_course) - Batch Upsert Course
* [create_collection](docs/sdks/lms/README.md#create_collection) - Create Collection
* [create_user_assignment](docs/sdks/lms/README.md#create_user_assignment) - Create User Assignment
* [create_user_completion](docs/sdks/lms/README.md#create_user_completion) - Create User Completion
* [delete_user_completion](docs/sdks/lms/README.md#delete_user_completion) - Delete User Completion
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
* [update_collection](docs/sdks/lms/README.md#update_collection) - Update Collection
* [upsert_content](docs/sdks/lms/README.md#upsert_content) - Upsert Content
* [upsert_course](docs/sdks/lms/README.md#upsert_course) - Upsert Course

### [marketing](docs/sdks/marketing/README.md)

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

### [proxy](docs/sdks/proxy/README.md)

* [proxy_request](docs/sdks/proxy/README.md#proxy_request) - Proxy Request

### [request_logs](docs/sdks/requestlogs/README.md)

* [get_log](docs/sdks/requestlogs/README.md#get_log) - Get a Log
* [list_logs](docs/sdks/requestlogs/README.md#list_logs) - List Logs
* [list_step_logs](docs/sdks/requestlogs/README.md#list_step_logs) - List Step Logs


</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Retries [retries] -->
## Retries

Some of the endpoints in this SDK support retries. If you use the SDK without any configuration, it will fall back to the default retry strategy provided by the API. However, the default retry strategy can be overridden on a per-operation basis, or across the entire SDK.

To change the default retry strategy for a single API call, simply provide a `RetryConfig` object to the call:
```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.accounts.delete_account(id="<id>")

if ! res.linked_account.nil?
  # handle response
end

```

If you'd like to override the default retry strategy for all operations that support retries, you can use the `retry_config` optional parameter when initializing the SDK:
```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      retry_config: Utils::RetryConfig.new(
        backoff: Utils::BackoffStrategy.new(
          exponent: 1.1,
          initial_interval: 1,
          max_elapsed_time: 100,
          max_interval: 50
        ),
        retry_connection_errors: false,
        strategy: 'backoff'
      ),
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.accounts.delete_account(id="<id>")

if ! res.linked_account.nil?
  # handle response
end

```
<!-- End Retries [retries] -->

<!-- Start Error Handling [errors] -->
## Error Handling

Handling errors in this SDK should largely match your expectations. All operations return a response object or raise an error.

By default an API error will raise a `Errors::APIError`, which has the following properties:

| Property       | Type                                    | Description           |
|----------------|-----------------------------------------|-----------------------|
| `message`     | *string*                                 | The error message     |
| `status_code`  | *int*                                   | The HTTP status code  |
| `raw_response` | *Faraday::Response*                     | The raw HTTP response |
| `body`        | *string*                                 | The response content  |

When custom error responses are specified for an operation, the SDK may also throw their associated exception. You can refer to respective *Errors* tables in SDK docs for more details on possible exception types for each operation. For example, the `delete_account` method throws the following exceptions:

| Error Type                                  | Status Code | Content Type     |
| ------------------------------------------- | ----------- | ---------------- |
| Models::Errors::BadRequestResponse          | 400         | application/json |
| Models::Errors::UnauthorizedResponse        | 401         | application/json |
| Models::Errors::ForbiddenResponse           | 403         | application/json |
| Models::Errors::NotFoundResponse            | 404         | application/json |
| Models::Errors::RequestTimedOutResponse     | 408         | application/json |
| Models::Errors::ConflictResponse            | 409         | application/json |
| Models::Errors::UnprocessableEntityResponse | 422         | application/json |
| Models::Errors::TooManyRequestsResponse     | 429         | application/json |
| Models::Errors::InternalServerErrorResponse | 500         | application/json |
| Models::Errors::NotImplementedResponse      | 501         | application/json |
| Models::Errors::BadGatewayResponse          | 502         | application/json |
| Errors::APIError                            | 4XX, 5XX    | \*/\*            |

### Example

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

begin
    res = s.accounts.delete_account(id='<id>')

    if ! res.linked_account.nil?
      # handle response
    end
rescue Models::Errors::BadRequestResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::UnauthorizedResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::ForbiddenResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::NotFoundResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::RequestTimedOutResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::ConflictResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::UnprocessableEntityResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::TooManyRequestsResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::InternalServerErrorResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::NotImplementedResponse => e
  # handle $e->$container data
  throw $e;
rescue Models::Errors::BadGatewayResponse => e
  # handle $e->$container data
  throw $e;
rescue Errors::APIError => e
  # handle default exception
  raise e
end

```
<!-- End Error Handling [errors] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Override Server URL Per-Client

The default server can be overridden globally by passing a URL to the `server_url (String)` optional parameter when initializing the SDK client instance. For example:
```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      server_url: "https://api.stackone.com",
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.accounts.delete_account(id="<id>")

if ! res.linked_account.nil?
  # handle response
end

```
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
