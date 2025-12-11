# Ats

## Overview

### Available Operations

* [create_application](#create_application) - Create Application
* [create_application_note](#create_application_note) - Create Application Note
* [create_background_check_package](#create_background_check_package) - Create Background Check Package
* [create_candidate](#create_candidate) - Create Candidate
* [create_candidate_note](#create_candidate_note) - Create Candidate Note
* [create_interview_note](#create_interview_note) - Create Interview Note
* [create_job](#create_job) - Create Job
* [create_offer](#create_offer) - Create Offer
* [delete_background_check_package](#delete_background_check_package) - Delete Background Check Package
* [download_application_document](#download_application_document) - Download Application Document
* [get_application](#get_application) - Get Application
* [get_application_custom_field_definition](#get_application_custom_field_definition) - Get Application Custom Field Definition
* [get_application_document](#get_application_document) - Get Application Document
* [get_application_document_category](#get_application_document_category) - Get Application Document Category
* [get_application_note](#get_application_note) - Get Application Note
* [get_application_offer](#get_application_offer) - Get Application Offer
* [get_application_scheduled_interview](#get_application_scheduled_interview) - Get Applications scheduled interview
* [get_application_scorecard](#get_application_scorecard) - Get Application Scorecard
* [get_application_stage](#get_application_stage) - Get Application Stage
* [get_assessments_package](#get_assessments_package) - Get Assessments Package
* [get_background_check_package](#get_background_check_package) - Get Background Check Package
* [get_candidate](#get_candidate) - Get Candidate
* [get_candidate_custom_field_definition](#get_candidate_custom_field_definition) - Get Candidate Custom Field Definition
* [get_candidate_note](#get_candidate_note) - Get Candidate Note
* [get_department](#get_department) - Get Department
* [get_interview](#get_interview) - Get Interview
* [~~get_interview_stage~~](#get_interview_stage) - Get Interview Stage :warning: **Deprecated**
* [get_job](#get_job) - Get Job
* [get_job_application_stage](#get_job_application_stage) - Get Job Application Stage
* [get_job_custom_field_definition](#get_job_custom_field_definition) - Get Job Custom Field Definition
* [get_job_posting](#get_job_posting) - Get Job Posting
* [get_list](#get_list) - Get List
* [get_location](#get_location) - Get Location
* [get_offer](#get_offer) - Get Offer
* [get_rejected_reason](#get_rejected_reason) - Get Rejected Reason
* [get_user](#get_user) - Get User
* [list_application_changes](#list_application_changes) - List Application Changes
* [list_application_custom_field_definitions](#list_application_custom_field_definitions) - List Application Custom Field Definitions
* [list_application_document_categories](#list_application_document_categories) - List Application Document Categories
* [list_application_documents](#list_application_documents) - List Application Documents
* [list_application_notes](#list_application_notes) - List Application Notes
* [list_application_scorecards](#list_application_scorecards) - List Application Scorecards
* [list_application_stages](#list_application_stages) - List Application Stages
* [list_applications](#list_applications) - List Applications
* [list_applications_offers](#list_applications_offers) - List Application Offers
* [list_applications_scheduled_interviews](#list_applications_scheduled_interviews) - List Applications scheduled interviews
* [list_assessments_packages](#list_assessments_packages) - List Assessments Packages
* [list_background_check_packages](#list_background_check_packages) - List Background Check Packages
* [list_candidate_custom_field_definitions](#list_candidate_custom_field_definitions) - List Candidate Custom Field Definitions
* [list_candidate_notes](#list_candidate_notes) - List Candidate Notes
* [list_candidates](#list_candidates) - List Candidates
* [list_departments](#list_departments) - List Departments
* [~~list_interview_stages~~](#list_interview_stages) - List Interview Stages :warning: **Deprecated**
* [list_interviews](#list_interviews) - List Interviews
* [list_job_application_stages](#list_job_application_stages) - List Job Application Stages
* [list_job_custom_field_definitions](#list_job_custom_field_definitions) - List Job Custom Field Definitions
* [list_job_postings](#list_job_postings) - List Job Postings
* [list_jobs](#list_jobs) - List Jobs
* [list_lists](#list_lists) - Get all Lists
* [list_locations](#list_locations) - List locations
* [list_offers](#list_offers) - List Offers
* [list_rejected_reasons](#list_rejected_reasons) - List Rejected Reasons
* [list_users](#list_users) - List Users
* [move_application](#move_application) - Move Application
* [order_assessments_request](#order_assessments_request) - Order Assessments Request
* [order_background_check_request](#order_background_check_request) - Order Background Check Request
* [reject_application](#reject_application) - Reject Application
* [update_application](#update_application) - Update Application
* [update_application_note](#update_application_note) - Update Application Note
* [update_assessments_result](#update_assessments_result) - Update Assessments Result
* [update_background_check_package](#update_background_check_package) - Update Background Check Package
* [update_background_check_result](#update_background_check_result) - Update Background Check Result
* [update_candidate](#update_candidate) - Update Candidate
* [update_interview_note](#update_interview_note) - Update Interview Note
* [update_job](#update_job) - Update Job
* [upload_application_document](#upload_application_document) - Upload Application Document

## create_application

Create Application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_create_application" method="post" path="/unified/ats/applications" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.create_application(ats_create_application_request_dto: Models::Shared::AtsCreateApplicationRequestDto.new(
  application_status: nil,
  candidate: Models::Shared::AtsCreateApplicationRequestDtoCandidate.new(
    company: 'Company Inc.',
    country: 'United States',
    custom_fields: [
      Models::Shared::CustomFields.new(
        id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
        name: 'Training Completion Status',
        remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
        remote_value_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
        value: 'Completed',
        value_id: 'value_456',
      ),
    ],
    email: 'sestier.romain123@gmail.com',
    first_name: 'Romain',
    hired_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    last_name: 'Sestier',
    name: 'Romain Sestier',
    passthrough: {
      "other_known_names": 'John Doe',
    },
    phone_numbers: [
      Models::Shared::PhoneNumber.new(
        phone: '+447700112233',
      ),
    ],
    social_links: [
      Models::Shared::SocialLink.new(
        type: 'linkedin',
        url: 'https://www.linkedin.com/in/romainsestier/',
      ),
    ],
    title: 'Software Engineer',
    unified_custom_fields: {
      "my_project_custom_field_1": 'REF-1236',
      "my_project_custom_field_2": 'some other value',
    },
  ),
  candidate_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
  documents: [
    Models::Shared::AtsDocumentsUploadRequestDto.new(
      category: Models::Shared::AtsDocumentsUploadRequestDtoCategory.new(),
      category_id: '6530',
      confidential: Models::Shared::AtsDocumentsUploadRequestDtoConfidential.new(
        source_value: 'public',
        value: Models::Shared::AtsDocumentsUploadRequestDtoSchemasValue::TRUE,
      ),
      content: 'VGhpcyBpc24ndCByZWFsbHkgYSBzYW1wbGUgZmlsZSwgYnV0IG5vIG9uZSB3aWxsIGV2ZXIga25vdyE',
      file_format: Models::Shared::AtsDocumentsUploadRequestDtoFileFormat.new(
        source_value: 'application/pdf',
        value: Models::Shared::AtsDocumentsUploadRequestDtoSchemasFileFormatValue::PDF,
      ),
      name: 'weather-forecast',
      path: '/path/to/file',
    ),
  ],
  job_id: '4071538b-3cac-4fbf-ac76-f78ed250ffdd',
  job_posting_id: '1c702a20-8de8-4d03-ac18-cbf4ac42eb51',
  location_id: 'dd8d41d1-5eb8-4408-9c87-9ba44604eae4',
  passthrough: {
    "other_known_names": 'John Doe',
  },
  questionnaires: [
    Models::Shared::CreateQuestionnaire.new(
      answers: [
        Models::Shared::CreateAnswer.new(
          id: 'answer1',
          type: Models::Shared::CreateAnswerType.new(
            source_value: 'Short Text',
            value: Models::Shared::CreateAnswerValue::SHORT_TEXT,
          ),
          values: [
            'Yes',
          ],
        ),
      ],
      id: 'right_to_work',
    ),
  ],
  source: nil,
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `ats_create_application_request_dto`                                                                    | [Models::Shared::AtsCreateApplicationRequestDto](../../models/shared/atscreateapplicationrequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |

### Response

**[T.nilable(Models::Operations::AtsCreateApplicationResponse)](../../models/operations/atscreateapplicationresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_application_note

Create Application Note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_create_application_note" method="post" path="/unified/ats/applications/{id}/notes" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.create_application_note(ats_create_notes_request_dto: Models::Shared::AtsCreateNotesRequestDto.new(
  author_id: '1234567890',
  content: [
    Models::Shared::NoteContentApiModel.new(
      body: 'This candidate seems like a good fit for the role',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
  visibility: Models::Shared::Visibility.new(
    source_value: 'Public',
    value: Models::Shared::AtsCreateNotesRequestDtoValue::PUBLIC,
  ),
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `ats_create_notes_request_dto`                                                              | [Models::Shared::AtsCreateNotesRequestDto](../../models/shared/atscreatenotesrequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `id`                                                                                        | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `x_account_id`                                                                              | *::String*                                                                                  | :heavy_check_mark:                                                                          | The account identifier                                                                      |

### Response

**[T.nilable(Models::Operations::AtsCreateApplicationNoteResponse)](../../models/operations/atscreateapplicationnoteresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_background_check_package

Create Background Check Package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_create_background_check_package" method="post" path="/unified/ats/background_checks/packages" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.create_background_check_package(ats_create_background_check_packages_request_dto: Models::Shared::AtsCreateBackgroundCheckPackagesRequestDto.new(
  description: 'Skills test to gauge a candidate\'s proficiency in job-specific skills',
  name: 'Test 1',
  passthrough: {
    "other_known_names": 'John Doe',
  },
  tests: [
    Models::Shared::CreatePackage.new(
      description: 'Skills test to gauge a candidate\'s proficiency in job-specific skills',
      name: 'Test 1',
    ),
  ],
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `ats_create_background_check_packages_request_dto`                                                                              | [Models::Shared::AtsCreateBackgroundCheckPackagesRequestDto](../../models/shared/atscreatebackgroundcheckpackagesrequestdto.md) | :heavy_check_mark:                                                                                                              | N/A                                                                                                                             |
| `x_account_id`                                                                                                                  | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | The account identifier                                                                                                          |

### Response

**[T.nilable(Models::Operations::AtsCreateBackgroundCheckPackageResponse)](../../models/operations/atscreatebackgroundcheckpackageresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_candidate

Create Candidate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_create_candidate" method="post" path="/unified/ats/candidates" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.create_candidate(ats_create_candidate_request_dto: Models::Shared::AtsCreateCandidateRequestDto.new(
  company: 'Company Inc.',
  country: 'United States',
  custom_fields: [
    Models::Shared::CustomFields.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      name: 'Training Completion Status',
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      remote_value_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
      value: 'Completed',
      value_id: 'value_456',
    ),
  ],
  email: 'sestier.romain123@gmail.com',
  first_name: 'Romain',
  hired_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  last_name: 'Sestier',
  name: 'Romain Sestier',
  passthrough: {
    "other_known_names": 'John Doe',
  },
  phone_numbers: [
    Models::Shared::PhoneNumber.new(
      phone: '+447700112233',
    ),
  ],
  social_links: [
    Models::Shared::SocialLink.new(
      type: 'linkedin',
      url: 'https://www.linkedin.com/in/romainsestier/',
    ),
  ],
  title: 'Software Engineer',
  unified_custom_fields: {
    "my_project_custom_field_1": 'REF-1236',
    "my_project_custom_field_2": 'some other value',
  },
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `ats_create_candidate_request_dto`                                                                  | [Models::Shared::AtsCreateCandidateRequestDto](../../models/shared/atscreatecandidaterequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(Models::Operations::AtsCreateCandidateResponse)](../../models/operations/atscreatecandidateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_candidate_note

Create Candidate Note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_create_candidate_note" method="post" path="/unified/ats/candidates/{id}/notes" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.create_candidate_note(ats_create_notes_request_dto: Models::Shared::AtsCreateNotesRequestDto.new(
  author_id: '1234567890',
  content: [
    Models::Shared::NoteContentApiModel.new(
      body: 'This candidate seems like a good fit for the role',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
  visibility: Models::Shared::Visibility.new(
    source_value: 'Public',
    value: Models::Shared::AtsCreateNotesRequestDtoValue::PUBLIC,
  ),
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `ats_create_notes_request_dto`                                                              | [Models::Shared::AtsCreateNotesRequestDto](../../models/shared/atscreatenotesrequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `id`                                                                                        | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `x_account_id`                                                                              | *::String*                                                                                  | :heavy_check_mark:                                                                          | The account identifier                                                                      |

### Response

**[T.nilable(Models::Operations::AtsCreateCandidateNoteResponse)](../../models/operations/atscreatecandidatenoteresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_interview_note

Create Interview Note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_create_interview_note" method="post" path="/unified/ats/interviews/{id}/notes" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.create_interview_note(ats_create_notes_request_dto: Models::Shared::AtsCreateNotesRequestDto.new(
  author_id: '1234567890',
  content: [
    Models::Shared::NoteContentApiModel.new(
      body: 'This candidate seems like a good fit for the role',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
  visibility: Models::Shared::Visibility.new(
    source_value: 'Public',
    value: Models::Shared::AtsCreateNotesRequestDtoValue::PUBLIC,
  ),
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `ats_create_notes_request_dto`                                                              | [Models::Shared::AtsCreateNotesRequestDto](../../models/shared/atscreatenotesrequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `id`                                                                                        | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `x_account_id`                                                                              | *::String*                                                                                  | :heavy_check_mark:                                                                          | The account identifier                                                                      |

### Response

**[T.nilable(Models::Operations::AtsCreateInterviewNoteResponse)](../../models/operations/atscreateinterviewnoteresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_job

Create Job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_create_job" method="post" path="/unified/ats/jobs" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.create_job(ats_create_job_request_dto: Models::Shared::AtsCreateJobRequestDto.new(
  code: '184919',
  custom_fields: [
    Models::Shared::CustomFields.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      name: 'Training Completion Status',
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      remote_value_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
      value: 'Completed',
      value_id: 'value_456',
    ),
  ],
  department_ids: [
    '308570',
    '308571',
    '308572',
  ],
  description: 'Responsible for identifying business requirements',
  hiring_team: [
    Models::Shared::AtsJobHiringTeam.new(
      email: 'john.doe@gmail.com',
      first_name: 'John',
      last_name: 'Doe',
      remote_user_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
      role: 'Software Engineer',
      user_id: '123456',
    ),
  ],
  interview_stages: [
    Models::Shared::InterviewStage.new(
      created_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      unified_custom_fields: {
        "my_project_custom_field_1": 'REF-1236',
        "my_project_custom_field_2": 'some other value',
      },
      updated_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    ),
  ],
  job_status: Models::Shared::JobStatus.new(
    source_value: 'Published',
    value: Models::Shared::AtsCreateJobRequestDtoValue::PUBLISHED,
  ),
  location_ids: [
    '668570',
    '678571',
    '688572',
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
  title: 'Software Engineer',
  unified_custom_fields: {
    "my_project_custom_field_1": 'REF-1236',
    "my_project_custom_field_2": 'some other value',
  },
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `ats_create_job_request_dto`                                                            | [Models::Shared::AtsCreateJobRequestDto](../../models/shared/atscreatejobrequestdto.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `x_account_id`                                                                          | *::String*                                                                              | :heavy_check_mark:                                                                      | The account identifier                                                                  |

### Response

**[T.nilable(Models::Operations::AtsCreateJobResponse)](../../models/operations/atscreatejobresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_offer

Create Offer

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_create_offer" method="post" path="/unified/ats/offers" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.create_offer(ats_create_offer_request_dto: Models::Shared::AtsCreateOfferRequestDto.new(
  offer_history: [
    Models::Shared::OfferHistory.new(
      created_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      updated_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    ),
  ],
  offer_status: Models::Shared::OfferStatus.new(
    source_value: 'Pending',
    value: Models::Shared::AtsCreateOfferRequestDtoValue::PENDING,
  ),
  passthrough: {
    "other_known_names": 'John Doe',
  },
  start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `ats_create_offer_request_dto`                                                              | [Models::Shared::AtsCreateOfferRequestDto](../../models/shared/atscreateofferrequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `x_account_id`                                                                              | *::String*                                                                                  | :heavy_check_mark:                                                                          | The account identifier                                                                      |

### Response

**[T.nilable(Models::Operations::AtsCreateOfferResponse)](../../models/operations/atscreateofferresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## delete_background_check_package

Delete Background Check Package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_delete_background_check_package" method="delete" path="/unified/ats/background_checks/packages/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.delete_background_check_package(id: '<id>', x_account_id: '<id>')

unless res.delete_result.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `id`                   | *::String*             | :heavy_check_mark:     | N/A                    |
| `x_account_id`         | *::String*             | :heavy_check_mark:     | The account identifier |

### Response

**[T.nilable(Models::Operations::AtsDeleteBackgroundCheckPackageResponse)](../../models/operations/atsdeletebackgroundcheckpackageresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## download_application_document

Download Application Document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_download_application_document" method="get" path="/unified/ats/applications/{id}/documents/{subResourceId}/download" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsDownloadApplicationDocumentRequest.new(
  export_format: 'text/plain',
  format: 'base64',
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.download_application_document(request: req)

unless res.body.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::AtsDownloadApplicationDocumentRequest](../../models/operations/atsdownloadapplicationdocumentrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::AtsDownloadApplicationDocumentResponse)](../../models/operations/atsdownloadapplicationdocumentresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_application

Get Application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_application" method="get" path="/unified/ats/applications/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetApplicationRequest.new(
  expand: 'documents',
  fields_: 'id,remote_id,candidate_id,remote_candidate_id,job_id,remote_job_id,job_posting_id,remote_job_posting_id,interview_stage,interview_stage_id,remote_interview_stage_id,application_stage,application_stage_id,remote_application_stage_id,rejected_reason,rejected_reason_id,remote_rejected_reason_id,rejected_reason_ids,remote_rejected_reason_ids,rejected_reasons,rejected_at,location_id,remote_location_id,location_ids,remote_location_ids,status,application_status,questionnaires,attachments,result_links,source,created_at,updated_at,documents,custom_fields,candidate,unified_custom_fields',
  id: '<id>',
  include: 'attachments,custom_fields',
  x_account_id: '<id>',
)

res = s.ats.get_application(request: req)

unless res.application_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::AtsGetApplicationRequest](../../models/operations/atsgetapplicationrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::AtsGetApplicationResponse)](../../models/operations/atsgetapplicationresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_application_custom_field_definition

Get Application Custom Field Definition

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_application_custom_field_definition" method="get" path="/unified/ats/custom_field_definitions/applications/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetApplicationCustomFieldDefinitionRequest.new(
  fields_: 'id,remote_id,name,description,type,options,unified_custom_fields',
  filter: nil,
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_application_custom_field_definition(request: req)

unless res.custom_field_definition_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                     | Type                                                                                                                                          | Required                                                                                                                                      | Description                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                     | [Models::Operations::AtsGetApplicationCustomFieldDefinitionRequest](../../models/operations/atsgetapplicationcustomfielddefinitionrequest.md) | :heavy_check_mark:                                                                                                                            | The request object to use for the request.                                                                                                    |

### Response

**[T.nilable(Models::Operations::AtsGetApplicationCustomFieldDefinitionResponse)](../../models/operations/atsgetapplicationcustomfielddefinitionresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_application_document

Get Application Document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_application_document" method="get" path="/unified/ats/applications/{id}/documents/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetApplicationDocumentRequest.new(
  fields_: 'id,remote_id,name,type,category,category_id,remote_category_id,contents,created_at,updated_at,remote_url,file_format,unified_custom_fields',
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_application_document(request: req)

unless res.ats_document_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::AtsGetApplicationDocumentRequest](../../models/operations/atsgetapplicationdocumentrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::AtsGetApplicationDocumentResponse)](../../models/operations/atsgetapplicationdocumentresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_application_document_category

Get Application Document Category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_application_document_category" method="get" path="/unified/ats/documents/application_categories/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetApplicationDocumentCategoryRequest.new(
  fields_: 'id,remote_id,name,active,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_application_document_category(request: req)

unless res.reference_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [Models::Operations::AtsGetApplicationDocumentCategoryRequest](../../models/operations/atsgetapplicationdocumentcategoryrequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |

### Response

**[T.nilable(Models::Operations::AtsGetApplicationDocumentCategoryResponse)](../../models/operations/atsgetapplicationdocumentcategoryresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_application_note

Get Application Note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_application_note" method="get" path="/unified/ats/applications/{id}/notes/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetApplicationNoteRequest.new(
  fields_: 'id,remote_id,content,author_id,remote_author_id,visibility,created_at,updated_at,deleted_at,unified_custom_fields',
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_application_note(request: req)

unless res.note_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::AtsGetApplicationNoteRequest](../../models/operations/atsgetapplicationnoterequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::AtsGetApplicationNoteResponse)](../../models/operations/atsgetapplicationnoteresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_application_offer

Get Application Offer

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_application_offer" method="get" path="/unified/ats/applications/{id}/offers/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetApplicationOfferRequest.new(
  fields_: 'id,remote_id,application_id,remote_application_id,start_date,offer_status,salary,currency,created_at,updated_at,offer_history,unified_custom_fields',
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_application_offer(request: req)

unless res.offers_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::AtsGetApplicationOfferRequest](../../models/operations/atsgetapplicationofferrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::AtsGetApplicationOfferResponse)](../../models/operations/atsgetapplicationofferresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_application_scheduled_interview

Get Applications scheduled interview

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_application_scheduled_interview" method="get" path="/unified/ats/applications/{id}/scheduled_interviews/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetApplicationScheduledInterviewRequest.new(
  fields_: 'id,remote_id,candidate_id,remote_candidate_id,job_id,remote_job_id,job_posting_id,remote_job_posting_id,interview_stage,interview_stage_id,remote_interview_stage_id,application_stage,application_stage_id,remote_application_stage_id,rejected_reason,rejected_reason_id,remote_rejected_reason_id,rejected_reason_ids,remote_rejected_reason_ids,rejected_reasons,rejected_at,location_id,remote_location_id,location_ids,remote_location_ids,status,application_status,questionnaires,attachments,result_links,source,created_at,updated_at,documents,custom_fields,candidate,unified_custom_fields',
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_application_scheduled_interview(request: req)

unless res.scheduled_interviews_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                               | Type                                                                                                                                    | Required                                                                                                                                | Description                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                               | [Models::Operations::AtsGetApplicationScheduledInterviewRequest](../../models/operations/atsgetapplicationscheduledinterviewrequest.md) | :heavy_check_mark:                                                                                                                      | The request object to use for the request.                                                                                              |

### Response

**[T.nilable(Models::Operations::AtsGetApplicationScheduledInterviewResponse)](../../models/operations/atsgetapplicationscheduledinterviewresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_application_scorecard

Get Application Scorecard

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_application_scorecard" method="get" path="/unified/ats/applications/{id}/scorecards/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetApplicationScorecardRequest.new(
  fields_: 'id,remote_id,sections,label,candidate_id,remote_candidate_id,application_id,remote_application_id,interview_id,remote_interview_id,author_id,remote_author_id,overall_recommendation,created_at,updated_at,unified_custom_fields',
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_application_scorecard(request: req)

unless res.scorecards_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::AtsGetApplicationScorecardRequest](../../models/operations/atsgetapplicationscorecardrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::AtsGetApplicationScorecardResponse)](../../models/operations/atsgetapplicationscorecardresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_application_stage

Get Application Stage

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_application_stage" method="get" path="/unified/ats/application_stages/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetApplicationStageRequest.new(
  fields_: 'id,remote_id,name,order,created_at,updated_at,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_application_stage(request: req)

unless res.interview_stage_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::AtsGetApplicationStageRequest](../../models/operations/atsgetapplicationstagerequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::AtsGetApplicationStageResponse)](../../models/operations/atsgetapplicationstageresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_assessments_package

Get Assessments Package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_assessments_package" method="get" path="/unified/ats/assessments/packages/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetAssessmentsPackageRequest.new(
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_assessments_package(request: req)

unless res.assessment_package_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::AtsGetAssessmentsPackageRequest](../../models/operations/atsgetassessmentspackagerequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::AtsGetAssessmentsPackageResponse)](../../models/operations/atsgetassessmentspackageresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_background_check_package

Get Background Check Package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_background_check_package" method="get" path="/unified/ats/background_checks/packages/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetBackgroundCheckPackageRequest.new(
  fields_: 'id,remote_id,name,description,tests,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_background_check_package(request: req)

unless res.background_check_package_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::AtsGetBackgroundCheckPackageRequest](../../models/operations/atsgetbackgroundcheckpackagerequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::AtsGetBackgroundCheckPackageResponse)](../../models/operations/atsgetbackgroundcheckpackageresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_candidate

Get Candidate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_candidate" method="get" path="/unified/ats/candidates/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetCandidateRequest.new(
  fields_: 'id,remote_id,name,first_name,last_name,email,emails,social_links,phone,phone_numbers,company,country,title,application_ids,remote_application_ids,hired_at,custom_fields,tags,created_at,updated_at,unified_custom_fields',
  id: '<id>',
  include: 'custom_fields',
  x_account_id: '<id>',
)

res = s.ats.get_candidate(request: req)

unless res.candidate_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::AtsGetCandidateRequest](../../models/operations/atsgetcandidaterequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::AtsGetCandidateResponse)](../../models/operations/atsgetcandidateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_candidate_custom_field_definition

Get Candidate Custom Field Definition

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_candidate_custom_field_definition" method="get" path="/unified/ats/custom_field_definitions/candidates/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetCandidateCustomFieldDefinitionRequest.new(
  fields_: 'id,remote_id,name,description,type,options,unified_custom_fields',
  filter: Models::Operations::AtsGetCandidateCustomFieldDefinitionQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_candidate_custom_field_definition(request: req)

unless res.custom_field_definition_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                 | [Models::Operations::AtsGetCandidateCustomFieldDefinitionRequest](../../models/operations/atsgetcandidatecustomfielddefinitionrequest.md) | :heavy_check_mark:                                                                                                                        | The request object to use for the request.                                                                                                |

### Response

**[T.nilable(Models::Operations::AtsGetCandidateCustomFieldDefinitionResponse)](../../models/operations/atsgetcandidatecustomfielddefinitionresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_candidate_note

Get Candidate Note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_candidate_note" method="get" path="/unified/ats/candidates/{id}/notes/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetCandidateNoteRequest.new(
  fields_: 'id,remote_id,content,author_id,remote_author_id,visibility,created_at,updated_at,deleted_at,unified_custom_fields',
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_candidate_note(request: req)

unless res.note_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::AtsGetCandidateNoteRequest](../../models/operations/atsgetcandidatenoterequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::AtsGetCandidateNoteResponse)](../../models/operations/atsgetcandidatenoteresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_department

Get Department

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_department" method="get" path="/unified/ats/departments/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetDepartmentRequest.new(
  fields_: 'id,remote_id,name,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_department(request: req)

unless res.department_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::AtsGetDepartmentRequest](../../models/operations/atsgetdepartmentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::AtsGetDepartmentResponse)](../../models/operations/atsgetdepartmentresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_interview

Get Interview

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_interview" method="get" path="/unified/ats/interviews/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetInterviewRequest.new(
  fields_: 'id,remote_id,application_id,remote_application_id,interview_stage_id,remote_interview_stage_id,interview_stage,status,interview_status,interviewer_ids,remote_interviewer_ids,interview_parts,interviewers,start_at,end_at,meeting_url,created_at,updated_at,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_interview(request: req)

unless res.interviews_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::AtsGetInterviewRequest](../../models/operations/atsgetinterviewrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::AtsGetInterviewResponse)](../../models/operations/atsgetinterviewresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## ~~get_interview_stage~~

Get Interview Stage

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_interview_stage" method="get" path="/unified/ats/interview_stages/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetInterviewStageRequest.new(
  fields_: 'id,remote_id,name,order,created_at,updated_at,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_interview_stage(request: req)

unless res.interview_stage_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::AtsGetInterviewStageRequest](../../models/operations/atsgetinterviewstagerequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::AtsGetInterviewStageResponse)](../../models/operations/atsgetinterviewstageresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_job

Get Job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_job" method="get" path="/unified/ats/jobs/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetJobRequest.new(
  expand: 'job_postings,interview_stages',
  fields_: 'id,remote_id,code,title,description,status,job_status,department_ids,remote_department_ids,location_ids,remote_location_ids,hiring_team,interview_stages,confidential,custom_fields,created_at,updated_at,unified_custom_fields',
  id: '<id>',
  include: 'custom_fields',
  x_account_id: '<id>',
)

res = s.ats.get_job(request: req)

unless res.ats_job_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Models::Operations::AtsGetJobRequest](../../models/operations/atsgetjobrequest.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |

### Response

**[T.nilable(Models::Operations::AtsGetJobResponse)](../../models/operations/atsgetjobresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_job_application_stage

Get Job Application Stage

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_job_application_stage" method="get" path="/unified/ats/jobs/{id}/application_stages/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetJobApplicationStageRequest.new(
  fields_: 'id,remote_id,name,order,created_at,updated_at,unified_custom_fields',
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_job_application_stage(request: req)

unless res.application_stage_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::AtsGetJobApplicationStageRequest](../../models/operations/atsgetjobapplicationstagerequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::AtsGetJobApplicationStageResponse)](../../models/operations/atsgetjobapplicationstageresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_job_custom_field_definition

Get Job Custom Field Definition

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_job_custom_field_definition" method="get" path="/unified/ats/custom_field_definitions/jobs/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetJobCustomFieldDefinitionRequest.new(
  fields_: 'id,remote_id,name,description,type,options,unified_custom_fields',
  filter: Models::Operations::AtsGetJobCustomFieldDefinitionQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_job_custom_field_definition(request: req)

unless res.custom_field_definition_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::AtsGetJobCustomFieldDefinitionRequest](../../models/operations/atsgetjobcustomfielddefinitionrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::AtsGetJobCustomFieldDefinitionResponse)](../../models/operations/atsgetjobcustomfielddefinitionresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_job_posting

Get Job Posting

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_job_posting" method="get" path="/unified/ats/job_postings/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetJobPostingRequest.new(
  fields_: 'id,remote_id,title,locations,internal,status,job_id,remote_job_id,content,compensation,employment_type,employment_contract_type,external_url,external_apply_url,questionnaires,start_date,updated_at,created_at,unified_custom_fields',
  id: '<id>',
  include: 'questionnaires',
  x_account_id: '<id>',
)

res = s.ats.get_job_posting(request: req)

unless res.job_posting_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::AtsGetJobPostingRequest](../../models/operations/atsgetjobpostingrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::AtsGetJobPostingResponse)](../../models/operations/atsgetjobpostingresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_list

Get List

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_list" method="get" path="/unified/ats/lists/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetListRequest.new(
  fields_: 'id,remote_id,name,created_at,updated_at,items,type,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_list(request: req)

unless res.list_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::AtsGetListRequest](../../models/operations/atsgetlistrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::AtsGetListResponse)](../../models/operations/atsgetlistresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_location

Get Location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_location" method="get" path="/unified/ats/locations/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetLocationRequest.new(
  fields_: 'id,remote_id,name,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_location(request: req)

unless res.ats_location_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::AtsGetLocationRequest](../../models/operations/atsgetlocationrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::AtsGetLocationResponse)](../../models/operations/atsgetlocationresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_offer

Get Offer

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_offer" method="get" path="/unified/ats/offers/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetOfferRequest.new(
  fields_: 'id,remote_id,application_id,remote_application_id,start_date,offer_status,salary,currency,created_at,updated_at,offer_history,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_offer(request: req)

unless res.offers_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::AtsGetOfferRequest](../../models/operations/atsgetofferrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::AtsGetOfferResponse)](../../models/operations/atsgetofferresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_rejected_reason

Get Rejected Reason

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_rejected_reason" method="get" path="/unified/ats/rejected_reasons/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetRejectedReasonRequest.new(
  fields_: 'id,remote_id,label,type,rejected_reason_type,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_rejected_reason(request: req)

unless res.rejected_reason_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::AtsGetRejectedReasonRequest](../../models/operations/atsgetrejectedreasonrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::AtsGetRejectedReasonResponse)](../../models/operations/atsgetrejectedreasonresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_user

Get User

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_get_user" method="get" path="/unified/ats/users/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsGetUserRequest.new(
  fields_: 'id,remote_id,first_name,last_name,name,email,phone,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.get_user(request: req)

unless res.user_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::AtsGetUserRequest](../../models/operations/atsgetuserrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::AtsGetUserResponse)](../../models/operations/atsgetuserresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_application_changes

List Application Changes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_application_changes" method="get" path="/unified/ats/applications/{id}/changes" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationChangesRequest.new(
  fields_: 'event_id,remote_event_id,created_at,effective_at,change_type,actor,new_values,unified_custom_fields',
  filter: Models::Operations::AtsListApplicationChangesQueryParamFilter.new(
    created_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.list_application_changes(request: req)

unless res.application_changes_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::AtsListApplicationChangesRequest](../../models/operations/atslistapplicationchangesrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::AtsListApplicationChangesResponse)](../../models/operations/atslistapplicationchangesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_application_custom_field_definitions

List Application Custom Field Definitions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_application_custom_field_definitions" method="get" path="/unified/ats/custom_field_definitions/applications" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationCustomFieldDefinitionsRequest.new(
  fields_: 'id,remote_id,name,description,type,options,unified_custom_fields',
  filter: nil,
  x_account_id: '<id>',
)

res = s.ats.list_application_custom_field_definitions(request: req)

unless res.custom_field_definitions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                         | [Models::Operations::AtsListApplicationCustomFieldDefinitionsRequest](../../models/operations/atslistapplicationcustomfielddefinitionsrequest.md) | :heavy_check_mark:                                                                                                                                | The request object to use for the request.                                                                                                        |

### Response

**[T.nilable(Models::Operations::AtsListApplicationCustomFieldDefinitionsResponse)](../../models/operations/atslistapplicationcustomfielddefinitionsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_application_document_categories

List Application Document Categories

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_application_document_categories" method="get" path="/unified/ats/documents/application_categories" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationDocumentCategoriesRequest.new(
  fields_: 'id,remote_id,name,active,unified_custom_fields',
  filter: Models::Operations::AtsListApplicationDocumentCategoriesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_application_document_categories(request: req)

unless res.reference_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                 | [Models::Operations::AtsListApplicationDocumentCategoriesRequest](../../models/operations/atslistapplicationdocumentcategoriesrequest.md) | :heavy_check_mark:                                                                                                                        | The request object to use for the request.                                                                                                |

### Response

**[T.nilable(Models::Operations::AtsListApplicationDocumentCategoriesResponse)](../../models/operations/atslistapplicationdocumentcategoriesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_application_documents

List Application Documents

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_application_documents" method="get" path="/unified/ats/applications/{id}/documents" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationDocumentsRequest.new(
  fields_: 'id,remote_id,name,type,category,category_id,remote_category_id,contents,created_at,updated_at,remote_url,file_format,unified_custom_fields',
  filter: Models::Operations::AtsListApplicationDocumentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.list_application_documents(request: req)

unless res.ats_documents_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::AtsListApplicationDocumentsRequest](../../models/operations/atslistapplicationdocumentsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::AtsListApplicationDocumentsResponse)](../../models/operations/atslistapplicationdocumentsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_application_notes

List Application Notes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_application_notes" method="get" path="/unified/ats/applications/{id}/notes" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationNotesRequest.new(
  fields_: 'id,remote_id,content,author_id,remote_author_id,visibility,created_at,updated_at,deleted_at,unified_custom_fields',
  filter: Models::Operations::AtsListApplicationNotesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.list_application_notes(request: req)

unless res.notes_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::AtsListApplicationNotesRequest](../../models/operations/atslistapplicationnotesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::AtsListApplicationNotesResponse)](../../models/operations/atslistapplicationnotesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_application_scorecards

List Application Scorecards

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_application_scorecards" method="get" path="/unified/ats/applications/{id}/scorecards" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationScorecardsRequest.new(
  fields_: 'id,remote_id,sections,label,candidate_id,remote_candidate_id,application_id,remote_application_id,interview_id,remote_interview_id,author_id,remote_author_id,overall_recommendation,created_at,updated_at,unified_custom_fields',
  filter: Models::Operations::AtsListApplicationScorecardsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.list_application_scorecards(request: req)

unless res.scorecards_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::AtsListApplicationScorecardsRequest](../../models/operations/atslistapplicationscorecardsrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::AtsListApplicationScorecardsResponse)](../../models/operations/atslistapplicationscorecardsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_application_stages

List Application Stages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_application_stages" method="get" path="/unified/ats/application_stages" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationStagesRequest.new(
  fields_: 'id,remote_id,name,order,created_at,updated_at,unified_custom_fields',
  filter: Models::Operations::AtsListApplicationStagesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_application_stages(request: req)

unless res.interview_stages_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::AtsListApplicationStagesRequest](../../models/operations/atslistapplicationstagesrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::AtsListApplicationStagesResponse)](../../models/operations/atslistapplicationstagesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_applications

List Applications

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_applications" method="get" path="/unified/ats/applications" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationsRequest.new(
  expand: 'documents',
  fields_: 'id,remote_id,candidate_id,remote_candidate_id,job_id,remote_job_id,job_posting_id,remote_job_posting_id,interview_stage,interview_stage_id,remote_interview_stage_id,application_stage,application_stage_id,remote_application_stage_id,rejected_reason,rejected_reason_id,remote_rejected_reason_id,rejected_reason_ids,remote_rejected_reason_ids,rejected_reasons,rejected_at,location_id,remote_location_id,location_ids,remote_location_ids,status,application_status,questionnaires,attachments,result_links,source,created_at,updated_at,documents,custom_fields,candidate,unified_custom_fields',
  filter: Models::Operations::AtsListApplicationsQueryParamFilter.new(
    created_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  include: 'attachments,custom_fields',
  x_account_id: '<id>',
)

res = s.ats.list_applications(request: req)

unless res.applications_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::AtsListApplicationsRequest](../../models/operations/atslistapplicationsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::AtsListApplicationsResponse)](../../models/operations/atslistapplicationsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_applications_offers

List Application Offers

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_applications_offers" method="get" path="/unified/ats/applications/{id}/offers" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationsOffersRequest.new(
  fields_: 'id,remote_id,application_id,remote_application_id,start_date,offer_status,salary,currency,created_at,updated_at,offer_history,unified_custom_fields',
  filter: Models::Operations::AtsListApplicationsOffersQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.list_applications_offers(request: req)

unless res.offers_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::AtsListApplicationsOffersRequest](../../models/operations/atslistapplicationsoffersrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::AtsListApplicationsOffersResponse)](../../models/operations/atslistapplicationsoffersresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_applications_scheduled_interviews

List Applications scheduled interviews

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_applications_scheduled_interviews" method="get" path="/unified/ats/applications/{id}/scheduled_interviews" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListApplicationsScheduledInterviewsRequest.new(
  fields_: 'id,remote_id,application_id,remote_application_id,interview_stage_id,remote_interview_stage_id,interview_stage,status,interview_status,interviewer_ids,remote_interviewer_ids,interview_parts,interviewers,start_at,end_at,meeting_url,created_at,updated_at,unified_custom_fields',
  filter: Models::Operations::AtsListApplicationsScheduledInterviewsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.list_applications_scheduled_interviews(request: req)

unless res.scheduled_interviews_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                     | Type                                                                                                                                          | Required                                                                                                                                      | Description                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                     | [Models::Operations::AtsListApplicationsScheduledInterviewsRequest](../../models/operations/atslistapplicationsscheduledinterviewsrequest.md) | :heavy_check_mark:                                                                                                                            | The request object to use for the request.                                                                                                    |

### Response

**[T.nilable(Models::Operations::AtsListApplicationsScheduledInterviewsResponse)](../../models/operations/atslistapplicationsscheduledinterviewsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_assessments_packages

List Assessments Packages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_assessments_packages" method="get" path="/unified/ats/assessments/packages" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListAssessmentsPackagesRequest.new(
  filter: Models::Operations::AtsListAssessmentsPackagesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_assessments_packages(request: req)

unless res.assessment_package_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::AtsListAssessmentsPackagesRequest](../../models/operations/atslistassessmentspackagesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::AtsListAssessmentsPackagesResponse)](../../models/operations/atslistassessmentspackagesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_background_check_packages

List Background Check Packages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_background_check_packages" method="get" path="/unified/ats/background_checks/packages" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListBackgroundCheckPackagesRequest.new(
  fields_: 'id,remote_id,name,description,tests,unified_custom_fields',
  filter: Models::Operations::AtsListBackgroundCheckPackagesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_background_check_packages(request: req)

unless res.background_check_package_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::AtsListBackgroundCheckPackagesRequest](../../models/operations/atslistbackgroundcheckpackagesrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::AtsListBackgroundCheckPackagesResponse)](../../models/operations/atslistbackgroundcheckpackagesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_candidate_custom_field_definitions

List Candidate Custom Field Definitions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_candidate_custom_field_definitions" method="get" path="/unified/ats/custom_field_definitions/candidates" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListCandidateCustomFieldDefinitionsRequest.new(
  fields_: 'id,remote_id,name,description,type,options,unified_custom_fields',
  filter: Models::Operations::AtsListCandidateCustomFieldDefinitionsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_candidate_custom_field_definitions(request: req)

unless res.custom_field_definitions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                     | Type                                                                                                                                          | Required                                                                                                                                      | Description                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                     | [Models::Operations::AtsListCandidateCustomFieldDefinitionsRequest](../../models/operations/atslistcandidatecustomfielddefinitionsrequest.md) | :heavy_check_mark:                                                                                                                            | The request object to use for the request.                                                                                                    |

### Response

**[T.nilable(Models::Operations::AtsListCandidateCustomFieldDefinitionsResponse)](../../models/operations/atslistcandidatecustomfielddefinitionsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_candidate_notes

List Candidate Notes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_candidate_notes" method="get" path="/unified/ats/candidates/{id}/notes" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListCandidateNotesRequest.new(
  fields_: 'id,remote_id,content,author_id,remote_author_id,visibility,created_at,updated_at,deleted_at,unified_custom_fields',
  filter: Models::Operations::AtsListCandidateNotesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.list_candidate_notes(request: req)

unless res.notes_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::AtsListCandidateNotesRequest](../../models/operations/atslistcandidatenotesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::AtsListCandidateNotesResponse)](../../models/operations/atslistcandidatenotesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_candidates

List Candidates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_candidates" method="get" path="/unified/ats/candidates" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListCandidatesRequest.new(
  fields_: 'id,remote_id,name,first_name,last_name,email,emails,social_links,phone,phone_numbers,company,country,title,application_ids,remote_application_ids,hired_at,custom_fields,tags,created_at,updated_at,unified_custom_fields',
  filter: Models::Operations::AtsListCandidatesQueryParamFilter.new(
    created_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  include: 'custom_fields',
  x_account_id: '<id>',
)

res = s.ats.list_candidates(request: req)

unless res.candidates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::AtsListCandidatesRequest](../../models/operations/atslistcandidatesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::AtsListCandidatesResponse)](../../models/operations/atslistcandidatesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_departments

List Departments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_departments" method="get" path="/unified/ats/departments" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListDepartmentsRequest.new(
  fields_: 'id,remote_id,name,unified_custom_fields',
  filter: Models::Operations::AtsListDepartmentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_departments(request: req)

unless res.departments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::AtsListDepartmentsRequest](../../models/operations/atslistdepartmentsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::AtsListDepartmentsResponse)](../../models/operations/atslistdepartmentsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## ~~list_interview_stages~~

List Interview Stages

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_interview_stages" method="get" path="/unified/ats/interview_stages" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListInterviewStagesRequest.new(
  fields_: 'id,remote_id,name,order,created_at,updated_at,unified_custom_fields',
  filter: Models::Operations::AtsListInterviewStagesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_interview_stages(request: req)

unless res.interview_stages_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::AtsListInterviewStagesRequest](../../models/operations/atslistinterviewstagesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::AtsListInterviewStagesResponse)](../../models/operations/atslistinterviewstagesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_interviews

List Interviews

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_interviews" method="get" path="/unified/ats/interviews" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListInterviewsRequest.new(
  fields_: 'id,remote_id,application_id,remote_application_id,interview_stage_id,remote_interview_stage_id,interview_stage,status,interview_status,interviewer_ids,remote_interviewer_ids,interview_parts,interviewers,start_at,end_at,meeting_url,created_at,updated_at,unified_custom_fields',
  filter: Models::Operations::AtsListInterviewsQueryParamFilter.new(
    created_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_interviews(request: req)

unless res.interviews_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::AtsListInterviewsRequest](../../models/operations/atslistinterviewsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::AtsListInterviewsResponse)](../../models/operations/atslistinterviewsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_job_application_stages

List Job Application Stages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_job_application_stages" method="get" path="/unified/ats/jobs/{id}/application_stages" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListJobApplicationStagesRequest.new(
  fields_: 'id,remote_id,name,order,created_at,updated_at,unified_custom_fields',
  filter: Models::Operations::AtsListJobApplicationStagesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.ats.list_job_application_stages(request: req)

unless res.application_stages_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::AtsListJobApplicationStagesRequest](../../models/operations/atslistjobapplicationstagesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::AtsListJobApplicationStagesResponse)](../../models/operations/atslistjobapplicationstagesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_job_custom_field_definitions

List Job Custom Field Definitions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_job_custom_field_definitions" method="get" path="/unified/ats/custom_field_definitions/jobs" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListJobCustomFieldDefinitionsRequest.new(
  fields_: 'id,remote_id,name,description,type,options,unified_custom_fields',
  filter: Models::Operations::AtsListJobCustomFieldDefinitionsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_job_custom_field_definitions(request: req)

unless res.custom_field_definitions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [Models::Operations::AtsListJobCustomFieldDefinitionsRequest](../../models/operations/atslistjobcustomfielddefinitionsrequest.md) | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |

### Response

**[T.nilable(Models::Operations::AtsListJobCustomFieldDefinitionsResponse)](../../models/operations/atslistjobcustomfielddefinitionsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_job_postings

List Job Postings

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_job_postings" method="get" path="/unified/ats/job_postings" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListJobPostingsRequest.new(
  fields_: 'id,remote_id,title,locations,internal,status,job_id,remote_job_id,content,compensation,employment_type,employment_contract_type,external_url,external_apply_url,questionnaires,start_date,updated_at,created_at,unified_custom_fields',
  filter: Models::Operations::AtsListJobPostingsQueryParamFilter.new(
    created_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  include: 'questionnaires',
  x_account_id: '<id>',
)

res = s.ats.list_job_postings(request: req)

unless res.job_postings_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::AtsListJobPostingsRequest](../../models/operations/atslistjobpostingsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::AtsListJobPostingsResponse)](../../models/operations/atslistjobpostingsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_jobs

List Jobs

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_jobs" method="get" path="/unified/ats/jobs" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListJobsRequest.new(
  expand: 'job_postings,interview_stages',
  fields_: 'id,remote_id,code,title,description,status,job_status,department_ids,remote_department_ids,location_ids,remote_location_ids,hiring_team,interview_stages,confidential,custom_fields,created_at,updated_at,unified_custom_fields',
  filter: Models::Operations::AtsListJobsQueryParamFilter.new(
    created_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  include: 'custom_fields',
  x_account_id: '<id>',
)

res = s.ats.list_jobs(request: req)

unless res.ats_jobs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::AtsListJobsRequest](../../models/operations/atslistjobsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::AtsListJobsResponse)](../../models/operations/atslistjobsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_lists

Get all Lists

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_lists" method="get" path="/unified/ats/lists" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListListsRequest.new(
  fields_: 'id,remote_id,name,created_at,updated_at,items,type,unified_custom_fields',
  filter: nil,
  x_account_id: '<id>',
)

res = s.ats.list_lists(request: req)

unless res.lists_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::AtsListListsRequest](../../models/operations/atslistlistsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::AtsListListsResponse)](../../models/operations/atslistlistsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_locations

List locations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_locations" method="get" path="/unified/ats/locations" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListLocationsRequest.new(
  fields_: 'id,remote_id,name,unified_custom_fields',
  filter: Models::Operations::AtsListLocationsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_locations(request: req)

unless res.ats_locations_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::AtsListLocationsRequest](../../models/operations/atslistlocationsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::AtsListLocationsResponse)](../../models/operations/atslistlocationsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_offers

List Offers

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_offers" method="get" path="/unified/ats/offers" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListOffersRequest.new(
  fields_: 'id,remote_id,application_id,remote_application_id,start_date,offer_status,salary,currency,created_at,updated_at,offer_history,unified_custom_fields',
  filter: Models::Operations::AtsListOffersQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_offers(request: req)

unless res.offers_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::AtsListOffersRequest](../../models/operations/atslistoffersrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::AtsListOffersResponse)](../../models/operations/atslistoffersresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_rejected_reasons

List Rejected Reasons

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_rejected_reasons" method="get" path="/unified/ats/rejected_reasons" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListRejectedReasonsRequest.new(
  fields_: 'id,remote_id,label,type,rejected_reason_type,unified_custom_fields',
  filter: Models::Operations::AtsListRejectedReasonsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.ats.list_rejected_reasons(request: req)

unless res.rejected_reasons_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::AtsListRejectedReasonsRequest](../../models/operations/atslistrejectedreasonsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::AtsListRejectedReasonsResponse)](../../models/operations/atslistrejectedreasonsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_users

List Users

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_list_users" method="get" path="/unified/ats/users" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::AtsListUsersRequest.new(
  fields_: 'id,remote_id,first_name,last_name,name,email,phone,unified_custom_fields',
  filter: nil,
  x_account_id: '<id>',
)

res = s.ats.list_users(request: req)

unless res.users_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::AtsListUsersRequest](../../models/operations/atslistusersrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::AtsListUsersResponse)](../../models/operations/atslistusersresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## move_application

Move Application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_move_application" method="post" path="/unified/ats/applications/{id}/move" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.move_application(ats_move_application_request_dto: Models::Shared::AtsMoveApplicationRequestDto.new(
  interview_stage_id: 'f223d7f6-908b-48f0-9237-b201c307f609',
  passthrough: {
    "other_known_names": 'John Doe',
  },
), id: '<id>', x_account_id: '<id>')

unless res.move_application_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `ats_move_application_request_dto`                                                                  | [Models::Shared::AtsMoveApplicationRequestDto](../../models/shared/atsmoveapplicationrequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `id`                                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(Models::Operations::AtsMoveApplicationResponse)](../../models/operations/atsmoveapplicationresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## order_assessments_request

Order Assessments Request

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_order_assessments_request" method="post" path="/unified/ats/assessments/orders" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.order_assessments_request(ats_create_candidates_assessments_request_dto: Models::Shared::AtsCreateCandidatesAssessmentsRequestDto.new(
  application: Models::Shared::AtsCreateCandidatesAssessmentsRequestDtoApplication.new(
    application_status: Models::Shared::AtsCreateCandidatesAssessmentsRequestDtoApplicationStatus.new(
      source_value: 'Hired',
      value: Models::Shared::AtsCreateCandidatesAssessmentsRequestDtoValue::HIRED,
    ),
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    passthrough: {
      "other_known_names": 'John Doe',
    },
    remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
  ),
  candidate: Models::Shared::AtsCreateCandidatesAssessmentsRequestDtoCandidate.new(
    emails: [
      Models::Shared::CandidateEmail.new(
        type: 'personal',
        value: 'sestier.romain123@gmail.com',
      ),
    ],
    first_name: 'Romain',
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    last_name: 'Sestier',
    passthrough: {
      "other_known_names": 'John Doe',
    },
    profile_url: 'https://exmaple.com/candidate?id=xyz',
    remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
  ),
  id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
  job: Models::Shared::AtsCreateCandidatesAssessmentsRequestDtoJob.new(
    hiring_team: [
      Models::Shared::AtsJobHiringTeam.new(
        email: 'john.doe@gmail.com',
        first_name: 'John',
        last_name: 'Doe',
        remote_user_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
        role: 'Software Engineer',
        user_id: '123456',
      ),
    ],
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    passthrough: {
      "other_known_names": 'John Doe',
    },
    remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    title: 'Software Engineer',
  ),
  package: Models::Shared::AtsCreateCandidatesAssessmentsRequestDtoPackage.new(
    description: 'Skills test to gauge a candidate\'s proficiency in job-specific skills',
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    name: 'Test 1',
    remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
  ),
  passthrough: {
    "other_known_names": 'John Doe',
  },
  requester: Models::Shared::AtsCreateCandidatesAssessmentsRequestDtoRequester.new(
    email: 'john.doe@gmail.com',
    first_name: 'John',
    last_name: 'Doe',
    remote_user_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
    role: 'Software Engineer',
    user_id: '123456',
  ),
  results_update_url: 'https://exmaple.com/integrations/results/update',
), x_account_id: '<id>')

unless res.create_assessment_order_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `ats_create_candidates_assessments_request_dto`                                                                             | [Models::Shared::AtsCreateCandidatesAssessmentsRequestDto](../../models/shared/atscreatecandidatesassessmentsrequestdto.md) | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `x_account_id`                                                                                                              | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | The account identifier                                                                                                      |

### Response

**[T.nilable(Models::Operations::AtsOrderAssessmentsRequestResponse)](../../models/operations/atsorderassessmentsrequestresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## order_background_check_request

Order Background Check Request

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_order_background_check_request" method="post" path="/unified/ats/background_checks/orders" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.order_background_check_request(ats_create_background_check_order_request_dto: Models::Shared::AtsCreateBackgroundCheckOrderRequestDto.new(
  application: Models::Shared::AtsCreateBackgroundCheckOrderRequestDtoApplication.new(
    application_status: Models::Shared::AtsCreateBackgroundCheckOrderRequestDtoApplicationStatus.new(
      source_value: 'Hired',
      value: Models::Shared::AtsCreateBackgroundCheckOrderRequestDtoValue::HIRED,
    ),
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    passthrough: {
      "other_known_names": 'John Doe',
    },
    remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
  ),
  candidate: nil,
  id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
  job: Models::Shared::Job.new(
    hiring_team: [
      Models::Shared::AtsJobHiringTeam.new(
        email: 'john.doe@gmail.com',
        first_name: 'John',
        last_name: 'Doe',
        remote_user_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
        role: 'Software Engineer',
        user_id: '123456',
      ),
    ],
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    passthrough: {
      "other_known_names": 'John Doe',
    },
    remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    title: 'Software Engineer',
  ),
  package: Models::Shared::AtsCreateBackgroundCheckOrderRequestDtoPackage.new(
    description: 'Skills test to gauge a candidate\'s proficiency in job-specific skills',
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    name: 'Test 1',
    remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    tests: [
      Models::Shared::Package.new(
        description: 'Skills test to gauge a candidate\'s proficiency in job-specific skills',
        id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
        name: 'Test 1',
        remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      ),
    ],
  ),
  passthrough: {
    "other_known_names": 'John Doe',
  },
  remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
  requester: Models::Shared::Requester.new(
    email: 'john.doe@gmail.com',
    first_name: 'John',
    last_name: 'Doe',
    remote_user_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
    role: 'Software Engineer',
    user_id: '123456',
  ),
  results_update_url: 'https://exmaple.com/integrations/results/update',
), x_account_id: '<id>')

unless res.create_background_check_order_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `ats_create_background_check_order_request_dto`                                                                           | [Models::Shared::AtsCreateBackgroundCheckOrderRequestDto](../../models/shared/atscreatebackgroundcheckorderrequestdto.md) | :heavy_check_mark:                                                                                                        | N/A                                                                                                                       |
| `x_account_id`                                                                                                            | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | The account identifier                                                                                                    |

### Response

**[T.nilable(Models::Operations::AtsOrderBackgroundCheckRequestResponse)](../../models/operations/atsorderbackgroundcheckrequestresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## reject_application

Reject Application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_reject_application" method="post" path="/unified/ats/applications/{id}/reject" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.reject_application(ats_reject_application_request_dto: Models::Shared::AtsRejectApplicationRequestDto.new(
  passthrough: {
    "other_known_names": 'John Doe',
  },
  rejected_reason_id: 'f223d7f6-908b-48f0-9237-b201c307f609',
), id: '<id>', x_account_id: '<id>')

unless res.reject_application_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `ats_reject_application_request_dto`                                                                    | [Models::Shared::AtsRejectApplicationRequestDto](../../models/shared/atsrejectapplicationrequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `id`                                                                                                    | *::String*                                                                                              | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |

### Response

**[T.nilable(Models::Operations::AtsRejectApplicationResponse)](../../models/operations/atsrejectapplicationresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_application

Update Application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_update_application" method="patch" path="/unified/ats/applications/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.update_application(ats_update_application_request_dto: Models::Shared::AtsUpdateApplicationRequestDto.new(
  application_status: Models::Shared::AtsUpdateApplicationRequestDtoApplicationStatus.new(
    source_value: 'Hired',
    value: Models::Shared::AtsUpdateApplicationRequestDtoValue::HIRED,
  ),
  custom_fields: [
    Models::Shared::CustomFields.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      name: 'Training Completion Status',
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      remote_value_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
      value: 'Completed',
      value_id: 'value_456',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
  source: Models::Shared::AtsUpdateApplicationRequestDtoSource.new(
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    name: 'LinkedIn',
  ),
), id: '<id>', x_account_id: '<id>')

unless res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `ats_update_application_request_dto`                                                                    | [Models::Shared::AtsUpdateApplicationRequestDto](../../models/shared/atsupdateapplicationrequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `id`                                                                                                    | *::String*                                                                                              | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |

### Response

**[T.nilable(Models::Operations::AtsUpdateApplicationResponse)](../../models/operations/atsupdateapplicationresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_application_note

Update Application Note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_update_application_note" method="patch" path="/unified/ats/applications/{id}/notes/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.update_application_note(ats_update_notes_request_dto: Models::Shared::AtsUpdateNotesRequestDto.new(
  author_id: '1234567890',
  content: [
    Models::Shared::NoteContentApiModel.new(
      body: 'This candidate seems like a good fit for the role',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
  visibility: Models::Shared::AtsUpdateNotesRequestDtoVisibility.new(
    source_value: 'Public',
    value: Models::Shared::AtsUpdateNotesRequestDtoValue::PUBLIC,
  ),
), id: '<id>', sub_resource_id: '<id>', x_account_id: '<id>')

unless res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `ats_update_notes_request_dto`                                                              | [Models::Shared::AtsUpdateNotesRequestDto](../../models/shared/atsupdatenotesrequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `id`                                                                                        | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `sub_resource_id`                                                                           | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `x_account_id`                                                                              | *::String*                                                                                  | :heavy_check_mark:                                                                          | The account identifier                                                                      |

### Response

**[T.nilable(Models::Operations::AtsUpdateApplicationNoteResponse)](../../models/operations/atsupdateapplicationnoteresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_assessments_result

Update Assessments Result

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_update_assessments_result" method="patch" path="/unified/ats/assessments/orders/{id}/result" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.update_assessments_result(ats_update_candidates_assessments_results_request_dto: Models::Shared::AtsUpdateCandidatesAssessmentsResultsRequestDto.new(
  attachments: nil,
  candidate: Models::Shared::AtsUpdateCandidatesAssessmentsResultsRequestDtoCandidate.new(
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    profile_url: 'https://exmaple.com/candidate?id=xyz',
  ),
  passthrough: {
    "other_known_names": 'John Doe',
  },
  result: Models::Shared::AtsUpdateCandidatesAssessmentsResultsRequestDtoResult.new(
    source_value: 'Passed',
    value: Models::Shared::AtsUpdateCandidatesAssessmentsResultsRequestDtoValue::PASSED,
  ),
  result_url: 'https://exmaple.com/result?id=xyz',
  score: Models::Shared::AtsUpdateCandidatesAssessmentsResultsRequestDtoScore.new(
    label: 'Percentage',
    max: '100',
    min: '0',
    value: '80',
  ),
  start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  submission_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  summary: 'Test is passed',
), id: '<id>', x_account_id: '<id>')

unless res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `ats_update_candidates_assessments_results_request_dto`                                                                                   | [Models::Shared::AtsUpdateCandidatesAssessmentsResultsRequestDto](../../models/shared/atsupdatecandidatesassessmentsresultsrequestdto.md) | :heavy_check_mark:                                                                                                                        | N/A                                                                                                                                       |
| `id`                                                                                                                                      | *::String*                                                                                                                                | :heavy_check_mark:                                                                                                                        | N/A                                                                                                                                       |
| `x_account_id`                                                                                                                            | *::String*                                                                                                                                | :heavy_check_mark:                                                                                                                        | The account identifier                                                                                                                    |

### Response

**[T.nilable(Models::Operations::AtsUpdateAssessmentsResultResponse)](../../models/operations/atsupdateassessmentsresultresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_background_check_package

Update Background Check Package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_update_background_check_package" method="patch" path="/unified/ats/background_checks/packages/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.update_background_check_package(ats_update_background_check_packages_request_dto: Models::Shared::AtsUpdateBackgroundCheckPackagesRequestDto.new(
  description: 'Skills test to gauge a candidate\'s proficiency in job-specific skills',
  name: 'Test 1',
  passthrough: {
    "other_known_names": 'John Doe',
  },
  tests: [
    Models::Shared::UpdatePackage.new(
      description: 'Skills test to gauge a candidate\'s proficiency in job-specific skills',
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      name: 'Test 1',
    ),
  ],
), id: '<id>', x_account_id: '<id>')

unless res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `ats_update_background_check_packages_request_dto`                                                                              | [Models::Shared::AtsUpdateBackgroundCheckPackagesRequestDto](../../models/shared/atsupdatebackgroundcheckpackagesrequestdto.md) | :heavy_check_mark:                                                                                                              | N/A                                                                                                                             |
| `id`                                                                                                                            | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | N/A                                                                                                                             |
| `x_account_id`                                                                                                                  | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | The account identifier                                                                                                          |

### Response

**[T.nilable(Models::Operations::AtsUpdateBackgroundCheckPackageResponse)](../../models/operations/atsupdatebackgroundcheckpackageresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_background_check_result

Update Background Check Result

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_update_background_check_result" method="patch" path="/unified/ats/background_checks/orders/{id}/result" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.update_background_check_result(ats_update_background_check_result_request_dto: Models::Shared::AtsUpdateBackgroundCheckResultRequestDto.new(
  attachments: [
    Models::Shared::Attachment.new(
      content_type: Models::Shared::AttachmentContentType.new(
        source_value: 'Text',
        value: Models::Shared::AttachmentValue::TEXT,
      ),
      url: 'http://example.com/resume.pdf',
    ),
  ],
  candidate: Models::Shared::AtsUpdateBackgroundCheckResultRequestDtoCandidate.new(
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    profile_url: 'https://exmaple.com/candidate?id=xyz',
  ),
  passthrough: {
    "other_known_names": 'John Doe',
  },
  result: Models::Shared::AtsUpdateBackgroundCheckResultRequestDtoResult.new(
    source_value: 'Passed',
    value: Models::Shared::AtsUpdateBackgroundCheckResultRequestDtoValue::PASSED,
  ),
  result_url: 'https://exmaple.com/result?id=xyz',
  score: Models::Shared::Score.new(
    label: 'Percentage',
    max: '100',
    min: '0',
    value: '80',
  ),
  start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  submission_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  summary: 'Test is passed',
), id: '<id>', x_account_id: '<id>')

unless res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `ats_update_background_check_result_request_dto`                                                                            | [Models::Shared::AtsUpdateBackgroundCheckResultRequestDto](../../models/shared/atsupdatebackgroundcheckresultrequestdto.md) | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `x_account_id`                                                                                                              | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | The account identifier                                                                                                      |

### Response

**[T.nilable(Models::Operations::AtsUpdateBackgroundCheckResultResponse)](../../models/operations/atsupdatebackgroundcheckresultresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_candidate

Update Candidate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_update_candidate" method="patch" path="/unified/ats/candidates/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.update_candidate(ats_update_candidate_request_dto: Models::Shared::AtsUpdateCandidateRequestDto.new(
  application_ids: [
    '123e4567-e89b-12d3-a456-426614174000',
    '523e1234-e89b-fdd2-a456-762545121101',
  ],
  company: 'Company Inc.',
  country: 'United States',
  custom_fields: [
    Models::Shared::CustomFields.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      name: 'Training Completion Status',
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      remote_value_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
      value: 'Completed',
      value_id: 'value_456',
    ),
  ],
  email: 'sestier.romain123@gmail.com',
  emails: [
    Models::Shared::CandidateEmail.new(
      type: 'personal',
      value: 'sestier.romain123@gmail.com',
    ),
  ],
  first_name: 'Romain',
  hired_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  last_name: 'Sestier',
  name: 'Romain Sestier',
  passthrough: {
    "other_known_names": 'John Doe',
  },
  phone_numbers: [
    Models::Shared::PhoneNumber.new(
      phone: '+447700112233',
    ),
  ],
  social_links: nil,
  title: 'Software Engineer',
  unified_custom_fields: {
    "my_project_custom_field_1": 'REF-1236',
    "my_project_custom_field_2": 'some other value',
  },
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `ats_update_candidate_request_dto`                                                                  | [Models::Shared::AtsUpdateCandidateRequestDto](../../models/shared/atsupdatecandidaterequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `id`                                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(Models::Operations::AtsUpdateCandidateResponse)](../../models/operations/atsupdatecandidateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_interview_note

Update Interview Note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_update_interview_note" method="patch" path="/unified/ats/interviews/{id}/notes/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.update_interview_note(ats_update_notes_request_dto: Models::Shared::AtsUpdateNotesRequestDto.new(
  author_id: '1234567890',
  content: [
    Models::Shared::NoteContentApiModel.new(
      body: 'This candidate seems like a good fit for the role',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
  visibility: Models::Shared::AtsUpdateNotesRequestDtoVisibility.new(
    source_value: 'Public',
    value: Models::Shared::AtsUpdateNotesRequestDtoValue::PUBLIC,
  ),
), id: '<id>', sub_resource_id: '<id>', x_account_id: '<id>')

unless res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `ats_update_notes_request_dto`                                                              | [Models::Shared::AtsUpdateNotesRequestDto](../../models/shared/atsupdatenotesrequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `id`                                                                                        | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `sub_resource_id`                                                                           | *::String*                                                                                  | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `x_account_id`                                                                              | *::String*                                                                                  | :heavy_check_mark:                                                                          | The account identifier                                                                      |

### Response

**[T.nilable(Models::Operations::AtsUpdateInterviewNoteResponse)](../../models/operations/atsupdateinterviewnoteresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_job

Update Job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_update_job" method="patch" path="/unified/ats/jobs/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.update_job(ats_update_job_request_dto: Models::Shared::AtsUpdateJobRequestDto.new(
  code: '184919',
  custom_fields: [
    Models::Shared::CustomFields.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      name: 'Training Completion Status',
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      remote_value_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
      value: 'Completed',
      value_id: 'value_456',
    ),
  ],
  department_ids: [
    '308570',
    '308571',
    '308572',
  ],
  description: 'Responsible for identifying business requirements',
  hiring_team: [
    Models::Shared::AtsJobHiringTeam.new(
      email: 'john.doe@gmail.com',
      first_name: 'John',
      last_name: 'Doe',
      remote_user_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
      role: 'Software Engineer',
      user_id: '123456',
    ),
  ],
  interview_stages: nil,
  job_status: nil,
  location_ids: [
    '668570',
    '678571',
    '688572',
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
  title: 'Software Engineer',
  unified_custom_fields: {
    "my_project_custom_field_1": 'REF-1236',
    "my_project_custom_field_2": 'some other value',
  },
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `ats_update_job_request_dto`                                                            | [Models::Shared::AtsUpdateJobRequestDto](../../models/shared/atsupdatejobrequestdto.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `x_account_id`                                                                          | *::String*                                                                              | :heavy_check_mark:                                                                      | The account identifier                                                                  |

### Response

**[T.nilable(Models::Operations::AtsUpdateJobResponse)](../../models/operations/atsupdatejobresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## upload_application_document

Upload Application Document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="ats_upload_application_document" method="post" path="/unified/ats/applications/{id}/documents/upload" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.ats.upload_application_document(ats_documents_upload_request_dto: Models::Shared::AtsDocumentsUploadRequestDto.new(
  category: Models::Shared::AtsDocumentsUploadRequestDtoCategory.new(),
  category_id: '6530',
  confidential: nil,
  content: 'VGhpcyBpc24ndCByZWFsbHkgYSBzYW1wbGUgZmlsZSwgYnV0IG5vIG9uZSB3aWxsIGV2ZXIga25vdyE',
  file_format: Models::Shared::AtsDocumentsUploadRequestDtoFileFormat.new(
    source_value: 'application/pdf',
    value: Models::Shared::AtsDocumentsUploadRequestDtoSchemasFileFormatValue::PDF,
  ),
  name: 'weather-forecast',
  path: '/path/to/file',
), id: '<id>', x_account_id: '<id>')

unless res.write_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `ats_documents_upload_request_dto`                                                                  | [Models::Shared::AtsDocumentsUploadRequestDto](../../models/shared/atsdocumentsuploadrequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `id`                                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(Models::Operations::AtsUploadApplicationDocumentResponse)](../../models/operations/atsuploadapplicationdocumentresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |