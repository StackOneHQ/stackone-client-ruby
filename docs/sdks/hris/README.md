# Hris


### Available Operations

* [create_employee](#create_employee) - Creates an employee
* [create_employee_time_off_request](#create_employee_time_off_request) - Create Employee Time Off Request
* [create_time_off_request](#create_time_off_request) - Creates a time off request
* [get_company](#get_company) - Get Company
* [get_employee](#get_employee) - Get Employee
* [get_employee_document](#get_employee_document) - Get Employee Document
* [get_employees_time_off_request](#get_employees_time_off_request) - Get Employees Time Off Request
* [get_employment](#get_employment) - Get Employment
* [get_location](#get_location) - Get Location
* [get_time_off_request](#get_time_off_request) - Get time off request
* [list_companies](#list_companies) - List Companies
* [list_employee_documents](#list_employee_documents) - List Employee Documents
* [list_employee_time_off_requests](#list_employee_time_off_requests) - List Employee Time Off Requests
* [list_employees](#list_employees) - List Employees
* [list_employments](#list_employments) - List Employments
* [list_locations](#list_locations) - List locations
* [list_time_off_requests](#list_time_off_requests) - List time off requests
* [update_employee](#update_employee) - Updates an employee
* [update_time_off_request](#update_time_off_request) - Update time off request

## create_employee

Creates an employee

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.create_employee(hris_create_employee_request_dto=::StackOne::Shared::HrisCreateEmployeeRequestDto.new(
    avatar: ::StackOne::Shared::HrisCreateEmployeeRequestDtoAvatar.new(),
    avatar_url: "https://example.com/avatar.png",
    birthday: DateTime.iso8601('2021-01-01T00:00:00Z'),
    citizenships: [
      ::StackOne::Shared::CountryCodeEnum.new(
        source_value: "string",
        value: ::StackOne::Shared::Value::US,
      ),
    ],
    company_name: "Example Corp",
    custom_fields: [
      ::StackOne::Shared::EmployeeCustomFields.new(
        description: "The completion status of the employee's training.",
        id: "custom_field_123",
        name: "Training Completion Status",
        options: [
          "string",
        ],
        type: ::StackOne::Shared::EmployeeCustomFieldsType.new(
          source_value: "string",
        ),
        value: ::StackOne::Shared::EmployeeCustomFieldsValue.new(),
        value_id: "value_456",
      ),
    ],
    date_of_birth: DateTime.iso8601('1990-01-01T00:00.000Z'),
    department: "Physics",
    display_name: "Sir Issac Newton",
    employment_contract_type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentContractType.new(
      source_value: "string",
    ),
    employment_status: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentStatus.new(
      source_value: "string",
    ),
    employment_type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentType.new(
      source_value: "string",
    ),
    employments: [
      ::StackOne::Shared::Employment.new(
        created_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        effective_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        employee_id: "1687-3",
        employment_contract_type: ::StackOne::Shared::EmploymentEmploymentContractType.new(
          source_value: "string",
        ),
        employment_type: ::StackOne::Shared::EmploymentEmploymentType.new(
          source_value: "string",
        ),
        id: "123456",
        job_title: "Software Engineer",
        pay_currency: "USD",
        pay_frequency: ::StackOne::Shared::PayFrequency.new(
          source_value: "string",
        ),
        pay_period: ::StackOne::Shared::PayPeriod.new(
          source_value: "string",
        ),
        pay_rate: "40.00",
        updated_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      ),
    ],
    ethnicity: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEthnicity.new(
      source_value: "string",
    ),
    first_name: "Issac",
    gender: ::StackOne::Shared::HrisCreateEmployeeRequestDtoGender.new(
      source_value: "string",
    ),
    hire_date: DateTime.iso8601('2021-01-01T00:00.000Z'),
    home_location: ::StackOne::Shared::HrisCreateEmployeeRequestDtoHomeLocation.new(
      city: "Grantham",
      country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoCountry.new(
        source_value: "string",
        value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasHomeLocationValue::US,
      ),
      name: "Woolsthorpe Manor",
      phone_number: "+44 1476 860 364",
      state: ::StackOne::Shared::State.new(
        source_value: "string",
      ),
      street_1: "Water Lane",
      street_2: "Woolsthorpe by Colsterworth",
      zip_code: "NG33 5NR",
    ),
    job_title: "Physicist",
    last_name: "Newton",
    manager_id: "67890",
    marital_status: ::StackOne::Shared::HrisCreateEmployeeRequestDtoMaritalStatus.new(
      source_value: "string",
    ),
    name: "Issac Newton",
    personal_email: "isaac.newton@example.com",
    personal_phone_number: "+1234567890",
    start_date: DateTime.iso8601('2021-01-01T00:00.000Z'),
    tenure: 2.0,
    termination_date: DateTime.iso8601('2021-01-01T00:00:00Z'),
    work_anniversary: DateTime.iso8601('2021-01-01T00:00:00Z'),
    work_email: "newton@example.com",
    work_location: ::StackOne::Shared::HrisCreateEmployeeRequestDtoWorkLocation.new(
      city: "Grantham",
      country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasCountry.new(
        source_value: "string",
        value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationValue::US,
      ),
      name: "Woolsthorpe Manor",
      phone_number: "+44 1476 860 364",
      state: ::StackOne::Shared::HrisCreateEmployeeRequestDtoState.new(
        source_value: "string",
      ),
      street_1: "Water Lane",
      street_2: "Woolsthorpe by Colsterworth",
      zip_code: "NG33 5NR",
    ),
    work_phone_number: "+1234567890",
  ), x_account_id="string")

if ! res.create_employee_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `hris_create_employee_request_dto`                                                                      | [::StackOne::Shared::HrisCreateEmployeeRequestDto](../../models/shared/hriscreateemployeerequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |


### Response

**[T.nilable(::StackOne::Operations::HrisCreateEmployeeResponse)](../../models/operations/hriscreateemployeeresponse.md)**


## create_employee_time_off_request

Create Employee Time Off Request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.create_employee_time_off_request(hris_create_time_off_request_dto=::StackOne::Shared::HrisCreateTimeOffRequestDto.new(
    approver_id: "1687-4",
    employee_id: "1687-3",
    end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    status: ::StackOne::Shared::Status.new(
      source_value: "string",
    ),
    type: ::StackOne::Shared::HrisCreateTimeOffRequestDtoType.new(
      source_value: "string",
    ),
  ), id="string", x_account_id="string")

if ! res.create_time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `hris_create_time_off_request_dto`                                                                    | [::StackOne::Shared::HrisCreateTimeOffRequestDto](../../models/shared/hriscreatetimeoffrequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `id`                                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The account identifier                                                                                |


### Response

**[T.nilable(::StackOne::Operations::HrisCreateEmployeeTimeOffRequestResponse)](../../models/operations/hriscreateemployeetimeoffrequestresponse.md)**


## create_time_off_request

Creates a time off request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.create_time_off_request(hris_create_time_off_request_dto=::StackOne::Shared::HrisCreateTimeOffRequestDto.new(
    approver_id: "1687-4",
    employee_id: "1687-3",
    end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    status: ::StackOne::Shared::Status.new(
      source_value: "string",
    ),
    type: ::StackOne::Shared::HrisCreateTimeOffRequestDtoType.new(
      source_value: "string",
    ),
  ), x_account_id="string")

if ! res.create_time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `hris_create_time_off_request_dto`                                                                    | [::StackOne::Shared::HrisCreateTimeOffRequestDto](../../models/shared/hriscreatetimeoffrequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The account identifier                                                                                |


### Response

**[T.nilable(::StackOne::Operations::HrisCreateTimeOffRequestResponse)](../../models/operations/hriscreatetimeoffrequestresponse.md)**


## get_company

Get Company

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisGetCompanyRequest.new(
  id: "<ID>",
  proxy: ::StackOne::Operations::Proxy.new(),
  x_account_id: "string",
)
    
res = s.hris.get_company(req)

if ! res.company_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::StackOne::Operations::HrisGetCompanyRequest](../../models/operations/hrisgetcompanyrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::StackOne::Operations::HrisGetCompanyResponse)](../../models/operations/hrisgetcompanyresponse.md)**


## get_employee

Get Employee

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisGetEmployeeRequest.new(
  id: "<ID>",
  proxy: ::StackOne::Operations::QueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.get_employee(req)

if ! res.employee_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::StackOne::Operations::HrisGetEmployeeRequest](../../models/operations/hrisgetemployeerequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(::StackOne::Operations::HrisGetEmployeeResponse)](../../models/operations/hrisgetemployeeresponse.md)**


## get_employee_document

Get Employee Document

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisGetEmployeeDocumentRequest.new(
  id: "<ID>",
  proxy: ::StackOne::Operations::HrisGetEmployeeDocumentQueryParamProxy.new(),
  sub_resource_id: "string",
  x_account_id: "string",
)
    
res = s.hris.get_employee_document(req)

if ! res.document_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::StackOne::Operations::HrisGetEmployeeDocumentRequest](../../models/operations/hrisgetemployeedocumentrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |


### Response

**[T.nilable(::StackOne::Operations::HrisGetEmployeeDocumentResponse)](../../models/operations/hrisgetemployeedocumentresponse.md)**


## get_employees_time_off_request

Get Employees Time Off Request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisGetEmployeesTimeOffRequestRequest.new(
  id: "<ID>",
  proxy: ::StackOne::Operations::HrisGetEmployeesTimeOffRequestQueryParamProxy.new(),
  sub_resource_id: "string",
  x_account_id: "string",
)
    
res = s.hris.get_employees_time_off_request(req)

if ! res.time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [::StackOne::Operations::HrisGetEmployeesTimeOffRequestRequest](../../models/operations/hrisgetemployeestimeoffrequestrequest.md) | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |


### Response

**[T.nilable(::StackOne::Operations::HrisGetEmployeesTimeOffRequestResponse)](../../models/operations/hrisgetemployeestimeoffrequestresponse.md)**


## get_employment

Get Employment

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisGetEmploymentRequest.new(
  id: "<ID>",
  proxy: ::StackOne::Operations::HrisGetEmploymentQueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.get_employment(req)

if ! res.employment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::StackOne::Operations::HrisGetEmploymentRequest](../../models/operations/hrisgetemploymentrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::StackOne::Operations::HrisGetEmploymentResponse)](../../models/operations/hrisgetemploymentresponse.md)**


## get_location

Get Location

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisGetLocationRequest.new(
  id: "<ID>",
  proxy: ::StackOne::Operations::HrisGetLocationQueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.get_location(req)

if ! res.hris_location_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::StackOne::Operations::HrisGetLocationRequest](../../models/operations/hrisgetlocationrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(::StackOne::Operations::HrisGetLocationResponse)](../../models/operations/hrisgetlocationresponse.md)**


## get_time_off_request

Get time off request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisGetTimeOffRequestRequest.new(
  id: "<ID>",
  proxy: ::StackOne::Operations::HrisGetTimeOffRequestQueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.get_time_off_request(req)

if ! res.time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::StackOne::Operations::HrisGetTimeOffRequestRequest](../../models/operations/hrisgettimeoffrequestrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |


### Response

**[T.nilable(::StackOne::Operations::HrisGetTimeOffRequestResponse)](../../models/operations/hrisgettimeoffrequestresponse.md)**


## list_companies

List Companies

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisListCompaniesRequest.new(
  proxy: ::StackOne::Operations::HrisListCompaniesQueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.list_companies(req)

if ! res.companies_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::StackOne::Operations::HrisListCompaniesRequest](../../models/operations/hrislistcompaniesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::StackOne::Operations::HrisListCompaniesResponse)](../../models/operations/hrislistcompaniesresponse.md)**


## list_employee_documents

List Employee Documents

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisListEmployeeDocumentsRequest.new(
  id: "<ID>",
  proxy: ::StackOne::Operations::HrisListEmployeeDocumentsQueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.list_employee_documents(req)

if ! res.documents_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::StackOne::Operations::HrisListEmployeeDocumentsRequest](../../models/operations/hrislistemployeedocumentsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(::StackOne::Operations::HrisListEmployeeDocumentsResponse)](../../models/operations/hrislistemployeedocumentsresponse.md)**


## list_employee_time_off_requests

List Employee Time Off Requests

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisListEmployeeTimeOffRequestsRequest.new(
  id: "<ID>",
  proxy: ::StackOne::Operations::HrisListEmployeeTimeOffRequestsQueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.list_employee_time_off_requests(req)

if ! res.time_off_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [::StackOne::Operations::HrisListEmployeeTimeOffRequestsRequest](../../models/operations/hrislistemployeetimeoffrequestsrequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |


### Response

**[T.nilable(::StackOne::Operations::HrisListEmployeeTimeOffRequestsResponse)](../../models/operations/hrislistemployeetimeoffrequestsresponse.md)**


## list_employees

List Employees

### Example Usage

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

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::StackOne::Operations::HrisListEmployeesRequest](../../models/operations/hrislistemployeesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::StackOne::Operations::HrisListEmployeesResponse)](../../models/operations/hrislistemployeesresponse.md)**


## list_employments

List Employments

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisListEmploymentsRequest.new(
  proxy: ::StackOne::Operations::HrisListEmploymentsQueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.list_employments(req)

if ! res.employments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::StackOne::Operations::HrisListEmploymentsRequest](../../models/operations/hrislistemploymentsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::StackOne::Operations::HrisListEmploymentsResponse)](../../models/operations/hrislistemploymentsresponse.md)**


## list_locations

List locations

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisListLocationsRequest.new(
  proxy: ::StackOne::Operations::HrisListLocationsQueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.list_locations(req)

if ! res.hris_locations_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::StackOne::Operations::HrisListLocationsRequest](../../models/operations/hrislistlocationsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::StackOne::Operations::HrisListLocationsResponse)](../../models/operations/hrislistlocationsresponse.md)**


## list_time_off_requests

List time off requests

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::HrisListTimeOffRequestsRequest.new(
  proxy: ::StackOne::Operations::HrisListTimeOffRequestsQueryParamProxy.new(),
  x_account_id: "string",
)
    
res = s.hris.list_time_off_requests(req)

if ! res.time_off_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::StackOne::Operations::HrisListTimeOffRequestsRequest](../../models/operations/hrislisttimeoffrequestsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |


### Response

**[T.nilable(::StackOne::Operations::HrisListTimeOffRequestsResponse)](../../models/operations/hrislisttimeoffrequestsresponse.md)**


## update_employee

Updates an employee

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.update_employee(hris_create_employee_request_dto=::StackOne::Shared::HrisCreateEmployeeRequestDto.new(
    avatar: ::StackOne::Shared::HrisCreateEmployeeRequestDtoAvatar.new(),
    avatar_url: "https://example.com/avatar.png",
    birthday: DateTime.iso8601('2021-01-01T00:00:00Z'),
    citizenships: [
      ::StackOne::Shared::CountryCodeEnum.new(
        source_value: "string",
        value: ::StackOne::Shared::Value::US,
      ),
    ],
    company_name: "Example Corp",
    custom_fields: [
      ::StackOne::Shared::EmployeeCustomFields.new(
        description: "The completion status of the employee's training.",
        id: "custom_field_123",
        name: "Training Completion Status",
        options: [
          "string",
        ],
        type: ::StackOne::Shared::EmployeeCustomFieldsType.new(
          source_value: "string",
        ),
        value: ::StackOne::Shared::EmployeeCustomFieldsValue.new(),
        value_id: "value_456",
      ),
    ],
    date_of_birth: DateTime.iso8601('1990-01-01T00:00.000Z'),
    department: "Physics",
    display_name: "Sir Issac Newton",
    employment_contract_type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentContractType.new(
      source_value: "string",
    ),
    employment_status: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentStatus.new(
      source_value: "string",
    ),
    employment_type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentType.new(
      source_value: "string",
    ),
    employments: [
      ::StackOne::Shared::Employment.new(
        created_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        effective_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        employee_id: "1687-3",
        employment_contract_type: ::StackOne::Shared::EmploymentEmploymentContractType.new(
          source_value: "string",
        ),
        employment_type: ::StackOne::Shared::EmploymentEmploymentType.new(
          source_value: "string",
        ),
        id: "123456",
        job_title: "Software Engineer",
        pay_currency: "USD",
        pay_frequency: ::StackOne::Shared::PayFrequency.new(
          source_value: "string",
        ),
        pay_period: ::StackOne::Shared::PayPeriod.new(
          source_value: "string",
        ),
        pay_rate: "40.00",
        updated_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      ),
    ],
    ethnicity: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEthnicity.new(
      source_value: "string",
    ),
    first_name: "Issac",
    gender: ::StackOne::Shared::HrisCreateEmployeeRequestDtoGender.new(
      source_value: "string",
    ),
    hire_date: DateTime.iso8601('2021-01-01T00:00.000Z'),
    home_location: ::StackOne::Shared::HrisCreateEmployeeRequestDtoHomeLocation.new(
      city: "Grantham",
      country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoCountry.new(
        source_value: "string",
        value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasHomeLocationValue::US,
      ),
      name: "Woolsthorpe Manor",
      phone_number: "+44 1476 860 364",
      state: ::StackOne::Shared::State.new(
        source_value: "string",
      ),
      street_1: "Water Lane",
      street_2: "Woolsthorpe by Colsterworth",
      zip_code: "NG33 5NR",
    ),
    job_title: "Physicist",
    last_name: "Newton",
    manager_id: "67890",
    marital_status: ::StackOne::Shared::HrisCreateEmployeeRequestDtoMaritalStatus.new(
      source_value: "string",
    ),
    name: "Issac Newton",
    personal_email: "isaac.newton@example.com",
    personal_phone_number: "+1234567890",
    start_date: DateTime.iso8601('2021-01-01T00:00.000Z'),
    tenure: 2.0,
    termination_date: DateTime.iso8601('2021-01-01T00:00:00Z'),
    work_anniversary: DateTime.iso8601('2021-01-01T00:00:00Z'),
    work_email: "newton@example.com",
    work_location: ::StackOne::Shared::HrisCreateEmployeeRequestDtoWorkLocation.new(
      city: "Grantham",
      country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasCountry.new(
        source_value: "string",
        value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationValue::US,
      ),
      name: "Woolsthorpe Manor",
      phone_number: "+44 1476 860 364",
      state: ::StackOne::Shared::HrisCreateEmployeeRequestDtoState.new(
        source_value: "string",
      ),
      street_1: "Water Lane",
      street_2: "Woolsthorpe by Colsterworth",
      zip_code: "NG33 5NR",
    ),
    work_phone_number: "+1234567890",
  ), id="string", x_account_id="string")

if ! res.create_employee_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `hris_create_employee_request_dto`                                                                      | [::StackOne::Shared::HrisCreateEmployeeRequestDto](../../models/shared/hriscreateemployeerequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `id`                                                                                                    | *::String*                                                                                              | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |


### Response

**[T.nilable(::StackOne::Operations::HrisUpdateEmployeeResponse)](../../models/operations/hrisupdateemployeeresponse.md)**


## update_time_off_request

Update time off request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.update_time_off_request(hris_create_time_off_request_dto=::StackOne::Shared::HrisCreateTimeOffRequestDto.new(
    approver_id: "1687-4",
    employee_id: "1687-3",
    end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    status: ::StackOne::Shared::Status.new(
      source_value: "string",
    ),
    type: ::StackOne::Shared::HrisCreateTimeOffRequestDtoType.new(
      source_value: "string",
    ),
  ), id="string", x_account_id="string")

if ! res.create_time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `hris_create_time_off_request_dto`                                                                    | [::StackOne::Shared::HrisCreateTimeOffRequestDto](../../models/shared/hriscreatetimeoffrequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `id`                                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The account identifier                                                                                |


### Response

**[T.nilable(::StackOne::Operations::HrisUpdateTimeOffRequestResponse)](../../models/operations/hrisupdatetimeoffrequestresponse.md)**

