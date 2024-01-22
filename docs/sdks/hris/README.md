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
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.create_employee(hris_create_employee_request_dto=Shared::HrisCreateEmployeeRequestDto.new(
    avatar=Shared::HrisCreateEmployeeRequestDtoAvatar.new(),
    avatar_url="https://example.com/avatar.png",
    birthday=DateTime.iso8601('2021-01-01T00:00:00Z'),
    citizenships=[
      Shared::CountryCodeEnum.new(
        source_value="American",
        value=Shared::CountryCodeEnumValue::US,
      ),
    ],
    company_name="Example Corp",
    custom_fields=[
      Shared::EmployeeCustomFields.new(
        description="The completion status of the employee's training.",
        id="custom_field_123",
        name="Training Completion Status",
        options=[
          "string",
        ],
        type=Shared::EmployeeCustomFieldsType.new(
          source_value="string",
          value=Shared::EmployeeCustomFieldsSchemasValue::INTEGER,
        ),
        value=Shared::EmployeeCustomFieldsValue.new(),
        value_id="value_456",
      ),
    ],
    date_of_birth=DateTime.iso8601('1990-01-01T00:00.000Z'),
    department="Physics",
    display_name="Sir Issac Newton",
    employment_contract_type=Shared::HrisCreateEmployeeRequestDtoEmploymentContractType.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoValue::PART_TIME,
    ),
    employment_status=Shared::HrisCreateEmployeeRequestDtoEmploymentStatus.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasValue::PENDING,
    ),
    employment_type=Shared::HrisCreateEmployeeRequestDtoEmploymentType.new(
      source_value="Permanent",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasEmploymentTypeValue::PERMANENT,
    ),
    employments=[
      Shared::Employment.new(
        created_at=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        effective_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        employee_id="1687-3",
        employment_contract_type=Shared::EmploymentEmploymentContractType.new(
          source_value="string",
          value=Shared::EmploymentValue::UNMAPPED_VALUE,
        ),
        employment_type=Shared::EmploymentEmploymentType.new(
          source_value="Permanent",
          value=Shared::EmploymentSchemasValue::PERMANENT,
        ),
        id="123456",
        job_title="Software Engineer",
        pay_currency="USD",
        pay_frequency=Shared::PayFrequency.new(
          source_value="Hourly",
          value=Shared::EmploymentSchemasPayFrequencyValue::HOURLY,
        ),
        pay_period=Shared::PayPeriod.new(
          source_value="Hour",
          value=Shared::EmploymentSchemasPayPeriodValue::HOUR,
        ),
        pay_rate="40.00",
        updated_at=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      ),
    ],
    ethnicity=Shared::HrisCreateEmployeeRequestDtoEthnicity.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasEthnicityValue::OTHER,
    ),
    first_name="Issac",
    gender=Shared::HrisCreateEmployeeRequestDtoGender.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasGenderValue::FEMALE,
    ),
    hire_date=DateTime.iso8601('2021-01-01T00:00.000Z'),
    home_location=Shared::HrisCreateEmployeeRequestDtoHomeLocation.new(
      city="Grantham",
      country=Shared::HrisCreateEmployeeRequestDtoCountry.new(
        source_value="American",
        value=Shared::HrisCreateEmployeeRequestDtoSchemasHomeLocationValue::US,
      ),
      name="Woolsthorpe Manor",
      phone_number="+44 1476 860 364",
      state=Shared::State.new(
        source_value="string",
        value=Shared::HrisCreateEmployeeRequestDtoSchemasHomeLocationStateValue::VN_DN,
      ),
      street_1="Water Lane",
      street_2="Woolsthorpe by Colsterworth",
      zip_code="NG33 5NR",
    ),
    job_title="Physicist",
    last_name="Newton",
    manager_id="67890",
    marital_status=Shared::HrisCreateEmployeeRequestDtoMaritalStatus.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasMaritalStatusValue::NOT_DISCLOSED,
    ),
    name="Issac Newton",
    personal_email="isaac.newton@example.com",
    personal_phone_number="+1234567890",
    start_date=DateTime.iso8601('2021-01-01T00:00.000Z'),
    tenure=2,
    termination_date=DateTime.iso8601('2021-01-01T00:00:00Z'),
    work_anniversary=DateTime.iso8601('2021-01-01T00:00:00Z'),
    work_email="newton@example.com",
    work_location=Shared::HrisCreateEmployeeRequestDtoWorkLocation.new(
      city="Grantham",
      country=Shared::HrisCreateEmployeeRequestDtoSchemasCountry.new(
        source_value="American",
        value=Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationValue::US,
      ),
      name="Woolsthorpe Manor",
      phone_number="+44 1476 860 364",
      state=Shared::HrisCreateEmployeeRequestDtoState.new(
        source_value="string",
        value=Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationStateValue::LT_SA,
      ),
      street_1="Water Lane",
      street_2="Woolsthorpe by Colsterworth",
      zip_code="NG33 5NR",
    ),
    work_phone_number="+1234567890",
  ), x_account_id="string")

