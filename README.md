# stackone_client

<div align="left">
    <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>


## 🏗 **Welcome to your new SDK!** 🏗

It has been generated successfully based on your OpenAPI spec. However, it is not yet ready for production use. Here are some next steps:
- [ ] 🛠 Make your SDK feel handcrafted by [customizing it](https://www.speakeasyapi.dev/docs/customize-sdks)
- [ ] ♻️ Refine your SDK quickly by iterating locally with the [Speakeasy CLI](https://github.com/speakeasy-api/speakeasy)
- [ ] 🎁 Publish your SDK to package managers by [configuring automatic publishing](https://www.speakeasyapi.dev/docs/productionize-sdks/publish-sdks)
- [ ] ✨ When ready to productionize, delete this section from the README

<!-- Start SDK Installation [installation] -->
## SDK Installation

```bash
gem install stackone_client
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### List Employees

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisListEmployeesRequest.new(
  proxy=Operations::HrisListEmployeesQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.list_employees(req)

if ! res.employees_paginated.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

### [Accounts](docs/sdks/accounts/README.md)

* [delete_account](docs/sdks/accounts/README.md#delete_account) - Delete Account
* [get_account](docs/sdks/accounts/README.md#get_account) - Get Account
* [get_account_meta_info](docs/sdks/accounts/README.md#get_account_meta_info) - Get meta information of the account
* [list_linked_accounts](docs/sdks/accounts/README.md#list_linked_accounts) - List Accounts
* [update_account](docs/sdks/accounts/README.md#update_account) - Update Account

### [ConnectSessions](docs/sdks/connectsessions/README.md)

* [authenticate_connect_session](docs/sdks/connectsessions/README.md#authenticate_connect_session) - Authenticate Connect Session
* [create_connect_session](docs/sdks/connectsessions/README.md#create_connect_session) - Create Connect Session

### [Connectors](docs/sdks/connectors/README.md)

* [get_connector_meta](docs/sdks/connectors/README.md#get_connector_meta) - Get Connector Meta information for the given provider key
* [list_connectors_meta](docs/sdks/connectors/README.md#list_connectors_meta) - List Connectors Meta Information for all providers

### [Ats](docs/sdks/ats/README.md)

* [create_application](docs/sdks/ats/README.md#create_application) - Create Application
* [create_candidate](docs/sdks/ats/README.md#create_candidate) - Create Candidate (early access)
* [create_candidate_note](docs/sdks/ats/README.md#create_candidate_note) - Create Candidate Note
* [create_offer](docs/sdks/ats/README.md#create_offer) - Creates an offer
* [get_application](docs/sdks/ats/README.md#get_application) - Get Application
* [get_application_offer](docs/sdks/ats/README.md#get_application_offer) - Get Application Offer
* [get_application_scorecard](docs/sdks/ats/README.md#get_application_scorecard) - Get Application Scorecard
* [get_candidate](docs/sdks/ats/README.md#get_candidate) - Get Candidate
* [get_candidate_note](docs/sdks/ats/README.md#get_candidate_note) - Get Candidate Note
* [get_department](docs/sdks/ats/README.md#get_department) - Get Department
* [get_interview](docs/sdks/ats/README.md#get_interview) - Get Interview
* [get_interview_stage](docs/sdks/ats/README.md#get_interview_stage) - Get Interview Stage
* [get_job](docs/sdks/ats/README.md#get_job) - Get Job
* [get_job_posting](docs/sdks/ats/README.md#get_job_posting) - Get Job Posting
* [get_location](docs/sdks/ats/README.md#get_location) - Get Location
* [get_offer](docs/sdks/ats/README.md#get_offer) - Get Offer
* [get_rejected_reason](docs/sdks/ats/README.md#get_rejected_reason) - Get Rejected Reason
* [get_user](docs/sdks/ats/README.md#get_user) - Get User
* [list_application_scorecards](docs/sdks/ats/README.md#list_application_scorecards) - List Application Scorecards
* [list_applications](docs/sdks/ats/README.md#list_applications) - List Applications
* [list_applications_offers](docs/sdks/ats/README.md#list_applications_offers) - List Application Offers
* [list_candidate_notes](docs/sdks/ats/README.md#list_candidate_notes) - List Candidate Notes
* [list_candidates](docs/sdks/ats/README.md#list_candidates) - List Candidates
* [list_departments](docs/sdks/ats/README.md#list_departments) - List Departments
* [list_interview_stages](docs/sdks/ats/README.md#list_interview_stages) - List Interview Stages
* [list_interviews](docs/sdks/ats/README.md#list_interviews) - List Interviews
* [list_job_postings](docs/sdks/ats/README.md#list_job_postings) - List Job Postings
* [list_jobs](docs/sdks/ats/README.md#list_jobs) - List Jobs
* [list_locations](docs/sdks/ats/README.md#list_locations) - List locations
* [list_offers](docs/sdks/ats/README.md#list_offers) - List Offers
* [list_rejected_reasons](docs/sdks/ats/README.md#list_rejected_reasons) - List Rejected Reasons
* [list_users](docs/sdks/ats/README.md#list_users) - List Users
* [update_application](docs/sdks/ats/README.md#update_application) - Update Application
* [update_candidate](docs/sdks/ats/README.md#update_candidate) - Update Candidate (early access)

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

* [create_employee](docs/sdks/hris/README.md#create_employee) - Creates an employee
* [create_employee_time_off_request](docs/sdks/hris/README.md#create_employee_time_off_request) - Create Employee Time Off Request
* [create_time_off_request](docs/sdks/hris/README.md#create_time_off_request) - Creates a time off request
* [get_company](docs/sdks/hris/README.md#get_company) - Get Company
* [get_employee](docs/sdks/hris/README.md#get_employee) - Get Employee
* [get_employee_document](docs/sdks/hris/README.md#get_employee_document) - Get Employee Document
* [get_employees_time_off_request](docs/sdks/hris/README.md#get_employees_time_off_request) - Get Employees Time Off Request
* [get_employment](docs/sdks/hris/README.md#get_employment) - Get Employment
* [get_location](docs/sdks/hris/README.md#get_location) - Get Location
* [get_time_off_request](docs/sdks/hris/README.md#get_time_off_request) - Get time off request
* [list_companies](docs/sdks/hris/README.md#list_companies) - List Companies
* [list_employee_documents](docs/sdks/hris/README.md#list_employee_documents) - List Employee Documents
* [list_employee_time_off_requests](docs/sdks/hris/README.md#list_employee_time_off_requests) - List Employee Time Off Requests
* [list_employees](docs/sdks/hris/README.md#list_employees) - List Employees
* [list_employments](docs/sdks/hris/README.md#list_employments) - List Employments
* [list_locations](docs/sdks/hris/README.md#list_locations) - List locations
* [list_time_off_requests](docs/sdks/hris/README.md#list_time_off_requests) - List time off requests
* [update_employee](docs/sdks/hris/README.md#update_employee) - Updates an employee
* [update_time_off_request](docs/sdks/hris/README.md#update_time_off_request) - Update time off request

### [Marketing](docs/sdks/marketing/README.md)

* [create_email_template](docs/sdks/marketing/README.md#create_email_template) - Create email template
* [create_omni_channel_template](docs/sdks/marketing/README.md#create_omni_channel_template) - Create omni-channel template
* [create_push_template](docs/sdks/marketing/README.md#create_push_template) - Create push template
* [get_campaign](docs/sdks/marketing/README.md#get_campaign) - Get campaign
* [get_email_template](docs/sdks/marketing/README.md#get_email_template) - Get email template
* [get_omni_channel_template](docs/sdks/marketing/README.md#get_omni_channel_template) - Get omni-channel template
* [get_push_template](docs/sdks/marketing/README.md#get_push_template) - Get push template
* [list_campaigns](docs/sdks/marketing/README.md#list_campaigns) - List campaigns
* [list_email_templates](docs/sdks/marketing/README.md#list_email_templates) - List email templates
* [list_omni_channel_templates](docs/sdks/marketing/README.md#list_omni_channel_templates) - List omni-channel templates
* [list_push_templates](docs/sdks/marketing/README.md#list_push_templates) - List push templates
* [update_email_template](docs/sdks/marketing/README.md#update_email_template) - Update email template
* [update_omni_channel_template](docs/sdks/marketing/README.md#update_omni_channel_template) - Update omni-channel template
* [update_push_template](docs/sdks/marketing/README.md#update_push_template) - Update push template

### [Proxy](docs/sdks/proxy/README.md)

* [proxy_request](docs/sdks/proxy/README.md#proxy_request) - Proxy Request
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
