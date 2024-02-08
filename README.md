# stackone_client

<div align="left">
    <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>

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
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisListEmployeesRequest.new(
  proxy: ::StackOne::Operations::HrisListEmployeesQueryParamProxy.new(),
  x_account_id: "string",
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