if ! res.create_employee_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `hris_create_employee_request_dto`                                                          | [Shared::HrisCreateEmployeeRequestDto](../../models/shared/hriscreateemployeerequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `x_account_id`                                                                              | *String*                                                                                    | :heavy_check_mark:                                                                          | The account identifier                                                                      |


### Response

**[T.nilable(Operations::HrisCreateEmployeeResponse)](../../models/operations/hriscreateemployeeresponse.md)**


## create_employee_time_off_request

Create Employee Time Off Request

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.create_employee_time_off_request(hris_create_time_off_request_dto=Shared::HrisCreateTimeOffRequestDto.new(
    approver_id="1687-4",
    employee_id="1687-3",
    end_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    start_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    status=Shared::HrisCreateTimeOffRequestDtoStatus.new(
      source_value="string",
      value=Shared::HrisCreateTimeOffRequestDtoValue::UNMAPPED_VALUE,
    ),
    type=Shared::HrisCreateTimeOffRequestDtoType.new(
      source_value="string",
      value=Shared::HrisCreateTimeOffRequestDtoSchemasValue::VACATION,
    ),
  ), id="string", x_account_id="string")

if ! res.create_time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `hris_create_time_off_request_dto`                                                        | [Shared::HrisCreateTimeOffRequestDto](../../models/shared/hriscreatetimeoffrequestdto.md) | :heavy_check_mark:                                                                        | N/A                                                                                       |
| `id`                                                                                      | *String*                                                                                  | :heavy_check_mark:                                                                        | N/A                                                                                       |
| `x_account_id`                                                                            | *String*                                                                                  | :heavy_check_mark:                                                                        | The account identifier                                                                    |


### Response

**[T.nilable(Operations::HrisCreateEmployeeTimeOffRequestResponse)](../../models/operations/hriscreateemployeetimeoffrequestresponse.md)**


## create_time_off_request

Creates a time off request

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.create_time_off_request(hris_create_time_off_request_dto=Shared::HrisCreateTimeOffRequestDto.new(
    approver_id="1687-4",
    employee_id="1687-3",
    end_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    start_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    status=Shared::HrisCreateTimeOffRequestDtoStatus.new(
      source_value="string",
      value=Shared::HrisCreateTimeOffRequestDtoValue::UNMAPPED_VALUE,
    ),
    type=Shared::HrisCreateTimeOffRequestDtoType.new(
      source_value="string",
      value=Shared::HrisCreateTimeOffRequestDtoSchemasValue::VACATION,
    ),
  ), x_account_id="string")

if ! res.create_time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `hris_create_time_off_request_dto`                                                        | [Shared::HrisCreateTimeOffRequestDto](../../models/shared/hriscreatetimeoffrequestdto.md) | :heavy_check_mark:                                                                        | N/A                                                                                       |
| `x_account_id`                                                                            | *String*                                                                                  | :heavy_check_mark:                                                                        | The account identifier                                                                    |


### Response

**[T.nilable(Operations::HrisCreateTimeOffRequestResponse)](../../models/operations/hriscreatetimeoffrequestresponse.md)**


## get_company

Get Company

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisGetCompanyRequest.new(
  id="<ID>",
  proxy=Operations::HrisGetCompanyQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.get_company(req)

if ! res.company_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::HrisGetCompanyRequest](../../models/operations/hrisgetcompanyrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::HrisGetCompanyResponse)](../../models/operations/hrisgetcompanyresponse.md)**


