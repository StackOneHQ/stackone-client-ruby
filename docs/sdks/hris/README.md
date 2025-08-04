# Hris
(*hris*)

## Overview

### Available Operations

* [batch_upload_employee_document](#batch_upload_employee_document) - Batch Upload Employee Document
* [cancel_employee_time_off_request](#cancel_employee_time_off_request) - Cancel Employee Time Off Request
* [create_employee](#create_employee) - Create Employee
* [create_employee_employment](#create_employee_employment) - Create Employee Employment
* [create_employee_skill](#create_employee_skill) - Create Employee Skill
* [create_employee_time_off_request](#create_employee_time_off_request) - Create Employee Time Off Request
* [create_employee_work_eligibility_request](#create_employee_work_eligibility_request) - Create Employee Work Eligibility Request
* [download_employee_document](#download_employee_document) - Download Employee Document
* [get_benefit](#get_benefit) - Get Benefit
* [get_company](#get_company) - Get Company
* [get_company_group](#get_company_group) - Get Company Group
* [get_cost_center_group](#get_cost_center_group) - Get Cost Center Group
* [get_department_group](#get_department_group) - Get Department Group
* [get_division_group](#get_division_group) - Get Division Group
* [get_employee](#get_employee) - Get Employee
* [get_employee_custom_field_definition](#get_employee_custom_field_definition) - Get employee Custom Field Definition
* [get_employee_document](#get_employee_document) - Get Employee Document
* [get_employee_document_category](#get_employee_document_category) - Get Employee Document Category
* [get_employee_employment](#get_employee_employment) - Get Employee Employment
* [get_employee_skill](#get_employee_skill) - Get Employee Skill
* [get_employee_task](#get_employee_task) - Get Employee Task
* [get_employee_time_off_balance](#get_employee_time_off_balance) - Get Employee Time Off Balance
* [get_employees_time_off_request](#get_employees_time_off_request) - Get Employees Time Off Request
* [get_employees_work_eligibility](#get_employees_work_eligibility) - Get Employees Work Eligibility
* [get_employment](#get_employment) - Get Employment
* [get_group](#get_group) - Get Group
* [get_job](#get_job) - Get Job
* [get_location](#get_location) - Get Work Location
* [get_position](#get_position) - Get Position
* [get_shift](#get_shift) - Get Shift
* [get_task](#get_task) - Get Task
* [get_team_group](#get_team_group) - Get Team Group
* [get_time_entries](#get_time_entries) - Get Time Entry
* [get_time_off_policy](#get_time_off_policy) - Get Time Off Policy
* [get_time_off_request](#get_time_off_request) - Get time off request
* [~~get_time_off_type~~](#get_time_off_type) - Get time off type :warning: **Deprecated**
* [invite_employee](#invite_employee) - Invite Employee
* [list_benefits](#list_benefits) - List benefits
* [list_companies](#list_companies) - List Companies
* [list_companies_groups](#list_companies_groups) - List Companies Groups
* [list_cost_center_groups](#list_cost_center_groups) - List Cost Center Groups
* [list_department_groups](#list_department_groups) - List Department Groups
* [list_division_groups](#list_division_groups) - List Division Groups
* [list_employee_categories](#list_employee_categories) - List Employee Document Categories
* [list_employee_custom_field_definitions](#list_employee_custom_field_definitions) - List employee Custom Field Definitions
* [list_employee_documents](#list_employee_documents) - List Employee Documents
* [list_employee_employments](#list_employee_employments) - List Employee Employments
* [list_employee_skills](#list_employee_skills) - List Employee Skills
* [list_employee_tasks](#list_employee_tasks) - List Employee Tasks
* [list_employee_time_off_balances](#list_employee_time_off_balances) - List Employee Time Off Balances
* [list_employee_time_off_policies](#list_employee_time_off_policies) - List Assigned Time Off Policies
* [list_employee_time_off_requests](#list_employee_time_off_requests) - List Employee Time Off Requests
* [list_employee_work_eligibility](#list_employee_work_eligibility) - List Employee Work Eligibility
* [list_employees](#list_employees) - List Employees
* [list_employments](#list_employments) - List Employments
* [list_groups](#list_groups) - List Groups
* [list_jobs](#list_jobs) - List Jobs
* [list_locations](#list_locations) - List Work Locations
* [list_positions](#list_positions) - List Positions
* [list_shifts](#list_shifts) - List Shifts
* [list_tasks](#list_tasks) - List Tasks
* [list_team_groups](#list_team_groups) - List Team Groups
* [list_time_entries](#list_time_entries) - List Time Entries
* [list_time_off_policies](#list_time_off_policies) - List Time Off Policies
* [list_time_off_requests](#list_time_off_requests) - List time off requests
* [~~list_time_off_types~~](#list_time_off_types) - List time off types :warning: **Deprecated**
* [update_employee](#update_employee) - Update Employee
* [update_employee_employment](#update_employee_employment) - Update Employee Employment
* [update_employee_time_off_request](#update_employee_time_off_request) - Update Employee Time Off Request
* [update_employee_work_eligibility_request](#update_employee_work_eligibility_request) - Update Employee Work Eligibility Request
* [upload_employee_document](#upload_employee_document) - Upload Employee Document

## batch_upload_employee_document

Batch Upload Employee Document

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.batch_upload_employee_document(hris_batch_document_upload_request_dto=Models::Shared::HrisBatchDocumentUploadRequestDto.new(
  items: [
    Models::Shared::HrisDocumentsUploadRequestDto.new(
      category: Models::Shared::HrisDocumentsUploadRequestDtoCategory.new(),
      category_id: "6530",
      confidential: Models::Shared::HrisDocumentsUploadRequestDtoConfidential.new(
        source_value: "public",
        value: Models::Shared::HrisDocumentsUploadRequestDtoSchemasValue::TRUE,
      ),
      content: "VGhpcyBpc24ndCByZWFsbHkgYSBzYW1wbGUgZmlsZSwgYnV0IG5vIG9uZSB3aWxsIGV2ZXIga25vdyE",
      file_format: Models::Shared::HrisDocumentsUploadRequestDtoFileFormat.new(
        source_value: "application/pdf",
        value: Models::Shared::HrisDocumentsUploadRequestDtoSchemasFileFormatValue::PDF,
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

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `hris_batch_document_upload_request_dto`                                                                      | [Models::Shared::HrisBatchDocumentUploadRequestDto](../../models/shared/hrisbatchdocumentuploadrequestdto.md) | :heavy_check_mark:                                                                                            | N/A                                                                                                           |
| `id`                                                                                                          | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | N/A                                                                                                           |
| `x_account_id`                                                                                                | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | The account identifier                                                                                        |

### Response

**[T.nilable(Models::Operations::HrisBatchUploadEmployeeDocumentResponse)](../../models/operations/hrisbatchuploademployeedocumentresponse.md)**



## cancel_employee_time_off_request

Cancel Employee Time Off Request

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.cancel_employee_time_off_request(id="<id>", sub_resource_id="<id>", x_account_id="<id>")

if ! res.delete_result.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `id`                   | *::String*             | :heavy_check_mark:     | N/A                    |
| `sub_resource_id`      | *::String*             | :heavy_check_mark:     | N/A                    |
| `x_account_id`         | *::String*             | :heavy_check_mark:     | The account identifier |

### Response

**[T.nilable(Models::Operations::HrisCancelEmployeeTimeOffRequestResponse)](../../models/operations/hriscancelemployeetimeoffrequestresponse.md)**



## create_employee

Create Employee

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.create_employee(hris_create_employee_request_dto=Models::Shared::HrisCreateEmployeeRequestDto.new(
  avatar: Models::Shared::HrisCreateEmployeeRequestDtoAvatar.new(),
  avatar_url: "https://example.com/avatar.png",
  benefits: [
    Models::Shared::CreateHRISBenefit.new(
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
    Models::Shared::CountryCodeEnum.new(
      value: Models::Shared::CountryCodeEnumValue::US,
    ),
  ],
  company_id: "1234567890",
  cost_centers: [
    Models::Shared::CreateCostCenterApiModel.new(
      distribution_percentage: 100.0,
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "R&D",
    ),
  ],
  custom_fields: [
    Models::Shared::CustomFields.new(
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "Training Completion Status",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      remote_value_id: "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
      value: "Completed",
      value_id: "value_456",
    ),
  ],
  date_of_birth: DateTime.iso8601('1990-01-01T00:00:00.000Z'),
  department: "Physics",
  department_id: "3093",
  display_name: "Sir Isaac Newton",
  employee_number: "125",
  employment: Models::Shared::HrisCreateEmployeeRequestDtoEmployment.new(
    end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    grade: Models::Shared::HrisCreateEmployeeRequestDtoGrade.new(
      description: "Mid-level employee demonstrating proficiency and autonomy.",
      id: "1687-3",
      name: "1687-4",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    ),
    job_title: "Software Engineer",
    passthrough: {
      "other_known_names": "John Doe",
    },
    pay_currency: "USD",
    pay_frequency: Models::Shared::HrisCreateEmployeeRequestDtoPayFrequency.new(),
    pay_period: Models::Shared::HrisCreateEmployeeRequestDtoPayPeriod.new(),
    pay_rate: "40.00",
    payroll_code: "PC1",
    unified_custom_fields: {
      "my_project_custom_field_1": "REF-1236",
      "my_project_custom_field_2": "some other value",
    },
    work_time: Models::Shared::HrisCreateEmployeeRequestDtoWorkTime.new(
      duration: "P0Y0M0DT8H0M0S",
      duration_unit: Models::Shared::HrisCreateEmployeeRequestDtoDurationUnit.new(),
    ),
  ),
  employment_status: Models::Shared::HrisCreateEmployeeRequestDtoEmploymentStatus.new(),
  ethnicity: Models::Shared::HrisCreateEmployeeRequestDtoEthnicity.new(),
  first_name: "Isaac",
  gender: Models::Shared::HrisCreateEmployeeRequestDtoGender.new(),
  hire_date: DateTime.iso8601('2021-01-01T00:00:00.000Z'),
  home_location: Models::Shared::HrisCreateEmployeeRequestDtoHomeLocation.new(
    city: "Grantham",
    country: Models::Shared::HrisCreateEmployeeRequestDtoCountry.new(
      value: Models::Shared::HrisCreateEmployeeRequestDtoSchemasHomeLocationValue::US,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Woolsthorpe Manor",
    passthrough: {
      "other_known_names": "John Doe",
    },
    phone_number: "+44 1476 860 364",
    state: Models::Shared::State.new(),
    street_1: "Water Lane",
    street_2: "Woolsthorpe by Colsterworth",
    zip_code: "NG33 5NR",
  ),
  job_title: "Physicist",
  last_name: "Newton",
  manager_id: "67890",
  marital_status: Models::Shared::HrisCreateEmployeeRequestDtoMaritalStatus.new(),
  name: "Isaac Newton",
  national_identity_numbers: [
    Models::Shared::NationalIdentityNumberApiModel.new(
      country: Models::Shared::NationalIdentityNumberApiModelCountry.new(
        value: Models::Shared::NationalIdentityNumberApiModelValue::US,
      ),
      type: Models::Shared::NationalIdentityNumberApiModelType.new(
        value: Models::Shared::NationalIdentityNumberApiModelSchemasValue::SSN,
      ),
      value: "123456789",
    ),
  ],
  passthrough: {
    "other_known_names": "John Doe",
  },
  personal_email: "isaac.newton@example.com",
  personal_phone_number: "+1234567890",
  preferred_language: Models::Shared::HrisCreateEmployeeRequestDtoPreferredLanguage.new(),
  start_date: DateTime.iso8601('2021-01-01T00:00:00.000Z'),
  team_id: "2913",
  termination_date: DateTime.iso8601('2021-01-01T00:00:00Z'),
  work_email: "newton@example.com",
  work_location: Models::Shared::HrisCreateEmployeeRequestDtoWorkLocation.new(
    city: "Grantham",
    country: Models::Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationCountry.new(
      value: Models::Shared::HrisCreateEmployeeRequestDtoSchemasWorkLocationValue::US,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Woolsthorpe Manor",
    passthrough: {
      "other_known_names": "John Doe",
    },
    phone_number: "+44 1476 860 364",
    state: Models::Shared::HrisCreateEmployeeRequestDtoState.new(),
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

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `hris_create_employee_request_dto`                                                                  | [Models::Shared::HrisCreateEmployeeRequestDto](../../models/shared/hriscreateemployeerequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(Models::Operations::HrisCreateEmployeeResponse)](../../models/operations/hriscreateemployeeresponse.md)**



## create_employee_employment

Create Employee Employment

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.create_employee_employment(hris_create_employment_request_dto=Models::Shared::HrisCreateEmploymentRequestDto.new(
  effective_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  grade: Models::Shared::HrisCreateEmploymentRequestDtoGrade.new(
    description: "Mid-level employee demonstrating proficiency and autonomy.",
    id: "1687-3",
    name: "1687-4",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ),
  job_id: "5290",
  job_title: "Software Engineer",
  passthrough: {
    "other_known_names": "John Doe",
  },
  pay_currency: "USD",
  pay_frequency: Models::Shared::HrisCreateEmploymentRequestDtoPayFrequency.new(),
  pay_period: Models::Shared::HrisCreateEmploymentRequestDtoPayPeriod.new(),
  pay_rate: "40.00",
  payroll_code: "PC1",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
  work_time: Models::Shared::HrisCreateEmploymentRequestDtoWorkTime.new(
    duration: "P0Y0M0DT8H0M0S",
    duration_unit: Models::Shared::HrisCreateEmploymentRequestDtoDurationUnit.new(),
  ),
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `hris_create_employment_request_dto`                                                                    | [Models::Shared::HrisCreateEmploymentRequestDto](../../models/shared/hriscreateemploymentrequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `id`                                                                                                    | *::String*                                                                                              | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |

### Response

**[T.nilable(Models::Operations::HrisCreateEmployeeEmploymentResponse)](../../models/operations/hriscreateemployeeemploymentresponse.md)**



## create_employee_skill

Create Employee Skill

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.create_employee_skill(entity_skills_create_request_dto=Models::Shared::EntitySkillsCreateRequestDto.new(
  id: "16873-IT345",
  maximum_proficiency: Models::Shared::EntitySkillsCreateRequestDtoMaximumProficiency.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Expert",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ),
  minimum_proficiency: Models::Shared::EntitySkillsCreateRequestDtoMinimumProficiency.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Expert",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ),
  name: "Information-Technology",
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `entity_skills_create_request_dto`                                                                  | [Models::Shared::EntitySkillsCreateRequestDto](../../models/shared/entityskillscreaterequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `id`                                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(Models::Operations::HrisCreateEmployeeSkillResponse)](../../models/operations/hriscreateemployeeskillresponse.md)**



## create_employee_time_off_request

Create Employee Time Off Request

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.create_employee_time_off_request(hris_create_time_off_request_dto=Models::Shared::HrisCreateTimeOffRequestDto.new(
  approver_id: "1687-4",
  comment: "Taking a day off for personal reasons",
  end_date: "2021-01-01T01:01:01.000",
  end_half_day: true,
  passthrough: {
    "other_known_names": "John Doe",
  },
  reason: Models::Shared::HrisCreateTimeOffRequestDtoReason.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ),
  start_date: "2021-01-01T01:01:01.000",
  start_half_day: true,
  time_off_policy_id: "cx280928933",
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `hris_create_time_off_request_dto`                                                                | [Models::Shared::HrisCreateTimeOffRequestDto](../../models/shared/hriscreatetimeoffrequestdto.md) | :heavy_check_mark:                                                                                | N/A                                                                                               |
| `id`                                                                                              | *::String*                                                                                        | :heavy_check_mark:                                                                                | N/A                                                                                               |
| `x_account_id`                                                                                    | *::String*                                                                                        | :heavy_check_mark:                                                                                | The account identifier                                                                            |

### Response

**[T.nilable(Models::Operations::HrisCreateEmployeeTimeOffRequestResponse)](../../models/operations/hriscreateemployeetimeoffrequestresponse.md)**



## create_employee_work_eligibility_request

Create Employee Work Eligibility Request

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.create_employee_work_eligibility_request(hris_create_work_eligibility_request_dto=Models::Shared::HrisCreateWorkEligibilityRequestDto.new(
  document: Models::Shared::Document.new(
    category: Models::Shared::HrisCreateWorkEligibilityRequestDtoCategory.new(),
    category_id: "6530",
    created_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    file_format: Models::Shared::HrisCreateWorkEligibilityRequestDtoFileFormat.new(
      source_value: "application/pdf",
      value: Models::Shared::HrisCreateWorkEligibilityRequestDtoSchemasDocumentValue::PDF,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "My Document",
    path: "/path/to/file",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_url: "https://example.com/file.pdf",
    updated_at: DateTime.iso8601('2021-01-02T01:01:01.000Z'),
  ),
  issued_by: Models::Shared::IssuedBy.new(
    value: Models::Shared::HrisCreateWorkEligibilityRequestDtoValue::US,
  ),
  number: "1234567890",
  passthrough: {
    "other_known_names": "John Doe",
  },
  sub_type: "H1B",
  type: Models::Shared::HrisCreateWorkEligibilityRequestDtoType.new(),
  valid_from: DateTime.iso8601('2021-01-01T00:00:00.000Z'),
  valid_to: DateTime.iso8601('2021-01-01T00:00:00.000Z'),
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `hris_create_work_eligibility_request_dto`                                                                        | [Models::Shared::HrisCreateWorkEligibilityRequestDto](../../models/shared/hriscreateworkeligibilityrequestdto.md) | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `x_account_id`                                                                                                    | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | The account identifier                                                                                            |

### Response

**[T.nilable(Models::Operations::HrisCreateEmployeeWorkEligibilityRequestResponse)](../../models/operations/hriscreateemployeeworkeligibilityrequestresponse.md)**



## download_employee_document

Download Employee Document

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisDownloadEmployeeDocumentRequest.new(
  export_format: "text/plain",
  format: "base64",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.download_employee_document(req)

if ! res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::HrisDownloadEmployeeDocumentRequest](../../models/operations/hrisdownloademployeedocumentrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::HrisDownloadEmployeeDocumentResponse)](../../models/operations/hrisdownloademployeedocumentresponse.md)**



## get_benefit

Get Benefit

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetBenefitRequest.new(
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

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::HrisGetBenefitRequest](../../models/operations/hrisgetbenefitrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::HrisGetBenefitResponse)](../../models/operations/hrisgetbenefitresponse.md)**



## get_company

Get Company

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetCompanyRequest.new(
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

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::HrisGetCompanyRequest](../../models/operations/hrisgetcompanyrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::HrisGetCompanyResponse)](../../models/operations/hrisgetcompanyresponse.md)**



## get_company_group

Get Company Group

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetCompanyGroupRequest.new(
  fields_: "id,remote_id,name,full_name,display_name,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_company_group(req)

if ! res.company_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::HrisGetCompanyGroupRequest](../../models/operations/hrisgetcompanygrouprequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::HrisGetCompanyGroupResponse)](../../models/operations/hrisgetcompanygroupresponse.md)**



## get_cost_center_group

Get Cost Center Group

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetCostCenterGroupRequest.new(
  fields_: "id,remote_id,name,type,distribution_percentage,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_cost_center_group(req)

if ! res.hris_cost_center_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::HrisGetCostCenterGroupRequest](../../models/operations/hrisgetcostcentergrouprequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::HrisGetCostCenterGroupResponse)](../../models/operations/hrisgetcostcentergroupresponse.md)**



## get_department_group

Get Department Group

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetDepartmentGroupRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_department_group(req)

if ! res.hris_departments_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::HrisGetDepartmentGroupRequest](../../models/operations/hrisgetdepartmentgrouprequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::HrisGetDepartmentGroupResponse)](../../models/operations/hrisgetdepartmentgroupresponse.md)**



## get_division_group

Get Division Group

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetDivisionGroupRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_division_group(req)

if ! res.hris_divisions_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::HrisGetDivisionGroupRequest](../../models/operations/hrisgetdivisiongrouprequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::HrisGetDivisionGroupResponse)](../../models/operations/hrisgetdivisiongroupresponse.md)**



## get_employee

Get Employee

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeeRequest.new(
  expand: "company,employments,work_location,home_location,groups,skills",
  fields_: "id,remote_id,first_name,last_name,name,display_name,gender,ethnicity,date_of_birth,birthday,marital_status,avatar_url,avatar,personal_email,personal_phone_number,work_email,work_phone_number,job_id,remote_job_id,job_title,job_description,department_id,remote_department_id,department,cost_centers,company,manager_id,remote_manager_id,hire_date,start_date,tenure,work_anniversary,employment_type,employment_contract_type,employment_status,termination_date,company_name,company_id,remote_company_id,preferred_language,citizenships,home_location,work_location,employments,custom_fields,documents,created_at,updated_at,benefits,employee_number,national_identity_number,national_identity_numbers,skills",
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

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::HrisGetEmployeeRequest](../../models/operations/hrisgetemployeerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeeResponse)](../../models/operations/hrisgetemployeeresponse.md)**



## get_employee_custom_field_definition

Get employee Custom Field Definition

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeeCustomFieldDefinitionRequest.new(
  fields_: "id,remote_id,name,description,type,options",
  filter: Models::Operations::HrisGetEmployeeCustomFieldDefinitionQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
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

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                 | [Models::Operations::HrisGetEmployeeCustomFieldDefinitionRequest](../../models/operations/hrisgetemployeecustomfielddefinitionrequest.md) | :heavy_check_mark:                                                                                                                        | The request object to use for the request.                                                                                                |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeeCustomFieldDefinitionResponse)](../../models/operations/hrisgetemployeecustomfielddefinitionresponse.md)**



## get_employee_document

Get Employee Document

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeeDocumentRequest.new(
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

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::HrisGetEmployeeDocumentRequest](../../models/operations/hrisgetemployeedocumentrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeeDocumentResponse)](../../models/operations/hrisgetemployeedocumentresponse.md)**



## get_employee_document_category

Get Employee Document Category

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeeDocumentCategoryRequest.new(
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

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::HrisGetEmployeeDocumentCategoryRequest](../../models/operations/hrisgetemployeedocumentcategoryrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeeDocumentCategoryResponse)](../../models/operations/hrisgetemployeedocumentcategoryresponse.md)**



## get_employee_employment

Get Employee Employment

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeeEmploymentRequest.new(
  expand: "groups",
  fields_: "id,remote_id,employee_id,remote_employee_id,job_title,pay_rate,pay_period,pay_frequency,pay_currency,effective_date,end_date,employment_type,employment_contract_type,change_reason,grade,work_time,payroll_code,fte,created_at,updated_at,start_date,active,department,team,cost_center,cost_centers,division,job,type,contract_type,manager",
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

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::HrisGetEmployeeEmploymentRequest](../../models/operations/hrisgetemployeeemploymentrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeeEmploymentResponse)](../../models/operations/hrisgetemployeeemploymentresponse.md)**



## get_employee_skill

Get Employee Skill

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeeSkillRequest.new(
  fields_: "id,remote_id,name,active,language,maximum_proficiency,minimum_proficiency",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_employee_skill(req)

if ! res.entity_skill_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::HrisGetEmployeeSkillRequest](../../models/operations/hrisgetemployeeskillrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeeSkillResponse)](../../models/operations/hrisgetemployeeskillresponse.md)**



## get_employee_task

Get Employee Task

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeeTaskRequest.new(
  expand: "attachments",
  fields_: "id,remote_id,employee_id,remote_employee_id,name,description,type,status,due_date,completion_date,assigned_by_employee_id,remote_assigned_by_employee_id,assigned_by_employee_name,link_to_task,extracted_links,next_task_id,remote_next_task_id,parent_process_name,comments,attachments,created_at,updated_at",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_employee_task(req)

if ! res.task_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::HrisGetEmployeeTaskRequest](../../models/operations/hrisgetemployeetaskrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeeTaskResponse)](../../models/operations/hrisgetemployeetaskresponse.md)**



## get_employee_time_off_balance

Get Employee Time Off Balance

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeeTimeOffBalanceRequest.new(
  expand: "policy",
  fields_: "id,remote_id,employee_id,remote_employee_id,policy_id,remote_policy_id,policy,current_balance,initial_balance,balance_unit,balance_start_date,balance_expiry_date,updated_at",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_employee_time_off_balance(req)

if ! res.time_off_balance_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::HrisGetEmployeeTimeOffBalanceRequest](../../models/operations/hrisgetemployeetimeoffbalancerequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeeTimeOffBalanceResponse)](../../models/operations/hrisgetemployeetimeoffbalanceresponse.md)**



## get_employees_time_off_request

Get Employees Time Off Request

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeesTimeOffRequestRequest.new(
  expand: "policy",
  fields_: "id,remote_id,employee_id,remote_employee_id,approver_id,remote_approver_id,status,type,start_date,end_date,start_half_day,end_half_day,time_off_policy_id,remote_time_off_policy_id,reason,comment,duration,created_at,updated_at,policy",
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

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::HrisGetEmployeesTimeOffRequestRequest](../../models/operations/hrisgetemployeestimeoffrequestrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeesTimeOffRequestResponse)](../../models/operations/hrisgetemployeestimeoffrequestresponse.md)**



## get_employees_work_eligibility

Get Employees Work Eligibility

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmployeesWorkEligibilityRequest.new(
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

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::HrisGetEmployeesWorkEligibilityRequest](../../models/operations/hrisgetemployeesworkeligibilityrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::HrisGetEmployeesWorkEligibilityResponse)](../../models/operations/hrisgetemployeesworkeligibilityresponse.md)**



## get_employment

Get Employment

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetEmploymentRequest.new(
  expand: "groups",
  fields_: "id,remote_id,employee_id,remote_employee_id,job_title,pay_rate,pay_period,pay_frequency,pay_currency,effective_date,end_date,employment_type,employment_contract_type,change_reason,grade,work_time,payroll_code,fte,created_at,updated_at,start_date,active,department,team,cost_center,cost_centers,division,job,type,contract_type,manager",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_employment(req)

if ! res.employment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::HrisGetEmploymentRequest](../../models/operations/hrisgetemploymentrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::HrisGetEmploymentResponse)](../../models/operations/hrisgetemploymentresponse.md)**



## get_group

Get Group

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetGroupRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_group(req)

if ! res.hris_groups_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::HrisGetGroupRequest](../../models/operations/hrisgetgrouprequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::HrisGetGroupResponse)](../../models/operations/hrisgetgroupresponse.md)**



## get_job

Get Job

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetJobRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_job(req)

if ! res.job_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::HrisGetJobRequest](../../models/operations/hrisgetjobrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::HrisGetJobResponse)](../../models/operations/hrisgetjobresponse.md)**



## get_location

Get Work Location

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetLocationRequest.new(
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

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::HrisGetLocationRequest](../../models/operations/hrisgetlocationrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::HrisGetLocationResponse)](../../models/operations/hrisgetlocationresponse.md)**



## get_position

Get Position

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetPositionRequest.new(
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_position(req)

if ! res.position_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::HrisGetPositionRequest](../../models/operations/hrisgetpositionrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::HrisGetPositionResponse)](../../models/operations/hrisgetpositionresponse.md)**



## get_shift

Get Shift

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetShiftRequest.new(
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_shift(req)

if ! res.hris_shift_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::HrisGetShiftRequest](../../models/operations/hrisgetshiftrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::HrisGetShiftResponse)](../../models/operations/hrisgetshiftresponse.md)**



## get_task

Get Task

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetTaskRequest.new(
  expand: "attachments",
  fields_: "id,remote_id,employee_id,remote_employee_id,name,description,type,status,due_date,completion_date,assigned_by_employee_id,remote_assigned_by_employee_id,assigned_by_employee_name,link_to_task,extracted_links,next_task_id,remote_next_task_id,parent_process_name,comments,attachments,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_task(req)

if ! res.task_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::HrisGetTaskRequest](../../models/operations/hrisgettaskrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::HrisGetTaskResponse)](../../models/operations/hrisgettaskresponse.md)**



## get_team_group

Get Team Group

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetTeamGroupRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_team_group(req)

if ! res.hris_teams_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::HrisGetTeamGroupRequest](../../models/operations/hrisgetteamgrouprequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::HrisGetTeamGroupResponse)](../../models/operations/hrisgetteamgroupresponse.md)**



## get_time_entries

Get Time Entry

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetTimeEntriesRequest.new(
  fields_: "id,remote_id,employee_id,remote_employee_id,start_time,end_time,hours_worked,break_duration,labor_type,location,status,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_time_entries(req)

if ! res.time_entries_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::HrisGetTimeEntriesRequest](../../models/operations/hrisgettimeentriesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::HrisGetTimeEntriesResponse)](../../models/operations/hrisgettimeentriesresponse.md)**



## get_time_off_policy

Get Time Off Policy

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetTimeOffPolicyRequest.new(
  fields_: "id,remote_id,name,description,type,duration_unit,reasons,updated_at,created_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_time_off_policy(req)

if ! res.time_off_policy_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::HrisGetTimeOffPolicyRequest](../../models/operations/hrisgettimeoffpolicyrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::HrisGetTimeOffPolicyResponse)](../../models/operations/hrisgettimeoffpolicyresponse.md)**



## get_time_off_request

Get time off request

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetTimeOffRequestRequest.new(
  expand: "policy",
  fields_: "id,remote_id,employee_id,remote_employee_id,approver_id,remote_approver_id,status,type,start_date,end_date,start_half_day,end_half_day,time_off_policy_id,remote_time_off_policy_id,reason,comment,duration,created_at,updated_at,policy",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.get_time_off_request(req)

if ! res.time_off_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::HrisGetTimeOffRequestRequest](../../models/operations/hrisgettimeoffrequestrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::HrisGetTimeOffRequestResponse)](../../models/operations/hrisgettimeoffrequestresponse.md)**



## ~~get_time_off_type~~

Get time off type

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisGetTimeOffTypeRequest.new(
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

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::HrisGetTimeOffTypeRequest](../../models/operations/hrisgettimeofftyperequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::HrisGetTimeOffTypeResponse)](../../models/operations/hrisgettimeofftyperesponse.md)**



## invite_employee

Invite Employee

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.invite_employee(hris_invite_employee_request_dto=Models::Shared::HrisInviteEmployeeRequestDto.new(
  passthrough: {
    "other_known_names": "John Doe",
  },
), id="<id>", x_account_id="<id>")

if ! res.invite_employee_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `hris_invite_employee_request_dto`                                                                  | [Models::Shared::HrisInviteEmployeeRequestDto](../../models/shared/hrisinviteemployeerequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `id`                                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(Models::Operations::HrisInviteEmployeeResponse)](../../models/operations/hrisinviteemployeeresponse.md)**



## list_benefits

List benefits

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListBenefitsRequest.new(
  fields_: "id,remote_id,name,benefit_type,provider,description,created_at,updated_at",
  filter: Models::Operations::HrisListBenefitsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_benefits(req)

if ! res.hris_benefits_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::HrisListBenefitsRequest](../../models/operations/hrislistbenefitsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::HrisListBenefitsResponse)](../../models/operations/hrislistbenefitsresponse.md)**



## list_companies

List Companies

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListCompaniesRequest.new(
  fields_: "id,remote_id,name,full_name,display_name,created_at,updated_at",
  filter: Models::Operations::HrisListCompaniesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_companies(req)

if ! res.companies_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::HrisListCompaniesRequest](../../models/operations/hrislistcompaniesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::HrisListCompaniesResponse)](../../models/operations/hrislistcompaniesresponse.md)**



## list_companies_groups

List Companies Groups

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListCompaniesGroupsRequest.new(
  fields_: "id,remote_id,name,full_name,display_name,created_at,updated_at",
  filter: Models::Operations::HrisListCompaniesGroupsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_companies_groups(req)

if ! res.companies_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::HrisListCompaniesGroupsRequest](../../models/operations/hrislistcompaniesgroupsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::HrisListCompaniesGroupsResponse)](../../models/operations/hrislistcompaniesgroupsresponse.md)**



## list_cost_center_groups

List Cost Center Groups

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListCostCenterGroupsRequest.new(
  fields_: "id,remote_id,name,type,distribution_percentage,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  filter: Models::Operations::HrisListCostCenterGroupsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_cost_center_groups(req)

if ! res.hris_cost_center_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::HrisListCostCenterGroupsRequest](../../models/operations/hrislistcostcentergroupsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::HrisListCostCenterGroupsResponse)](../../models/operations/hrislistcostcentergroupsresponse.md)**



## list_department_groups

List Department Groups

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListDepartmentGroupsRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  filter: Models::Operations::HrisListDepartmentGroupsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_department_groups(req)

if ! res.hris_departments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::HrisListDepartmentGroupsRequest](../../models/operations/hrislistdepartmentgroupsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::HrisListDepartmentGroupsResponse)](../../models/operations/hrislistdepartmentgroupsresponse.md)**



## list_division_groups

List Division Groups

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListDivisionGroupsRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  filter: Models::Operations::HrisListDivisionGroupsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_division_groups(req)

if ! res.hris_divisions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::HrisListDivisionGroupsRequest](../../models/operations/hrislistdivisiongroupsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::HrisListDivisionGroupsResponse)](../../models/operations/hrislistdivisiongroupsresponse.md)**



## list_employee_categories

List Employee Document Categories

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeCategoriesRequest.new(
  fields_: "id,remote_id,name,active",
  filter: Models::Operations::HrisListEmployeeCategoriesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_employee_categories(req)

if ! res.reference_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::HrisListEmployeeCategoriesRequest](../../models/operations/hrislistemployeecategoriesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeCategoriesResponse)](../../models/operations/hrislistemployeecategoriesresponse.md)**



## list_employee_custom_field_definitions

List employee Custom Field Definitions

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeCustomFieldDefinitionsRequest.new(
  fields_: "id,remote_id,name,description,type,options",
  filter: Models::Operations::HrisListEmployeeCustomFieldDefinitionsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_employee_custom_field_definitions(req)

if ! res.custom_field_definitions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                     | Type                                                                                                                                          | Required                                                                                                                                      | Description                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                     | [Models::Operations::HrisListEmployeeCustomFieldDefinitionsRequest](../../models/operations/hrislistemployeecustomfielddefinitionsrequest.md) | :heavy_check_mark:                                                                                                                            | The request object to use for the request.                                                                                                    |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeCustomFieldDefinitionsResponse)](../../models/operations/hrislistemployeecustomfielddefinitionsresponse.md)**



## list_employee_documents

List Employee Documents

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeDocumentsRequest.new(
  fields_: "id,remote_id,name,path,type,category,category_id,remote_category_id,contents,created_at,updated_at,remote_url,file_format",
  filter: Models::Operations::HrisListEmployeeDocumentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
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

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::HrisListEmployeeDocumentsRequest](../../models/operations/hrislistemployeedocumentsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeDocumentsResponse)](../../models/operations/hrislistemployeedocumentsresponse.md)**



## list_employee_employments

List Employee Employments

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeEmploymentsRequest.new(
  expand: "groups",
  fields_: "id,remote_id,employee_id,remote_employee_id,job_title,pay_rate,pay_period,pay_frequency,pay_currency,effective_date,end_date,employment_type,employment_contract_type,change_reason,grade,work_time,payroll_code,fte,created_at,updated_at,start_date,active,department,team,cost_center,cost_centers,division,job,type,contract_type,manager",
  filter: Models::Operations::HrisListEmployeeEmploymentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
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

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::HrisListEmployeeEmploymentsRequest](../../models/operations/hrislistemployeeemploymentsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeEmploymentsResponse)](../../models/operations/hrislistemployeeemploymentsresponse.md)**



## list_employee_skills

List Employee Skills

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeSkillsRequest.new(
  fields_: "id,remote_id,name,active,language,maximum_proficiency,minimum_proficiency",
  filter: Models::Operations::HrisListEmployeeSkillsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.list_employee_skills(req)

if ! res.entity_skills_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::HrisListEmployeeSkillsRequest](../../models/operations/hrislistemployeeskillsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeSkillsResponse)](../../models/operations/hrislistemployeeskillsresponse.md)**



## list_employee_tasks

List Employee Tasks

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeTasksRequest.new(
  expand: "attachments",
  fields_: "id,remote_id,employee_id,remote_employee_id,name,description,type,status,due_date,completion_date,assigned_by_employee_id,remote_assigned_by_employee_id,assigned_by_employee_name,link_to_task,extracted_links,next_task_id,remote_next_task_id,parent_process_name,comments,attachments,created_at,updated_at",
  filter: Models::Operations::HrisListEmployeeTasksQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.list_employee_tasks(req)

if ! res.tasks_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::HrisListEmployeeTasksRequest](../../models/operations/hrislistemployeetasksrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeTasksResponse)](../../models/operations/hrislistemployeetasksresponse.md)**



## list_employee_time_off_balances

List Employee Time Off Balances

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeTimeOffBalancesRequest.new(
  expand: "policy",
  fields_: "id,remote_id,employee_id,remote_employee_id,policy_id,remote_policy_id,policy,current_balance,initial_balance,balance_unit,balance_start_date,balance_expiry_date,updated_at",
  filter: Models::Operations::HrisListEmployeeTimeOffBalancesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.list_employee_time_off_balances(req)

if ! res.time_off_balances_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::HrisListEmployeeTimeOffBalancesRequest](../../models/operations/hrislistemployeetimeoffbalancesrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeTimeOffBalancesResponse)](../../models/operations/hrislistemployeetimeoffbalancesresponse.md)**



## list_employee_time_off_policies

List Assigned Time Off Policies

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeTimeOffPoliciesRequest.new(
  fields_: "id,remote_id,name,description,type,duration_unit,reasons,updated_at,created_at",
  filter: Models::Operations::HrisListEmployeeTimeOffPoliciesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.hris.list_employee_time_off_policies(req)

if ! res.time_off_policies_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::HrisListEmployeeTimeOffPoliciesRequest](../../models/operations/hrislistemployeetimeoffpoliciesrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeTimeOffPoliciesResponse)](../../models/operations/hrislistemployeetimeoffpoliciesresponse.md)**



## list_employee_time_off_requests

List Employee Time Off Requests

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeTimeOffRequestsRequest.new(
  expand: "policy",
  fields_: "id,remote_id,employee_id,remote_employee_id,approver_id,remote_approver_id,status,type,start_date,end_date,start_half_day,end_half_day,time_off_policy_id,remote_time_off_policy_id,reason,comment,duration,created_at,updated_at,policy",
  filter: Models::Operations::HrisListEmployeeTimeOffRequestsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
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

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::HrisListEmployeeTimeOffRequestsRequest](../../models/operations/hrislistemployeetimeoffrequestsrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeTimeOffRequestsResponse)](../../models/operations/hrislistemployeetimeoffrequestsresponse.md)**



## list_employee_work_eligibility

List Employee Work Eligibility

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmployeeWorkEligibilityRequest.new(
  fields_: "id,remote_id,type,sub_type,document,valid_from,valid_to,issued_by,number",
  filter: Models::Operations::HrisListEmployeeWorkEligibilityQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
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

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::HrisListEmployeeWorkEligibilityRequest](../../models/operations/hrislistemployeeworkeligibilityrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::HrisListEmployeeWorkEligibilityResponse)](../../models/operations/hrislistemployeeworkeligibilityresponse.md)**



## list_employees

List Employees

### Example Usage

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
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
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

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::HrisListEmployeesRequest](../../models/operations/hrislistemployeesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::HrisListEmployeesResponse)](../../models/operations/hrislistemployeesresponse.md)**



## list_employments

List Employments

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListEmploymentsRequest.new(
  expand: "groups",
  fields_: "id,remote_id,employee_id,remote_employee_id,job_title,pay_rate,pay_period,pay_frequency,pay_currency,effective_date,end_date,employment_type,employment_contract_type,change_reason,grade,work_time,payroll_code,fte,created_at,updated_at,start_date,active,department,team,cost_center,cost_centers,division,job,type,contract_type,manager",
  filter: Models::Operations::HrisListEmploymentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_employments(req)

if ! res.employments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::HrisListEmploymentsRequest](../../models/operations/hrislistemploymentsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::HrisListEmploymentsResponse)](../../models/operations/hrislistemploymentsresponse.md)**



## list_groups

List Groups

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListGroupsRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  filter: Models::Operations::HrisListGroupsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_groups(req)

if ! res.hris_groups_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::HrisListGroupsRequest](../../models/operations/hrislistgroupsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::HrisListGroupsResponse)](../../models/operations/hrislistgroupsresponse.md)**



## list_jobs

List Jobs

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListJobsRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids,company_id,remote_company_id",
  filter: Models::Operations::HrisListJobsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_jobs(req)

if ! res.jobs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::HrisListJobsRequest](../../models/operations/hrislistjobsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::HrisListJobsResponse)](../../models/operations/hrislistjobsresponse.md)**



## list_locations

List Work Locations

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListLocationsRequest.new(
  fields_: "id,remote_id,employee_id,remote_employee_id,name,phone_number,street_1,street_2,city,state,zip_code,country,location_type,created_at,updated_at",
  filter: Models::Operations::HrisListLocationsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_locations(req)

if ! res.hris_locations_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::HrisListLocationsRequest](../../models/operations/hrislistlocationsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::HrisListLocationsResponse)](../../models/operations/hrislistlocationsresponse.md)**



## list_positions

List Positions

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListPositionsRequest.new(
  filter: Models::Operations::HrisListPositionsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  status: Models::Operations::QueryParamStatus::OPEN,
  x_account_id: "<id>",
)

res = s.hris.list_positions(req)

if ! res.positions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::HrisListPositionsRequest](../../models/operations/hrislistpositionsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::HrisListPositionsResponse)](../../models/operations/hrislistpositionsresponse.md)**



## list_shifts

List Shifts

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListShiftsRequest.new(
  filter: Models::Operations::HrisListShiftsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_shifts(req)

if ! res.hris_shifts_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::HrisListShiftsRequest](../../models/operations/hrislistshiftsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::HrisListShiftsResponse)](../../models/operations/hrislistshiftsresponse.md)**



## list_tasks

List Tasks

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListTasksRequest.new(
  expand: "attachments",
  fields_: "id,remote_id,employee_id,remote_employee_id,name,description,type,status,due_date,completion_date,assigned_by_employee_id,remote_assigned_by_employee_id,assigned_by_employee_name,link_to_task,extracted_links,next_task_id,remote_next_task_id,parent_process_name,comments,attachments,created_at,updated_at",
  filter: Models::Operations::HrisListTasksQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_tasks(req)

if ! res.tasks_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::HrisListTasksRequest](../../models/operations/hrislisttasksrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::HrisListTasksResponse)](../../models/operations/hrislisttasksresponse.md)**



## list_team_groups

List Team Groups

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListTeamGroupsRequest.new(
  fields_: "id,remote_id,name,type,parent_ids,remote_parent_ids,owner_ids,remote_owner_ids",
  filter: Models::Operations::HrisListTeamGroupsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_team_groups(req)

if ! res.hris_teams_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::HrisListTeamGroupsRequest](../../models/operations/hrislistteamgroupsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::HrisListTeamGroupsResponse)](../../models/operations/hrislistteamgroupsresponse.md)**



## list_time_entries

List Time Entries

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListTimeEntriesRequest.new(
  fields_: "id,remote_id,employee_id,remote_employee_id,start_time,end_time,hours_worked,break_duration,labor_type,location,status,created_at,updated_at",
  filter: Models::Operations::HrisListTimeEntriesQueryParamFilter.new(
    end_time: "2020-01-01T00:00:00.000Z",
    start_time: "2020-01-01T00:00:00.000Z",
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_time_entries(req)

if ! res.time_entries_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::HrisListTimeEntriesRequest](../../models/operations/hrislisttimeentriesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::HrisListTimeEntriesResponse)](../../models/operations/hrislisttimeentriesresponse.md)**



## list_time_off_policies

List Time Off Policies

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListTimeOffPoliciesRequest.new(
  fields_: "id,remote_id,name,description,type,duration_unit,reasons,updated_at,created_at",
  filter: Models::Operations::HrisListTimeOffPoliciesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_time_off_policies(req)

if ! res.time_off_policies_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::HrisListTimeOffPoliciesRequest](../../models/operations/hrislisttimeoffpoliciesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::HrisListTimeOffPoliciesResponse)](../../models/operations/hrislisttimeoffpoliciesresponse.md)**



## list_time_off_requests

List time off requests

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListTimeOffRequestsRequest.new(
  expand: "policy",
  fields_: "id,remote_id,employee_id,remote_employee_id,approver_id,remote_approver_id,status,type,start_date,end_date,start_half_day,end_half_day,time_off_policy_id,remote_time_off_policy_id,reason,comment,duration,created_at,updated_at,policy",
  filter: Models::Operations::HrisListTimeOffRequestsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_time_off_requests(req)

if ! res.time_off_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::HrisListTimeOffRequestsRequest](../../models/operations/hrislisttimeoffrequestsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::HrisListTimeOffRequestsResponse)](../../models/operations/hrislisttimeoffrequestsresponse.md)**



## ~~list_time_off_types~~

List time off types

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::HrisListTimeOffTypesRequest.new(
  fields_: "id,remote_id,name,active",
  filter: Models::Operations::HrisListTimeOffTypesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.hris.list_time_off_types(req)

if ! res.reference_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::HrisListTimeOffTypesRequest](../../models/operations/hrislisttimeofftypesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::HrisListTimeOffTypesResponse)](../../models/operations/hrislisttimeofftypesresponse.md)**



## update_employee

Update Employee

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.update_employee(hris_update_employee_request_dto=Models::Shared::HrisUpdateEmployeeRequestDto.new(
  avatar: Models::Shared::HrisUpdateEmployeeRequestDtoAvatar.new(),
  avatar_url: "https://example.com/avatar.png",
  benefits: [
    Models::Shared::CreateHRISBenefit.new(
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
    Models::Shared::CountryCodeEnum.new(
      value: Models::Shared::CountryCodeEnumValue::US,
    ),
  ],
  company_id: "1234567890",
  custom_fields: [
    Models::Shared::CustomFields.new(
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "Training Completion Status",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      remote_value_id: "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
      value: "Completed",
      value_id: "value_456",
    ),
  ],
  date_of_birth: DateTime.iso8601('1990-01-01T00:00:00.000Z'),
  department: "Physics",
  department_id: "3093",
  display_name: "Sir Isaac Newton",
  employee_number: "125",
  employment: Models::Shared::HrisUpdateEmployeeRequestDtoEmployment.new(
    end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    grade: Models::Shared::HrisUpdateEmployeeRequestDtoGrade.new(
      description: "Mid-level employee demonstrating proficiency and autonomy.",
      id: "1687-3",
      name: "1687-4",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    ),
    job_title: "Software Engineer",
    passthrough: {
      "other_known_names": "John Doe",
    },
    pay_currency: "USD",
    pay_frequency: Models::Shared::HrisUpdateEmployeeRequestDtoPayFrequency.new(),
    pay_period: Models::Shared::HrisUpdateEmployeeRequestDtoPayPeriod.new(),
    pay_rate: "40.00",
    payroll_code: "PC1",
    unified_custom_fields: {
      "my_project_custom_field_1": "REF-1236",
      "my_project_custom_field_2": "some other value",
    },
    work_time: Models::Shared::HrisUpdateEmployeeRequestDtoWorkTime.new(
      duration: "P0Y0M0DT8H0M0S",
      duration_unit: Models::Shared::HrisUpdateEmployeeRequestDtoDurationUnit.new(),
    ),
  ),
  employment_status: Models::Shared::HrisUpdateEmployeeRequestDtoEmploymentStatus.new(),
  ethnicity: Models::Shared::HrisUpdateEmployeeRequestDtoEthnicity.new(),
  first_name: "Isaac",
  gender: Models::Shared::HrisUpdateEmployeeRequestDtoGender.new(),
  hire_date: DateTime.iso8601('2021-01-01T00:00:00.000Z'),
  home_location: Models::Shared::HrisUpdateEmployeeRequestDtoHomeLocation.new(
    city: "Grantham",
    country: Models::Shared::HrisUpdateEmployeeRequestDtoCountry.new(
      value: Models::Shared::HrisUpdateEmployeeRequestDtoSchemasHomeLocationValue::US,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Woolsthorpe Manor",
    passthrough: {
      "other_known_names": "John Doe",
    },
    phone_number: "+44 1476 860 364",
    state: Models::Shared::HrisUpdateEmployeeRequestDtoState.new(),
    street_1: "Water Lane",
    street_2: "Woolsthorpe by Colsterworth",
    zip_code: "NG33 5NR",
  ),
  job_title: "Physicist",
  last_name: "Newton",
  manager_id: "67890",
  marital_status: Models::Shared::HrisUpdateEmployeeRequestDtoMaritalStatus.new(),
  name: "Isaac Newton",
  national_identity_numbers: [
    Models::Shared::NationalIdentityNumberApiModel.new(
      country: Models::Shared::NationalIdentityNumberApiModelCountry.new(
        value: Models::Shared::NationalIdentityNumberApiModelValue::US,
      ),
      type: Models::Shared::NationalIdentityNumberApiModelType.new(
        value: Models::Shared::NationalIdentityNumberApiModelSchemasValue::SSN,
      ),
      value: "123456789",
    ),
  ],
  passthrough: {
    "other_known_names": "John Doe",
  },
  personal_email: "isaac.newton@example.com",
  personal_phone_number: "+1234567890",
  preferred_language: Models::Shared::HrisUpdateEmployeeRequestDtoPreferredLanguage.new(),
  start_date: DateTime.iso8601('2021-01-01T00:00:00.000Z'),
  team_id: "2913",
  termination_date: DateTime.iso8601('2021-01-01T00:00:00Z'),
  work_email: "newton@example.com",
  work_location: Models::Shared::HrisUpdateEmployeeRequestDtoWorkLocation.new(
    city: "Grantham",
    country: Models::Shared::HrisUpdateEmployeeRequestDtoSchemasWorkLocationCountry.new(
      value: Models::Shared::HrisUpdateEmployeeRequestDtoSchemasWorkLocationValue::US,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "Woolsthorpe Manor",
    passthrough: {
      "other_known_names": "John Doe",
    },
    phone_number: "+44 1476 860 364",
    state: Models::Shared::HrisUpdateEmployeeRequestDtoSchemasState.new(),
    street_1: "Water Lane",
    street_2: "Woolsthorpe by Colsterworth",
    zip_code: "NG33 5NR",
  ),
  work_phone_number: "+1234567890",
), id="<id>", x_account_id="<id>")

if ! res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `hris_update_employee_request_dto`                                                                  | [Models::Shared::HrisUpdateEmployeeRequestDto](../../models/shared/hrisupdateemployeerequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `id`                                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(Models::Operations::HrisUpdateEmployeeResponse)](../../models/operations/hrisupdateemployeeresponse.md)**



## update_employee_employment

Update Employee Employment

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.update_employee_employment(hris_update_employment_request_dto=Models::Shared::HrisUpdateEmploymentRequestDto.new(
  effective_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  end_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  grade: Models::Shared::HrisUpdateEmploymentRequestDtoGrade.new(
    description: "Mid-level employee demonstrating proficiency and autonomy.",
    id: "1687-3",
    name: "1687-4",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ),
  job_title: "Software Engineer",
  passthrough: {
    "other_known_names": "John Doe",
  },
  pay_currency: "USD",
  pay_frequency: Models::Shared::HrisUpdateEmploymentRequestDtoPayFrequency.new(),
  pay_period: Models::Shared::HrisUpdateEmploymentRequestDtoPayPeriod.new(),
  pay_rate: "40.00",
  payroll_code: "PC1",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
  work_time: Models::Shared::HrisUpdateEmploymentRequestDtoWorkTime.new(
    duration: "P0Y0M0DT8H0M0S",
    duration_unit: Models::Shared::HrisUpdateEmploymentRequestDtoDurationUnit.new(),
  ),
), id="<id>", sub_resource_id="<id>", x_account_id="<id>")

if ! res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `hris_update_employment_request_dto`                                                                    | [Models::Shared::HrisUpdateEmploymentRequestDto](../../models/shared/hrisupdateemploymentrequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `id`                                                                                                    | *::String*                                                                                              | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `sub_resource_id`                                                                                       | *::String*                                                                                              | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |

### Response

**[T.nilable(Models::Operations::HrisUpdateEmployeeEmploymentResponse)](../../models/operations/hrisupdateemployeeemploymentresponse.md)**



## update_employee_time_off_request

Update Employee Time Off Request

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.update_employee_time_off_request(hris_create_time_off_request_dto=Models::Shared::HrisCreateTimeOffRequestDto.new(
  approver_id: "1687-4",
  comment: "Taking a day off for personal reasons",
  end_date: "2021-01-01T01:01:01.000",
  end_half_day: true,
  passthrough: {
    "other_known_names": "John Doe",
  },
  reason: Models::Shared::HrisCreateTimeOffRequestDtoReason.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ),
  start_date: "2021-01-01T01:01:01.000",
  start_half_day: true,
  time_off_policy_id: "cx280928933",
), id="<id>", sub_resource_id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `hris_create_time_off_request_dto`                                                                | [Models::Shared::HrisCreateTimeOffRequestDto](../../models/shared/hriscreatetimeoffrequestdto.md) | :heavy_check_mark:                                                                                | N/A                                                                                               |
| `id`                                                                                              | *::String*                                                                                        | :heavy_check_mark:                                                                                | N/A                                                                                               |
| `sub_resource_id`                                                                                 | *::String*                                                                                        | :heavy_check_mark:                                                                                | N/A                                                                                               |
| `x_account_id`                                                                                    | *::String*                                                                                        | :heavy_check_mark:                                                                                | The account identifier                                                                            |

### Response

**[T.nilable(Models::Operations::HrisUpdateEmployeeTimeOffRequestResponse)](../../models/operations/hrisupdateemployeetimeoffrequestresponse.md)**



## update_employee_work_eligibility_request

Update Employee Work Eligibility Request

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.update_employee_work_eligibility_request(hris_create_work_eligibility_request_dto=Models::Shared::HrisCreateWorkEligibilityRequestDto.new(
  document: Models::Shared::Document.new(
    category: Models::Shared::HrisCreateWorkEligibilityRequestDtoCategory.new(),
    category_id: "6530",
    created_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    file_format: Models::Shared::HrisCreateWorkEligibilityRequestDtoFileFormat.new(
      source_value: "application/pdf",
      value: Models::Shared::HrisCreateWorkEligibilityRequestDtoSchemasDocumentValue::PDF,
    ),
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    name: "My Document",
    path: "/path/to/file",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_url: "https://example.com/file.pdf",
    updated_at: DateTime.iso8601('2021-01-02T01:01:01.000Z'),
  ),
  issued_by: Models::Shared::IssuedBy.new(
    value: Models::Shared::HrisCreateWorkEligibilityRequestDtoValue::US,
  ),
  number: "1234567890",
  passthrough: {
    "other_known_names": "John Doe",
  },
  sub_type: "H1B",
  type: Models::Shared::HrisCreateWorkEligibilityRequestDtoType.new(),
  valid_from: DateTime.iso8601('2021-01-01T00:00:00.000Z'),
  valid_to: DateTime.iso8601('2021-01-01T00:00:00.000Z'),
), id="<id>", sub_resource_id="<id>", x_account_id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `hris_create_work_eligibility_request_dto`                                                                        | [Models::Shared::HrisCreateWorkEligibilityRequestDto](../../models/shared/hriscreateworkeligibilityrequestdto.md) | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `sub_resource_id`                                                                                                 | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `x_account_id`                                                                                                    | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | The account identifier                                                                                            |

### Response

**[T.nilable(Models::Operations::HrisUpdateEmployeeWorkEligibilityRequestResponse)](../../models/operations/hrisupdateemployeeworkeligibilityrequestresponse.md)**



## upload_employee_document

Upload Employee Document

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.hris.upload_employee_document(hris_documents_upload_request_dto=Models::Shared::HrisDocumentsUploadRequestDto.new(
  category: Models::Shared::HrisDocumentsUploadRequestDtoCategory.new(),
  category_id: "6530",
  confidential: Models::Shared::HrisDocumentsUploadRequestDtoConfidential.new(
    source_value: "public",
    value: Models::Shared::HrisDocumentsUploadRequestDtoSchemasValue::TRUE,
  ),
  content: "VGhpcyBpc24ndCByZWFsbHkgYSBzYW1wbGUgZmlsZSwgYnV0IG5vIG9uZSB3aWxsIGV2ZXIga25vdyE",
  file_format: Models::Shared::HrisDocumentsUploadRequestDtoFileFormat.new(
    source_value: "application/pdf",
    value: Models::Shared::HrisDocumentsUploadRequestDtoSchemasFileFormatValue::PDF,
  ),
  name: "weather-forecast",
  path: "/path/to/file",
), id="<id>", x_account_id="<id>")

if ! res.write_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `hris_documents_upload_request_dto`                                                                   | [Models::Shared::HrisDocumentsUploadRequestDto](../../models/shared/hrisdocumentsuploadrequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `id`                                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The account identifier                                                                                |

### Response

**[T.nilable(Models::Operations::HrisUploadEmployeeDocumentResponse)](../../models/operations/hrisuploademployeedocumentresponse.md)**

