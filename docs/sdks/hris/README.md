# Hris
(*hris*)

## Overview

### Available Operations

* [batch_upload_employee_document](#batch_upload_employee_document) - Batch Upload Employee Document
* [create_employee](#create_employee) - Creates an employee
* [create_employee_employment](#create_employee_employment) - Create Employee Employment
* [create_employee_time_off_request](#create_employee_time_off_request) - Create Employee Time Off Request
* [create_employee_work_eligibility_request](#create_employee_work_eligibility_request) - Create Employee Work Eligibility Request
* [create_time_off_request](#create_time_off_request) - Creates a time off request
* [download_employee_document](#download_employee_document) - Download Employee Document
* [get_benefit](#get_benefit) - Get Benefit
* [get_company](#get_company) - Get Company
* [get_cost_center_group](#get_cost_center_group) - Get Cost Center Group
* [get_department_group](#get_department_group) - Get Department Group
* [get_employee](#get_employee) - Get Employee
* [get_employee_custom_field_definition](#get_employee_custom_field_definition) - Get employee Custom Field Definition
* [get_employee_document](#get_employee_document) - Get Employee Document
* [get_employee_document_category](#get_employee_document_category) - Get Employee Document Category
* [get_employee_employment](#get_employee_employment) - Get Employee Employment
* [get_employees_time_off_request](#get_employees_time_off_request) - Get Employees Time Off Request
* [get_employees_work_eligibility](#get_employees_work_eligibility) - Get Employees Work Eligibility
* [get_employment](#get_employment) - Get Employment
* [get_group](#get_group) - Get Group
* [get_job](#get_job) - Get Job
* [get_location](#get_location) - Get Location
* [get_time_off_request](#get_time_off_request) - Get time off request
* [get_time_off_type](#get_time_off_type) - Get time off type
* [list_benefits](#list_benefits) - List benefits
* [list_companies](#list_companies) - List Companies
* [list_cost_center_groups](#list_cost_center_groups) - List Cost Center Groups
* [list_department_groups](#list_department_groups) - List Department Groups
* [list_employee_categories](#list_employee_categories) - List Employee Document Categories
* [list_employee_custom_field_definitions](#list_employee_custom_field_definitions) - List employee Custom Field Definitions
* [list_employee_documents](#list_employee_documents) - List Employee Documents
* [list_employee_employments](#list_employee_employments) - List Employee Employments
* [list_employee_time_off_requests](#list_employee_time_off_requests) - List Employee Time Off Requests
* [list_employee_work_eligibility](#list_employee_work_eligibility) - List Employee Work Eligibility
* [list_employees](#list_employees) - List Employees
* [list_employments](#list_employments) - List Employments
* [list_groups](#list_groups) - List Groups
* [list_jobs](#list_jobs) - List Jobs
* [list_locations](#list_locations) - List locations
* [list_time_off_requests](#list_time_off_requests) - List time off requests
* [list_time_off_types](#list_time_off_types) - List time off types
* [update_employee](#update_employee) - Updates an employee
* [update_employee_employment](#update_employee_employment) - Update Employee Employment
* [update_employee_work_eligibility_request](#update_employee_work_eligibility_request) - Update Employee Work Eligibility Request
* [update_time_off_request](#update_time_off_request) - Update time off request
* [upload_employee_document](#upload_employee_document) - Upload Employee Document

## batch_upload_employee_document

Batch Upload Employee Document

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.batch_upload_employee_document(hris_batch_document_upload_request_dto=::StackOne::Shared::HrisBatchDocumentUploadRequestDto.new(
  items: [
    ::StackOne::Shared::HrisDocumentsUploadRequestDto.new(
      category: ::StackOne::Shared::HrisDocumentsUploadRequestDtoCategory.new(),
      category_id: "6530",
      confidential: ::StackOne::Shared::HrisDocumentsUploadRequestDtoConfidential.new(
        source_value: "public",
        value: ::StackOne::Shared::HrisDocumentsUploadRequestDtoSchemasValue::TRUE,
      ),
      content: "VGhpcyBpc24ndCByZWFsbHkgYSBzYW1wbGUgZmlsZSwgYnV0IG5vIG9uZSB3aWxsIGV2ZXIga25vdyE",
      file_format: ::StackOne::Shared::HrisDocumentsUploadRequestDtoFileFormat.new(
        source_value: "abc",
        value: ::StackOne::Shared::HrisDocumentsUploadRequestDtoSchemasFileFormatValue::PDF,
      ),
      name: "weather-forecast",
      path: "/path/to/file",
    ),
  ],
), id="<id>", x_account_id="<id>")

if ! res.batch_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `hris_batch_document_upload_request_dto`                                                                          | [::StackOne::Shared::HrisBatchDocumentUploadRequestDto](../../models/shared/hrisbatchdocumentuploadrequestdto.md) | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `x_account_id`                                                                                                    | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | The account identifier                                                                                            |

### Response

**[T.nilable(::StackOne::Operations::HrisBatchUploadEmployeeDocumentResponse)](../../models/operations/hrisbatchuploademployeedocumentresponse.md)**



## create_employee

Creates an employee

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.create_employee(hris_create_employee_request_dto=::StackOne::Shared::HrisCreateEmployeeRequestDto.new(
  avatar: ::StackOne::Shared::HrisCreateEmployeeRequestDtoAvatar.new(),
  avatar_url: "https://example.com/avatar.png",
  benefits: [
    ::StackOne::Shared::CreateHRISBenefit.new(
      created_at: DateTime.iso8601('2021-01-01T00:00:00Z'),
      description: "Health insurance for employees",
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "Health Insurance",
      provider: "Aetna",
      updated_at: DateTime.iso8601('2021-01-01T00:00:00Z'),
    ),
  ],
  birthday: DateTime.iso8601('2021-01-01T00:00:00Z'),
  citizenships: [
    ::StackOne::Shared::CountryCodeEnum.new(
      value: ::StackOne::Shared::CountryCodeEnumValue::US,
    ),
  ],
  company_name: "Example Corp",
  custom_fields: [
    ::StackOne::Shared::CustomFields.new(
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "Training Completion Status",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      remote_value_id: "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
      value: "Completed",
      value_id: "value_456",
    ),
  ],
  date_of_birth: DateTime.iso8601('1990-01-01T00:00.000Z'),
  department: "Physics",
  department_id: "3093",
  display_name: "Sir Issac Newton",
  employee_number: "125",
  employment_contract_type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentContractType.new(),
  employment_status: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentStatus.new(),
  employment_type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentType.new(),
  employments: [
    ::StackOne::Shared::CreateEmploymentApiModel.new(
      effective_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      employee_id: "1687-3",
      employment_contract_type: ::StackOne::Shared::EmploymentContractType.new(),
      employment_type: ::StackOne::Shared::EmploymentType.new(),
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      job_title: "Software Engineer",
      pay_currency: "USD",
      pay_frequency: ::StackOne::Shared::PayFrequency.new(),
      pay_period: ::StackOne::Shared::PayPeriod.new(),
      pay_rate: "40.00",
      time_worked: "P0Y0M0DT8H0M0S",
      unified_custom_fields: {
        "my_project_custom_field_1": "REF-1236",
        "my_project_custom_field_2": "some other value",
      },
    ),
  ],
  ethnicity: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEthnicity.new(),
  first_name: "Issac",
  gender: ::StackOne::Shared::HrisCreateEmployeeRequestDtoGender.new(),
  hire_date: DateTime.iso8601('2021-01-01T00:00.000Z'),
  home_location: ::StackOne::Shared::HrisCreateEmployeeRequestDtoHomeLocation.new(
    city: "Grantham",
    country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoCountry.new(
      value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasHomeLocationValue::US,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Woolsthorpe Manor",
    passthrough: {
      "other_known_names": "John Doe",
    },
    phone_number: "+44 1476 860 364",
    state: ::StackOne::Shared::State.new(),
    street_1: "Water Lane",
    street_2: "Woolsthorpe by Colsterworth",
    zip_code: "NG33 5NR",
  ),
  job_id: "R-6789",
  job_title: "Physicist",
  last_name: "Newton",
  manager_id: "67890",
  marital_status: ::StackOne::Shared::HrisCreateEmployeeRequestDtoMaritalStatus.new(),
  name: "Issac Newton",
  national_identity_number: ::StackOne::Shared::HrisCreateEmployeeRequestDtoNationalIdentityNumber.new(
    country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasCountry.new(
      value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasNationalIdentityNumberValue::US,
    ),
    type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoType.new(
      value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasNationalIdentityNumberTypeValue::SSN,
    ),
    value: "123456789",
  ),
  passthrough: {
    "other_known_names": "John Doe",
  },
  personal_email: "isaac.newton@example.com",
  personal_phone_number: "+1234567890",
  preferred_language: ::StackOne::Shared::HrisCreateEmployeeRequestDtoPreferredLanguage.new(),
  start_date: DateTime.iso8601('2021-01-01T00:00.000Z'),
  tenure: 2.0,
  termination_date: DateTime.iso8601('2021-01-01T00:00:00Z'),
  work_anniversary: DateTime.iso8601('2021-01-01T00:00:00Z'),
  work_email: "newton@example.com",
  work_location: ::StackOne::Shared::HrisCreateEmployeeRequestDtoWorkLocation.new(
    city: "Grantham",
    country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationCountry.new(
      value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationValue::US,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Woolsthorpe Manor",
    passthrough: {
      "other_known_names": "John Doe",
    },
    phone_number: "+44 1476 860 364",
    state: ::StackOne::Shared::HrisCreateEmployeeRequestDtoState.new(),
    street_1: "Water Lane",
    street_2: "Woolsthorpe by Colsterworth",
    zip_code: "NG33 5NR",
  ),
  work_phone_number: "+1234567890",
), x_account_id="<id>")

if ! res.create_result.nil?
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



## create_employee_employment

Create Employee Employment

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.create_employee_employment(hris_create_employment_request_dto=::StackOne::Shared::HrisCreateEmploymentRequestDto.new(
  effective_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  employee_id: "1687-3",
  employment_contract_type: ::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentContractType.new(),
  employment_type: ::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentType.new(),
  id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  job_title: "Software Engineer",
  passthrough: {
    "other_known_names": "John Doe",
  },
  pay_currency: "USD",
  pay_frequency: ::StackOne::Shared::HrisCreateEmploymentRequestDtoPayFrequency.new(),
  pay_period: ::StackOne::Shared::HrisCreateEmploymentRequestDtoPayPeriod.new(),
  pay_rate: "40.00",
  time_worked: "P0Y0M0DT8H0M0S",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
), id="<id>", x_account_id="<id>")

if ! res.employment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `hris_create_employment_request_dto`                                                                        | [::StackOne::Shared::HrisCreateEmploymentRequestDto](../../models/shared/hriscreateemploymentrequestdto.md) | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `id`                                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `x_account_id`                                                                                              | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The account identifier                                                                                      |

### Response

**[T.nilable(::StackOne::Operations::HrisCreateEmployeeEmploymentResponse)](../../models/operations/hriscreateemployeeemploymentresponse.md)**



## create_employee_time_off_request

Create Employee Time Off Request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.create_employee_time_off_request(hris_create_time_off_request_dto=::StackOne::Shared::HrisCreateTimeOffRequestDto.new(
  approver_id: "1687-4",
  employee_id: "1687-3",
  end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  end_half_day: true,
  passthrough: {
    "other_known_names": "John Doe",
  },
  start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  start_half_day: true,
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
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



## create_employee_work_eligibility_request

Create Employee Work Eligibility Request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.create_employee_work_eligibility_request(hris_create_work_eligibility_request_dto=::StackOne::Shared::HrisCreateWorkEligibilityRequestDto.new(
  document: ::StackOne::Shared::Document.new(
    category: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoCategory.new(),
    category_id: "6530",
    created_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    file_format: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoFileFormat.new(
      source_value: "abc",
      value: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoSchemasDocumentValue::PDF,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "My Document",
    path: "/path/to/file",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_url: "https://example.com/file.pdf",
    updated_at: DateTime.iso8601('2021-01-02T01:01:01.000Z'),
  ),
  issued_by: ::StackOne::Shared::IssuedBy.new(
    value: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoValue::US,
  ),
  number: "1234567890",
  passthrough: {
    "other_known_names": "John Doe",
  },
  sub_type: "H1B",
  type: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoType.new(),
  valid_from: DateTime.iso8601('2021-01-01T00:00.000Z'),
  valid_to: DateTime.iso8601('2021-01-01T00:00.000Z'),
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `hris_create_work_eligibility_request_dto`                                                                            | [::StackOne::Shared::HrisCreateWorkEligibilityRequestDto](../../models/shared/hriscreateworkeligibilityrequestdto.md) | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `x_account_id`                                                                                                        | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | The account identifier                                                                                                |

### Response

**[T.nilable(::StackOne::Operations::HrisCreateEmployeeWorkEligibilityRequestResponse)](../../models/operations/hriscreateemployeeworkeligibilityrequestresponse.md)**



## create_time_off_request

Creates a time off request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.create_time_off_request(hris_create_time_off_request_dto=::StackOne::Shared::HrisCreateTimeOffRequestDto.new(
  approver_id: "1687-4",
  employee_id: "1687-3",
  end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  end_half_day: true,
  passthrough: {
    "other_known_names": "John Doe",
  },
  start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  start_half_day: true,
), x_account_id="<id>")

if ! res.create_result.nil?
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



## download_employee_document

Download Employee Document

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.download_employee_document(id="<id>", sub_resource_id="<id>", x_account_id="<id>", format="base64")

if ! res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                          | Type                               | Required                           | Description                        | Example                            |
| ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- |
| `id`                               | *::String*                         | :heavy_check_mark:                 | N/A                                |                                    |
| `sub_resource_id`                  | *::String*                         | :heavy_check_mark:                 | N/A                                |                                    |
| `x_account_id`                     | *::String*                         | :heavy_check_mark:                 | The account identifier             |                                    |
| `format`                           | *T.nilable(::String)*              | :heavy_minus_sign:                 | The format to download the file in | base64                             |

### Response

**[T.nilable(::StackOne::Operations::HrisDownloadEmployeeDocumentResponse)](../../models/operations/hrisdownloademployeedocumentresponse.md)**



## get_benefit

Get Benefit

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetBenefitRequest.new(
  fields_: "id,remote_id,name,benefit_type,provider,description,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_benefit(req)

if ! res.hris_benefit_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::StackOne::Operations::HrisGetBenefitRequest](../../models/operations/hrisgetbenefitrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(::StackOne::Operations::HrisGetBenefitResponse)](../../models/operations/hrisgetbenefitresponse.md)**



## get_company

Get Company

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetCompanyRequest.new(
  fields_: "id,remote_id,name,full_name,display_name,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
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



## get_cost_center_group

Get Cost Center Group

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetCostCenterGroupRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_cost_center_group(req)

if ! res.hris_cost_center_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::StackOne::Operations::HrisGetCostCenterGroupRequest](../../models/operations/hrisgetcostcentergrouprequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(::StackOne::Operations::HrisGetCostCenterGroupResponse)](../../models/operations/hrisgetcostcentergroupresponse.md)**



## get_department_group

Get Department Group

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetDepartmentGroupRequest.new(
  fields_: "id,remote_id,name",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_department_group(req)

if ! res.hris_departments_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::StackOne::Operations::HrisGetDepartmentGroupRequest](../../models/operations/hrisgetdepartmentgrouprequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(::StackOne::Operations::HrisGetDepartmentGroupResponse)](../../models/operations/hrisgetdepartmentgroupresponse.md)**



## get_employee

Get Employee

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetEmployeeRequest.new(
  expand: "company,employments,work_location,home_location,custom_fields,groups",
  fields_: "id,remote_id,first_name,last_name,name,display_name,gender,ethnicity,date_of_birth,birthday,marital_status,avatar_url,avatar,personal_email,personal_phone_number,work_email,work_phone_number,job_id,remote_job_id,job_title,job_description,department_id,remote_department_id,department,cost_centers,benefits,company,manager_id,remote_manager_id,hire_date,start_date,tenure,work_anniversary,employment_type,employment_contract_type,employment_status,termination_date,company_name,preferred_language,citizenships,home_location,work_location,employments,custom_fields,documents,created_at,updated_at,employee_number,national_identity_number",
  id: "<id>",
  include: "avatar_url,avatar,custom_fields,job_description,benefits",
  x_account_id: "<id>",
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



## get_employee_custom_field_definition

Get employee Custom Field Definition

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetEmployeeCustomFieldDefinitionRequest.new(
  fields_: "id,remote_id,name,description,type,options",
  filter: ::StackOne::Operations::HrisGetEmployeeCustomFieldDefinitionQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_employee_custom_field_definition(req)

if ! res.custom_field_definition_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                     | Type                                                                                                                                          | Required                                                                                                                                      | Description                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                     | [::StackOne::Operations::HrisGetEmployeeCustomFieldDefinitionRequest](../../models/operations/hrisgetemployeecustomfielddefinitionrequest.md) | :heavy_check_mark:                                                                                                                            | The request object to use for the request.                                                                                                    |

### Response

**[T.nilable(::StackOne::Operations::HrisGetEmployeeCustomFieldDefinitionResponse)](../../models/operations/hrisgetemployeecustomfielddefinitionresponse.md)**



## get_employee_document

Get Employee Document

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetEmployeeDocumentRequest.new(
  fields_: "id,remote_id,name,path,type,category,category_id,remote_category_id,contents,created_at,updated_at,remote_url,file_format",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_employee_document(req)

if ! res.hris_document_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::StackOne::Operations::HrisGetEmployeeDocumentRequest](../../models/operations/hrisgetemployeedocumentrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(::StackOne::Operations::HrisGetEmployeeDocumentResponse)](../../models/operations/hrisgetemployeedocumentresponse.md)**



## get_employee_document_category

Get Employee Document Category

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetEmployeeDocumentCategoryRequest.new(
  fields_: "id,remote_id,name,active",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_employee_document_category(req)

if ! res.reference_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [::StackOne::Operations::HrisGetEmployeeDocumentCategoryRequest](../../models/operations/hrisgetemployeedocumentcategoryrequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |

### Response

**[T.nilable(::StackOne::Operations::HrisGetEmployeeDocumentCategoryResponse)](../../models/operations/hrisgetemployeedocumentcategoryresponse.md)**



## get_employee_employment

Get Employee Employment

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetEmployeeEmploymentRequest.new(
  expand: "groups",
  fields_: "id,remote_id,employee_id,remote_employee_id,job_title,pay_rate,pay_period,pay_frequency,pay_currency,effective_date,employment_type,employment_contract_type,time_worked,created_at,updated_at",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_employee_employment(req)

if ! res.employment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::StackOne::Operations::HrisGetEmployeeEmploymentRequest](../../models/operations/hrisgetemployeeemploymentrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::StackOne::Operations::HrisGetEmployeeEmploymentResponse)](../../models/operations/hrisgetemployeeemploymentresponse.md)**



## get_employees_time_off_request

Get Employees Time Off Request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetEmployeesTimeOffRequestRequest.new(
  fields_: "id,remote_id,employee_id,remote_employee_id,approver_id,remote_approver_id,status,type,start_date,end_date,start_half_day,end_half_day,duration,created_at,updated_at",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
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



## get_employees_work_eligibility

Get Employees Work Eligibility

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetEmployeesWorkEligibilityRequest.new(
  fields_: "id,remote_id,type,sub_type,document,valid_from,valid_to,issued_by,number",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_employees_work_eligibility(req)

if ! res.work_eligibility_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [::StackOne::Operations::HrisGetEmployeesWorkEligibilityRequest](../../models/operations/hrisgetemployeesworkeligibilityrequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |

### Response

**[T.nilable(::StackOne::Operations::HrisGetEmployeesWorkEligibilityResponse)](../../models/operations/hrisgetemployeesworkeligibilityresponse.md)**



## get_employment

Get Employment

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetEmploymentRequest.new(
  expand: "groups",
  fields_: "id,remote_id,employee_id,remote_employee_id,job_title,pay_rate,pay_period,pay_frequency,pay_currency,effective_date,employment_type,employment_contract_type,time_worked,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
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



## get_group

Get Group

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetGroupRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_group(req)

if ! res.hris_groups_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::HrisGetGroupRequest](../../models/operations/hrisgetgrouprequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::StackOne::Operations::HrisGetGroupResponse)](../../models/operations/hrisgetgroupresponse.md)**



## get_job

Get Job

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetJobRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_job(req)

if ! res.job_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::StackOne::Operations::HrisGetJobRequest](../../models/operations/hrisgetjobrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(::StackOne::Operations::HrisGetJobResponse)](../../models/operations/hrisgetjobresponse.md)**



## get_location

Get Location

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetLocationRequest.new(
  fields_: "id,remote_id,employee_id,remote_employee_id,name,phone_number,street_1,street_2,city,state,zip_code,country,location_type,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
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
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetTimeOffRequestRequest.new(
  fields_: "id,remote_id,employee_id,remote_employee_id,approver_id,remote_approver_id,status,type,start_date,end_date,start_half_day,end_half_day,duration,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
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



## get_time_off_type

Get time off type

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisGetTimeOffTypeRequest.new(
  fields_: "id,remote_id,name,active",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.get_time_off_type(req)

if ! res.reference_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::StackOne::Operations::HrisGetTimeOffTypeRequest](../../models/operations/hrisgettimeofftyperequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::StackOne::Operations::HrisGetTimeOffTypeResponse)](../../models/operations/hrisgettimeofftyperesponse.md)**



## list_benefits

List benefits

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListBenefitsRequest.new(
  fields_: "id,remote_id,name,benefit_type,provider,description,created_at,updated_at",
  filter: ::StackOne::Operations::HrisListBenefitsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.hris.list_benefits(req)

if ! res.hris_benefits_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::StackOne::Operations::HrisListBenefitsRequest](../../models/operations/hrislistbenefitsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(::StackOne::Operations::HrisListBenefitsResponse)](../../models/operations/hrislistbenefitsresponse.md)**



## list_companies

List Companies

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListCompaniesRequest.new(
  fields_: "id,remote_id,name,full_name,display_name,created_at,updated_at",
  filter: ::StackOne::Operations::HrisListCompaniesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
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



## list_cost_center_groups

List Cost Center Groups

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListCostCenterGroupsRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids",
  filter: ::StackOne::Operations::HrisListCostCenterGroupsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.hris.list_cost_center_groups(req)

if ! res.hris_cost_center_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::StackOne::Operations::HrisListCostCenterGroupsRequest](../../models/operations/hrislistcostcentergroupsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::StackOne::Operations::HrisListCostCenterGroupsResponse)](../../models/operations/hrislistcostcentergroupsresponse.md)**



## list_department_groups

List Department Groups

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListDepartmentGroupsRequest.new(
  fields_: "id,remote_id,name",
  filter: ::StackOne::Operations::HrisListDepartmentGroupsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.hris.list_department_groups(req)

if ! res.hris_departments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::StackOne::Operations::HrisListDepartmentGroupsRequest](../../models/operations/hrislistdepartmentgroupsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::StackOne::Operations::HrisListDepartmentGroupsResponse)](../../models/operations/hrislistdepartmentgroupsresponse.md)**



## list_employee_categories

List Employee Document Categories

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListEmployeeCategoriesRequest.new(
  fields_: "id,remote_id,name,active",
  filter: ::StackOne::Operations::HrisListEmployeeCategoriesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.hris.list_employee_categories(req)

if ! res.reference_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::StackOne::Operations::HrisListEmployeeCategoriesRequest](../../models/operations/hrislistemployeecategoriesrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(::StackOne::Operations::HrisListEmployeeCategoriesResponse)](../../models/operations/hrislistemployeecategoriesresponse.md)**



## list_employee_custom_field_definitions

List employee Custom Field Definitions

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListEmployeeCustomFieldDefinitionsRequest.new(
  fields_: "id,remote_id,name,description,type,options",
  filter: ::StackOne::Operations::HrisListEmployeeCustomFieldDefinitionsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.hris.list_employee_custom_field_definitions(req)

if ! res.custom_field_definitions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                         | [::StackOne::Operations::HrisListEmployeeCustomFieldDefinitionsRequest](../../models/operations/hrislistemployeecustomfielddefinitionsrequest.md) | :heavy_check_mark:                                                                                                                                | The request object to use for the request.                                                                                                        |

### Response

**[T.nilable(::StackOne::Operations::HrisListEmployeeCustomFieldDefinitionsResponse)](../../models/operations/hrislistemployeecustomfielddefinitionsresponse.md)**



## list_employee_documents

List Employee Documents

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListEmployeeDocumentsRequest.new(
  fields_: "id,remote_id,name,path,type,category,category_id,remote_category_id,contents,created_at,updated_at,remote_url,file_format",
  filter: ::StackOne::Operations::HrisListEmployeeDocumentsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.list_employee_documents(req)

if ! res.hris_documents_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::StackOne::Operations::HrisListEmployeeDocumentsRequest](../../models/operations/hrislistemployeedocumentsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::StackOne::Operations::HrisListEmployeeDocumentsResponse)](../../models/operations/hrislistemployeedocumentsresponse.md)**



## list_employee_employments

List Employee Employments

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListEmployeeEmploymentsRequest.new(
  expand: "groups",
  fields_: "id,remote_id,employee_id,remote_employee_id,job_title,pay_rate,pay_period,pay_frequency,pay_currency,effective_date,employment_type,employment_contract_type,time_worked,created_at,updated_at",
  filter: ::StackOne::Operations::HrisListEmployeeEmploymentsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.list_employee_employments(req)

if ! res.employments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::StackOne::Operations::HrisListEmployeeEmploymentsRequest](../../models/operations/hrislistemployeeemploymentsrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(::StackOne::Operations::HrisListEmployeeEmploymentsResponse)](../../models/operations/hrislistemployeeemploymentsresponse.md)**



## list_employee_time_off_requests

List Employee Time Off Requests

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListEmployeeTimeOffRequestsRequest.new(
  fields_: "id,remote_id,employee_id,remote_employee_id,approver_id,remote_approver_id,status,type,start_date,end_date,start_half_day,end_half_day,duration,created_at,updated_at",
  filter: ::StackOne::Operations::HrisListEmployeeTimeOffRequestsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<id>",
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



## list_employee_work_eligibility

List Employee Work Eligibility

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListEmployeeWorkEligibilityRequest.new(
  fields_: "id,remote_id,type,sub_type,document,valid_from,valid_to,issued_by,number",
  filter: ::StackOne::Operations::HrisListEmployeeWorkEligibilityQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.hris.list_employee_work_eligibility(req)

if ! res.work_eligibility_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [::StackOne::Operations::HrisListEmployeeWorkEligibilityRequest](../../models/operations/hrislistemployeeworkeligibilityrequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |

### Response

**[T.nilable(::StackOne::Operations::HrisListEmployeeWorkEligibilityResponse)](../../models/operations/hrislistemployeeworkeligibilityresponse.md)**



## list_employees

List Employees

### Example Usage

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
  fields_: "id,remote_id,first_name,last_name,name,display_name,gender,ethnicity,date_of_birth,birthday,marital_status,avatar_url,avatar,personal_email,personal_phone_number,work_email,work_phone_number,job_id,remote_job_id,job_title,job_description,department_id,remote_department_id,department,cost_centers,benefits,company,manager_id,remote_manager_id,hire_date,start_date,tenure,work_anniversary,employment_type,employment_contract_type,employment_status,termination_date,company_name,preferred_language,citizenships,home_location,work_location,employments,custom_fields,documents,created_at,updated_at,employee_number,national_identity_number",
  filter: ::StackOne::Operations::HrisListEmployeesQueryParamFilter.new(
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
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListEmploymentsRequest.new(
  expand: "groups",
  fields_: "id,remote_id,employee_id,remote_employee_id,job_title,pay_rate,pay_period,pay_frequency,pay_currency,effective_date,employment_type,employment_contract_type,time_worked,created_at,updated_at",
  filter: ::StackOne::Operations::HrisListEmploymentsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
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



## list_groups

List Groups

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListGroupsRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids",
  filter: ::StackOne::Operations::HrisListGroupsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.hris.list_groups(req)

if ! res.hris_groups_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::StackOne::Operations::HrisListGroupsRequest](../../models/operations/hrislistgroupsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(::StackOne::Operations::HrisListGroupsResponse)](../../models/operations/hrislistgroupsresponse.md)**



## list_jobs

List Jobs

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListJobsRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids",
  filter: ::StackOne::Operations::HrisListJobsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.hris.list_jobs(req)

if ! res.jobs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::HrisListJobsRequest](../../models/operations/hrislistjobsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::StackOne::Operations::HrisListJobsResponse)](../../models/operations/hrislistjobsresponse.md)**



## list_locations

List locations

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListLocationsRequest.new(
  fields_: "id,remote_id,employee_id,remote_employee_id,name,phone_number,street_1,street_2,city,state,zip_code,country,location_type,created_at,updated_at",
  filter: ::StackOne::Operations::HrisListLocationsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
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
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListTimeOffRequestsRequest.new(
  fields_: "id,remote_id,employee_id,remote_employee_id,approver_id,remote_approver_id,status,type,start_date,end_date,start_half_day,end_half_day,duration,created_at,updated_at",
  filter: ::StackOne::Operations::HrisListTimeOffRequestsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
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



## list_time_off_types

List time off types

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::HrisListTimeOffTypesRequest.new(
  fields_: "id,remote_id,name,active",
  filter: ::StackOne::Operations::HrisListTimeOffTypesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.hris.list_time_off_types(req)

if ! res.reference_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::StackOne::Operations::HrisListTimeOffTypesRequest](../../models/operations/hrislisttimeofftypesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(::StackOne::Operations::HrisListTimeOffTypesResponse)](../../models/operations/hrislisttimeofftypesresponse.md)**



## update_employee

Updates an employee

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.update_employee(hris_create_employee_request_dto=::StackOne::Shared::HrisCreateEmployeeRequestDto.new(
  avatar: ::StackOne::Shared::HrisCreateEmployeeRequestDtoAvatar.new(),
  avatar_url: "https://example.com/avatar.png",
  benefits: [
    ::StackOne::Shared::CreateHRISBenefit.new(
      created_at: DateTime.iso8601('2021-01-01T00:00:00Z'),
      description: "Health insurance for employees",
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "Health Insurance",
      provider: "Aetna",
      updated_at: DateTime.iso8601('2021-01-01T00:00:00Z'),
    ),
  ],
  birthday: DateTime.iso8601('2021-01-01T00:00:00Z'),
  citizenships: [
    ::StackOne::Shared::CountryCodeEnum.new(
      value: ::StackOne::Shared::CountryCodeEnumValue::US,
    ),
  ],
  company_name: "Example Corp",
  custom_fields: [
    ::StackOne::Shared::CustomFields.new(
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "Training Completion Status",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      remote_value_id: "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
      value: "Completed",
      value_id: "value_456",
    ),
  ],
  date_of_birth: DateTime.iso8601('1990-01-01T00:00.000Z'),
  department: "Physics",
  department_id: "3093",
  display_name: "Sir Issac Newton",
  employee_number: "125",
  employment_contract_type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentContractType.new(),
  employment_status: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentStatus.new(),
  employment_type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentType.new(),
  employments: [
    ::StackOne::Shared::CreateEmploymentApiModel.new(
      effective_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      employee_id: "1687-3",
      employment_contract_type: ::StackOne::Shared::EmploymentContractType.new(),
      employment_type: ::StackOne::Shared::EmploymentType.new(),
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      job_title: "Software Engineer",
      pay_currency: "USD",
      pay_frequency: ::StackOne::Shared::PayFrequency.new(),
      pay_period: ::StackOne::Shared::PayPeriod.new(),
      pay_rate: "40.00",
      time_worked: "P0Y0M0DT8H0M0S",
      unified_custom_fields: {
        "my_project_custom_field_1": "REF-1236",
        "my_project_custom_field_2": "some other value",
      },
    ),
  ],
  ethnicity: ::StackOne::Shared::HrisCreateEmployeeRequestDtoEthnicity.new(),
  first_name: "Issac",
  gender: ::StackOne::Shared::HrisCreateEmployeeRequestDtoGender.new(),
  hire_date: DateTime.iso8601('2021-01-01T00:00.000Z'),
  home_location: ::StackOne::Shared::HrisCreateEmployeeRequestDtoHomeLocation.new(
    city: "Grantham",
    country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoCountry.new(
      value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasHomeLocationValue::US,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Woolsthorpe Manor",
    passthrough: {
      "other_known_names": "John Doe",
    },
    phone_number: "+44 1476 860 364",
    state: ::StackOne::Shared::State.new(),
    street_1: "Water Lane",
    street_2: "Woolsthorpe by Colsterworth",
    zip_code: "NG33 5NR",
  ),
  job_id: "R-6789",
  job_title: "Physicist",
  last_name: "Newton",
  manager_id: "67890",
  marital_status: ::StackOne::Shared::HrisCreateEmployeeRequestDtoMaritalStatus.new(),
  name: "Issac Newton",
  national_identity_number: ::StackOne::Shared::HrisCreateEmployeeRequestDtoNationalIdentityNumber.new(
    country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasCountry.new(
      value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasNationalIdentityNumberValue::US,
    ),
    type: ::StackOne::Shared::HrisCreateEmployeeRequestDtoType.new(
      value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasNationalIdentityNumberTypeValue::SSN,
    ),
    value: "123456789",
  ),
  passthrough: {
    "other_known_names": "John Doe",
  },
  personal_email: "isaac.newton@example.com",
  personal_phone_number: "+1234567890",
  preferred_language: ::StackOne::Shared::HrisCreateEmployeeRequestDtoPreferredLanguage.new(),
  start_date: DateTime.iso8601('2021-01-01T00:00.000Z'),
  tenure: 2.0,
  termination_date: DateTime.iso8601('2021-01-01T00:00:00Z'),
  work_anniversary: DateTime.iso8601('2021-01-01T00:00:00Z'),
  work_email: "newton@example.com",
  work_location: ::StackOne::Shared::HrisCreateEmployeeRequestDtoWorkLocation.new(
    city: "Grantham",
    country: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationCountry.new(
      value: ::StackOne::Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationValue::US,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Woolsthorpe Manor",
    passthrough: {
      "other_known_names": "John Doe",
    },
    phone_number: "+44 1476 860 364",
    state: ::StackOne::Shared::HrisCreateEmployeeRequestDtoState.new(),
    street_1: "Water Lane",
    street_2: "Woolsthorpe by Colsterworth",
    zip_code: "NG33 5NR",
  ),
  work_phone_number: "+1234567890",
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
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



## update_employee_employment

Update Employee Employment

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.update_employee_employment(hris_create_employment_request_dto=::StackOne::Shared::HrisCreateEmploymentRequestDto.new(
  effective_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  employee_id: "1687-3",
  employment_contract_type: ::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentContractType.new(),
  employment_type: ::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentType.new(),
  id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  job_title: "Software Engineer",
  passthrough: {
    "other_known_names": "John Doe",
  },
  pay_currency: "USD",
  pay_frequency: ::StackOne::Shared::HrisCreateEmploymentRequestDtoPayFrequency.new(),
  pay_period: ::StackOne::Shared::HrisCreateEmploymentRequestDtoPayPeriod.new(),
  pay_rate: "40.00",
  time_worked: "P0Y0M0DT8H0M0S",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
), id="<id>", sub_resource_id="<id>", x_account_id="<id>")

if ! res.employment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `hris_create_employment_request_dto`                                                                        | [::StackOne::Shared::HrisCreateEmploymentRequestDto](../../models/shared/hriscreateemploymentrequestdto.md) | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `id`                                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `sub_resource_id`                                                                                           | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `x_account_id`                                                                                              | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The account identifier                                                                                      |

### Response

**[T.nilable(::StackOne::Operations::HrisUpdateEmployeeEmploymentResponse)](../../models/operations/hrisupdateemployeeemploymentresponse.md)**



## update_employee_work_eligibility_request

Update Employee Work Eligibility Request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.update_employee_work_eligibility_request(hris_create_work_eligibility_request_dto=::StackOne::Shared::HrisCreateWorkEligibilityRequestDto.new(
  document: ::StackOne::Shared::Document.new(
    category: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoCategory.new(),
    category_id: "6530",
    created_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    file_format: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoFileFormat.new(
      source_value: "abc",
      value: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoSchemasDocumentValue::PDF,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "My Document",
    path: "/path/to/file",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_url: "https://example.com/file.pdf",
    updated_at: DateTime.iso8601('2021-01-02T01:01:01.000Z'),
  ),
  issued_by: ::StackOne::Shared::IssuedBy.new(
    value: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoValue::US,
  ),
  number: "1234567890",
  passthrough: {
    "other_known_names": "John Doe",
  },
  sub_type: "H1B",
  type: ::StackOne::Shared::HrisCreateWorkEligibilityRequestDtoType.new(),
  valid_from: DateTime.iso8601('2021-01-01T00:00.000Z'),
  valid_to: DateTime.iso8601('2021-01-01T00:00.000Z'),
), id="<id>", sub_resource_id="<id>", x_account_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `hris_create_work_eligibility_request_dto`                                                                            | [::StackOne::Shared::HrisCreateWorkEligibilityRequestDto](../../models/shared/hriscreateworkeligibilityrequestdto.md) | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `sub_resource_id`                                                                                                     | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `x_account_id`                                                                                                        | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | The account identifier                                                                                                |

### Response

**[T.nilable(::StackOne::Operations::HrisUpdateEmployeeWorkEligibilityRequestResponse)](../../models/operations/hrisupdateemployeeworkeligibilityrequestresponse.md)**



## update_time_off_request

Update time off request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.update_time_off_request(hris_create_time_off_request_dto=::StackOne::Shared::HrisCreateTimeOffRequestDto.new(
  approver_id: "1687-4",
  employee_id: "1687-3",
  end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  end_half_day: true,
  passthrough: {
    "other_known_names": "John Doe",
  },
  start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  start_half_day: true,
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
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



## upload_employee_document

Upload Employee Document

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.hris.upload_employee_document(hris_documents_upload_request_dto=::StackOne::Shared::HrisDocumentsUploadRequestDto.new(
  category: ::StackOne::Shared::HrisDocumentsUploadRequestDtoCategory.new(),
  category_id: "6530",
  confidential: ::StackOne::Shared::HrisDocumentsUploadRequestDtoConfidential.new(
    source_value: "public",
    value: ::StackOne::Shared::HrisDocumentsUploadRequestDtoSchemasValue::TRUE,
  ),
  content: "VGhpcyBpc24ndCByZWFsbHkgYSBzYW1wbGUgZmlsZSwgYnV0IG5vIG9uZSB3aWxsIGV2ZXIga25vdyE",
  file_format: ::StackOne::Shared::HrisDocumentsUploadRequestDtoFileFormat.new(
    source_value: "abc",
    value: ::StackOne::Shared::HrisDocumentsUploadRequestDtoSchemasFileFormatValue::PDF,
  ),
  name: "weather-forecast",
  path: "/path/to/file",
), id="<id>", x_account_id="<id>")

if ! res.write_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `hris_documents_upload_request_dto`                                                                       | [::StackOne::Shared::HrisDocumentsUploadRequestDto](../../models/shared/hrisdocumentsuploadrequestdto.md) | :heavy_check_mark:                                                                                        | N/A                                                                                                       |
| `id`                                                                                                      | *::String*                                                                                                | :heavy_check_mark:                                                                                        | N/A                                                                                                       |
| `x_account_id`                                                                                            | *::String*                                                                                                | :heavy_check_mark:                                                                                        | The account identifier                                                                                    |

### Response

**[T.nilable(::StackOne::Operations::HrisUploadEmployeeDocumentResponse)](../../models/operations/hrisuploademployeedocumentresponse.md)**