## get_employee

Get Employee

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisGetEmployeeRequest.new(
  id="<ID>",
  proxy=Operations::HrisGetEmployeeQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.get_employee(req)

if ! res.employee_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::HrisGetEmployeeRequest](../../models/operations/hrisgetemployeerequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::HrisGetEmployeeResponse)](../../models/operations/hrisgetemployeeresponse.md)**


## get_employee_document

Get Employee Document

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisGetEmployeeDocumentRequest.new(
  id="<ID>",
  proxy=Operations::HrisGetEmployeeDocumentQueryParamProxy.new(),
  sub_resource_id="string",
  x_account_id="string",
)
    
res = s.hris.get_employee_document(req)

if ! res.document_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Operations::HrisGetEmployeeDocumentRequest](../../models/operations/hrisgetemployeedocumentrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(Operations::HrisGetEmployeeDocumentResponse)](../../models/operations/hrisgetemployeedocumentresponse.md)**


## get_employees_time_off_request

Get Employees Time Off Request

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisGetEmployeesTimeOffRequestRequest.new(
  id="<ID>",
  proxy=Operations::HrisGetEmployeesTimeOffRequestQueryParamProxy.new(),
  sub_resource_id="string",
  x_account_id="string",
)
    
res = s.hris.get_employees_time_off_request(req)

if ! res.time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Operations::HrisGetEmployeesTimeOffRequestRequest](../../models/operations/hrisgetemployeestimeoffrequestrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(Operations::HrisGetEmployeesTimeOffRequestResponse)](../../models/operations/hrisgetemployeestimeoffrequestresponse.md)**


## get_employment

Get Employment

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisGetEmploymentRequest.new(
  id="<ID>",
  proxy=Operations::HrisGetEmploymentQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.get_employment(req)

if ! res.employment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::HrisGetEmploymentRequest](../../models/operations/hrisgetemploymentrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::HrisGetEmploymentResponse)](../../models/operations/hrisgetemploymentresponse.md)**


## get_location

Get Location

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisGetLocationRequest.new(
  id="<ID>",
  proxy=Operations::HrisGetLocationQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.get_location(req)

if ! res.hris_location_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::HrisGetLocationRequest](../../models/operations/hrisgetlocationrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::HrisGetLocationResponse)](../../models/operations/hrisgetlocationresponse.md)**


## get_time_off_request

Get time off request

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisGetTimeOffRequestRequest.new(
  id="<ID>",
  proxy=Operations::HrisGetTimeOffRequestQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.get_time_off_request(req)

if ! res.time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Operations::HrisGetTimeOffRequestRequest](../../models/operations/hrisgettimeoffrequestrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(Operations::HrisGetTimeOffRequestResponse)](../../models/operations/hrisgettimeoffrequestresponse.md)**


## list_companies

List Companies

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisListCompaniesRequest.new(
  proxy=Operations::HrisListCompaniesQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.list_companies(req)

if ! res.companies_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::HrisListCompaniesRequest](../../models/operations/hrislistcompaniesrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::HrisListCompaniesResponse)](../../models/operations/hrislistcompaniesresponse.md)**


## list_employee_documents

List Employee Documents

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisListEmployeeDocumentsRequest.new(
  id="<ID>",
  proxy=Operations::HrisListEmployeeDocumentsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.list_employee_documents(req)

if ! res.documents_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Operations::HrisListEmployeeDocumentsRequest](../../models/operations/hrislistemployeedocumentsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(Operations::HrisListEmployeeDocumentsResponse)](../../models/operations/hrislistemployeedocumentsresponse.md)**


## list_employee_time_off_requests

List Employee Time Off Requests

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisListEmployeeTimeOffRequestsRequest.new(
  id="<ID>",
  proxy=Operations::HrisListEmployeeTimeOffRequestsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.list_employee_time_off_requests(req)

if ! res.time_off_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Operations::HrisListEmployeeTimeOffRequestsRequest](../../models/operations/hrislistemployeetimeoffrequestsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(Operations::HrisListEmployeeTimeOffRequestsResponse)](../../models/operations/hrislistemployeetimeoffrequestsresponse.md)**


## list_employees

List Employees

### Example Usage

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

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::HrisListEmployeesRequest](../../models/operations/hrislistemployeesrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::HrisListEmployeesResponse)](../../models/operations/hrislistemployeesresponse.md)**


## list_employments

List Employments

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisListEmploymentsRequest.new(
  proxy=Operations::HrisListEmploymentsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.list_employments(req)

if ! res.employments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::HrisListEmploymentsRequest](../../models/operations/hrislistemploymentsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::HrisListEmploymentsResponse)](../../models/operations/hrislistemploymentsresponse.md)**


## list_locations

List locations

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisListLocationsRequest.new(
  proxy=Operations::HrisListLocationsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.list_locations(req)

if ! res.hris_locations_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::HrisListLocationsRequest](../../models/operations/hrislistlocationsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::HrisListLocationsResponse)](../../models/operations/hrislistlocationsresponse.md)**


## list_time_off_requests

List time off requests

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisListTimeOffRequestsRequest.new(
  proxy=Operations::HrisListTimeOffRequestsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.hris.list_time_off_requests(req)

if ! res.time_off_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Operations::HrisListTimeOffRequestsRequest](../../models/operations/hrislisttimeoffrequestsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(Operations::HrisListTimeOffRequestsResponse)](../../models/operations/hrislisttimeoffrequestsresponse.md)**


## update_employee

Updates an employee

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.update_employee(hris_create_employee_request_dto=Shared::HrisCreateEmployeeRequestDto.new(
    avatar=Shared::HrisCreateEmployeeRequestDtoAvatar.new(),
    avatar_url="https://example.com/avatar.png",
    birthday=DateTime.iso8601('2021-01-01T00:00:00Z'),
    citizenships=[
      Shared::CountryCodeEnum.new(
        source_value="American",
        value=Shared::CountryCodeEnumValue::US,
      ),
    ],
    company_name="Example Corp",
    custom_fields=[
      Shared::EmployeeCustomFields.new(
        description="The completion status of the employee's training.",
        id="custom_field_123",
        name="Training Completion Status",
        options=[
          "string",
        ],
        type=Shared::EmployeeCustomFieldsType.new(
          source_value="string",
          value=Shared::EmployeeCustomFieldsSchemasValue::FLOAT,
        ),
        value=Shared::EmployeeCustomFieldsValue.new(),
        value_id="value_456",
      ),
    ],
    date_of_birth=DateTime.iso8601('1990-01-01T00:00.000Z'),
    department="Physics",
    display_name="Sir Issac Newton",
    employment_contract_type=Shared::HrisCreateEmployeeRequestDtoEmploymentContractType.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoValue::PART_TIME,
    ),
    employment_status=Shared::HrisCreateEmployeeRequestDtoEmploymentStatus.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasValue::LEAVE,
    ),
    employment_type=Shared::HrisCreateEmployeeRequestDtoEmploymentType.new(
      source_value="Permanent",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasEmploymentTypeValue::PERMANENT,
    ),
    employments=[
      Shared::Employment.new(
        created_at=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        effective_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        employee_id="1687-3",
        employment_contract_type=Shared::EmploymentEmploymentContractType.new(
          source_value="string",
          value=Shared::EmploymentValue::UNMAPPED_VALUE,
        ),
        employment_type=Shared::EmploymentEmploymentType.new(
          source_value="Permanent",
          value=Shared::EmploymentSchemasValue::PERMANENT,
        ),
        id="123456",
        job_title="Software Engineer",
        pay_currency="USD",
        pay_frequency=Shared::PayFrequency.new(
          source_value="Hourly",
          value=Shared::EmploymentSchemasPayFrequencyValue::HOURLY,
        ),
        pay_period=Shared::PayPeriod.new(
          source_value="Hour",
          value=Shared::EmploymentSchemasPayPeriodValue::HOUR,
        ),
        pay_rate="40.00",
        updated_at=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      ),
    ],
    ethnicity=Shared::HrisCreateEmployeeRequestDtoEthnicity.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasEthnicityValue::BLACK_OR_AFRICAN_AMERICAN,
    ),
    first_name="Issac",
    gender=Shared::HrisCreateEmployeeRequestDtoGender.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasGenderValue::MALE,
    ),
    hire_date=DateTime.iso8601('2021-01-01T00:00.000Z'),
    home_location=Shared::HrisCreateEmployeeRequestDtoHomeLocation.new(
      city="Grantham",
      country=Shared::HrisCreateEmployeeRequestDtoCountry.new(
        source_value="American",
        value=Shared::HrisCreateEmployeeRequestDtoSchemasHomeLocationValue::US,
      ),
      name="Woolsthorpe Manor",
      phone_number="+44 1476 860 364",
      state=Shared::State.new(
        source_value="string",
        value=Shared::HrisCreateEmployeeRequestDtoSchemasHomeLocationStateValue::CC_XX_1,
      ),
      street_1="Water Lane",
      street_2="Woolsthorpe by Colsterworth",
      zip_code="NG33 5NR",
    ),
    job_title="Physicist",
    last_name="Newton",
    manager_id="67890",
    marital_status=Shared::HrisCreateEmployeeRequestDtoMaritalStatus.new(
      source_value="string",
      value=Shared::HrisCreateEmployeeRequestDtoSchemasMaritalStatusValue::SEPARATED,
    ),
    name="Issac Newton",
    personal_email="isaac.newton@example.com",
    personal_phone_number="+1234567890",
    start_date=DateTime.iso8601('2021-01-01T00:00.000Z'),
    tenure=2,
    termination_date=DateTime.iso8601('2021-01-01T00:00:00Z'),
    work_anniversary=DateTime.iso8601('2021-01-01T00:00:00Z'),
    work_email="newton@example.com",
    work_location=Shared::HrisCreateEmployeeRequestDtoWorkLocation.new(
      city="Grantham",
      country=Shared::HrisCreateEmployeeRequestDtoSchemasCountry.new(
        source_value="American",
        value=Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationValue::US,
      ),
      name="Woolsthorpe Manor",
      phone_number="+44 1476 860 364",
      state=Shared::HrisCreateEmployeeRequestDtoState.new(
        source_value="string",
        value=Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationStateValue::PY_12,
      ),
      street_1="Water Lane",
      street_2="Woolsthorpe by Colsterworth",
      zip_code="NG33 5NR",
    ),
    work_phone_number="+1234567890",
  ), id="string", x_account_id="string")

if ! res.create_employee_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `hris_create_employee_request_dto`                                                          | [Shared::HrisCreateEmployeeRequestDto](../../models/shared/hriscreateemployeerequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `id`                                                                                        | *String*                                                                                    | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `x_account_id`                                                                              | *String*                                                                                    | :heavy_check_mark:                                                                          | The account identifier                                                                      |


### Response

**[T.nilable(Operations::HrisUpdateEmployeeResponse)](../../models/operations/hrisupdateemployeeresponse.md)**


## update_time_off_request

Update time off request

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.hris.update_time_off_request(hris_create_time_off_request_dto=Shared::HrisCreateTimeOffRequestDto.new(
    approver_id="1687-4",
    employee_id="1687-3",
    end_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    start_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    status=Shared::HrisCreateTimeOffRequestDtoStatus.new(
      source_value="string",
      value=Shared::HrisCreateTimeOffRequestDtoValue::APPROVED,
    ),
    type=Shared::HrisCreateTimeOffRequestDtoType.new(
      source_value="string",
      value=Shared::HrisCreateTimeOffRequestDtoSchemasValue::VACATION,
    ),
  ), id="string", x_account_id="string")

if ! res.create_time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `hris_create_time_off_request_dto`                                                        | [Shared::HrisCreateTimeOffRequestDto](../../models/shared/hriscreatetimeoffrequestdto.md) | :heavy_check_mark:                                                                        | N/A                                                                                       |
| `id`                                                                                      | *String*                                                                                  | :heavy_check_mark:                                                                        | N/A                                                                                       |
| `x_account_id`                                                                            | *String*                                                                                  | :heavy_check_mark:                                                                        | The account identifier                                                                    |


### Response

**[T.nilable(Operations::HrisUpdateTimeOffRequestResponse)](../../models/operations/hrisupdatetimeoffrequestresponse.md)**

