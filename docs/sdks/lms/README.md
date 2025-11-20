# Lms
(*lms*)

## Overview

### Available Operations

* [batch_upsert_content](#batch_upsert_content) - Batch Upsert External Linking Learning Objects
* [create_user_assignment](#create_user_assignment) - Create User Assignment
* [create_user_completion](#create_user_completion) - Create User Completion
* [delete_user_completion](#delete_user_completion) - Delete User Completion
* [get_assignment](#get_assignment) - Get Assignment
* [get_category](#get_category) - Get Category
* [get_completion](#get_completion) - Get Completion
* [get_content](#get_content) - Get Content
* [get_course](#get_course) - Get Course
* [get_skill](#get_skill) - Get Skill
* [get_user](#get_user) - Get User
* [get_user_assignment](#get_user_assignment) - Get User Assignment
* [get_user_completion](#get_user_completion) - Get User Completion
* [list_assignments](#list_assignments) - List Assignments
* [list_categories](#list_categories) - List Categories
* [list_completions](#list_completions) - List Completions
* [list_content](#list_content) - List Content
* [list_courses](#list_courses) - List Courses
* [list_skills](#list_skills) - List Skills
* [list_user_assignments](#list_user_assignments) - List User Assignments
* [list_user_completions](#list_user_completions) - List User Completions
* [list_users](#list_users) - List Users
* [update_content](#update_content) - Update External Linking Learning Objects
* [upsert_content](#upsert_content) - Upsert External Linking Learning Objects

## batch_upsert_content

Batch upsert multiple external linking learning objects that redirect users to a provider platform for consumption and progress tracking. 

See [here](https://docs.stackone.com/integration-guides/lms/external-content-providers/introduction) for more information about external linking learning objects.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_batch_upsert_content" method="post" path="/unified/lms/content/batch" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.lms.batch_upsert_content(lms_batch_upsert_content_request_dto: Models::Shared::LmsBatchUpsertContentRequestDto.new(
  items: [
    Models::Shared::LmsUpsertContentRequestDto.new(
      active: true,
      additional_data: [
        Models::Shared::AdditionalData.new(
          id: 'learning_outcomes',
          remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
          value: 'This is additional data',
        ),
      ],
      authors: [
        Models::Shared::AuthorModel.new(
          id: '123',
          name: 'John Doe',
        ),
      ],
      categories: [
        Models::Shared::CreateCategoriesApiModel.new(
          id: '16873-IT345',
          language: Models::Shared::CreateCategoriesApiModelLanguage.new(
            value: Models::Shared::CreateCategoriesApiModelSchemasValue::EN_GB,
          ),
          name: 'Information-Technology',
          unified_custom_fields: {
            "my_project_custom_field_1": 'REF-1236',
            "my_project_custom_field_2": 'some other value',
          },
        ),
      ],
      content_url: 'https://www.youtube.com/watch?v=16873',
      cover_url: 'https://www.googledrive.com/?v=16873',
      created_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
      description: 'This video acts as learning content for software engineers.',
      duration: 'P3Y6M4DT12H30M5S',
      external_reference: 'SOFTWARE-ENG-LV1-TRAINING-VIDEO-1',
      languages: [
        Models::Shared::LanguageEnum.new(
          value: Models::Shared::LanguageEnumValue::EN_GB,
        ),
      ],
      localizations: [
        Models::Shared::LocalizationModel.new(
          description: 'This course acts as learning resource for software engineers.',
          title: 'Software Engineer Lv 1',
        ),
        Models::Shared::LocalizationModel.new(
          description: 'This course acts as learning resource for software engineers.',
          title: 'Software Engineer: A comprehensive guide',
        ),
      ],
      mobile_launch_content_url: 'https://www.mobile.youtube.com/watch?v=16873',
      order: 1.0,
      skills: [
        Models::Shared::CreateSkillsApiModel.new(
          id: '12345',
          name: 'Sales Techniques',
        ),
      ],
      tags: [
        'Sales Techniques',
        'Customer Service',
      ],
      title: 'Software Engineer Lv 1',
      unified_custom_fields: {
        "my_project_custom_field_1": 'REF-1236',
        "my_project_custom_field_2": 'some other value',
      },
      updated_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
    ),
  ],
), x_account_id: '<id>')

unless res.batch_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `lms_batch_upsert_content_request_dto`                                                                    | [Models::Shared::LmsBatchUpsertContentRequestDto](../../models/shared/lmsbatchupsertcontentrequestdto.md) | :heavy_check_mark:                                                                                        | N/A                                                                                                       |
| `x_account_id`                                                                                            | *::String*                                                                                                | :heavy_check_mark:                                                                                        | The account identifier                                                                                    |

### Response

**[T.nilable(Models::Operations::LmsBatchUpsertContentResponse)](../../models/operations/lmsbatchupsertcontentresponse.md)**

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

## create_user_assignment

Create an assignment type learning record for a user. 

This is the record linking a user to a learning object. 

It can be pending or in progress.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_create_user_assignment" method="post" path="/unified/lms/users/{id}/assignments" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.lms.create_user_assignment(lms_create_assignment_request_dto: Models::Shared::LmsCreateAssignmentRequestDto.new(
  created_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
  due_date: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
  learning_object_external_reference: 'learning-content-123',
  learning_object_id: 'e3gd34-23tr21-er234-345er56',
  passthrough: {
    "other_known_names": 'John Doe',
  },
  progress: 40.0,
  status: Models::Shared::LmsCreateAssignmentRequestDtoStatus.new(
    value: Models::Shared::LmsCreateAssignmentRequestDtoValue::IN_PROGRESS,
  ),
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `lms_create_assignment_request_dto`                                                                   | [Models::Shared::LmsCreateAssignmentRequestDto](../../models/shared/lmscreateassignmentrequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `id`                                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The account identifier                                                                                |

### Response

**[T.nilable(Models::Operations::LmsCreateUserAssignmentResponse)](../../models/operations/lmscreateuserassignmentresponse.md)**

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

## create_user_completion

Create a completed learning record for a user. 

This is the record of a user completing a learning object.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_create_user_completion" method="post" path="/unified/lms/users/{id}/completions" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.lms.create_user_completion(lms_create_completion_request_dto: Models::Shared::LmsCreateCompletionRequestDto.new(
  completed_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
  learning_object_external_reference: 'learning-content-123',
  learning_object_id: 'e3gd34-23tr21-er234-345er56',
  passthrough: {
    "other_known_names": 'John Doe',
  },
  time_spent: 'PT1H30M45S',
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `lms_create_completion_request_dto`                                                                   | [Models::Shared::LmsCreateCompletionRequestDto](../../models/shared/lmscreatecompletionrequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `id`                                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The account identifier                                                                                |

### Response

**[T.nilable(Models::Operations::LmsCreateUserCompletionResponse)](../../models/operations/lmscreateusercompletionresponse.md)**

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

## delete_user_completion

Delete a completion type learning record for a user. 

This is a record of a user completing a learning object.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_delete_user_completion" method="delete" path="/unified/lms/users/{id}/completions/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.lms.delete_user_completion(id: '<id>', sub_resource_id: '<id>', x_account_id: '<id>')

unless res.delete_result.nil?
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

**[T.nilable(Models::Operations::LmsDeleteUserCompletionResponse)](../../models/operations/lmsdeleteusercompletionresponse.md)**

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

## get_assignment

Retrieve an assignment type learning record by its identifier. 

This is the record linking a user to a learning object. 

It can be pending, in progress, or completed.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_get_assignment" method="get" path="/unified/lms/assignments/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsGetAssignmentRequest.new(
  id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.get_assignment(request: req)

unless res.assignment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::LmsGetAssignmentRequest](../../models/operations/lmsgetassignmentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::LmsGetAssignmentResponse)](../../models/operations/lmsgetassignmentresponse.md)**

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

## get_category

Get Category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_get_category" method="get" path="/unified/lms/categories/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsGetCategoryRequest.new(
  fields_: 'id,remote_id,name,active,hierarchy,level,language,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.get_category(request: req)

unless res.category_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::LmsGetCategoryRequest](../../models/operations/lmsgetcategoryrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::LmsGetCategoryResponse)](../../models/operations/lmsgetcategoryresponse.md)**

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

## get_completion

Retrieve a completed learning record by its identifier. This is the record of a user completing a learning object.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_get_completion" method="get" path="/unified/lms/completions/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsGetCompletionRequest.new(
  id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.get_completion(request: req)

unless res.completion_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::LmsGetCompletionRequest](../../models/operations/lmsgetcompletionrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::LmsGetCompletionResponse)](../../models/operations/lmsgetcompletionresponse.md)**

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

## get_content

Retrieve a content type learning object by its identifier. 

These are the most granular learning objects (e.g. video, document, podcast) on a platform. 

Only content objects for which the platform supports progress and completion tracking are returned.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_get_content" method="get" path="/unified/lms/content/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsGetContentRequest.new(
  fields_: 'id,remote_id,external_reference,course_ids,remote_course_ids,title,description,additional_data,languages,content_url,mobile_launch_content_url,content_type,cover_url,active,duration,order,categories,skills,updated_at,created_at,provider,localizations,tags,authors,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.get_content(request: req)

unless res.content_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::LmsGetContentRequest](../../models/operations/lmsgetcontentrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::LmsGetContentResponse)](../../models/operations/lmsgetcontentresponse.md)**

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

## get_course

Retrieve a course type learning object by its identifier. 

These are collections of content type learning objects that are grouped together for a specific learning purpose.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_get_course" method="get" path="/unified/lms/courses/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsGetCourseRequest.new(
  fields_: 'id,remote_id,external_reference,content_ids,remote_content_ids,title,description,languages,cover_url,url,active,duration,categories,skills,updated_at,created_at,content,provider,localizations,authors,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.get_course(request: req)

unless res.course_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::LmsGetCourseRequest](../../models/operations/lmsgetcourserequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::LmsGetCourseResponse)](../../models/operations/lmsgetcourseresponse.md)**

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

## get_skill

Get Skill

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_get_skill" method="get" path="/unified/lms/skills/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsGetSkillRequest.new(
  fields_: 'id,remote_id,name,active,hierarchy,language,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.get_skill(request: req)

unless res.skill_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::LmsGetSkillRequest](../../models/operations/lmsgetskillrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::LmsGetSkillResponse)](../../models/operations/lmsgetskillresponse.md)**

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

<!-- UsageSnippet language="ruby" operationID="lms_get_user" method="get" path="/unified/lms/users/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsGetUserRequest.new(
  fields_: 'id,remote_id,external_reference,active,email,phone_number,created_at,updated_at,name,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.get_user(request: req)

unless res.user_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::LmsGetUserRequest](../../models/operations/lmsgetuserrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::LmsGetUserResponse)](../../models/operations/lmsgetuserresponse.md)**

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

## get_user_assignment

Retrieve an assignment type learning record for a user by its identifier. 

This is the record linking a user to a learning object. 

It can be pending, in progress, or completed.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_get_user_assignment" method="get" path="/unified/lms/users/{id}/assignments/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsGetUserAssignmentRequest.new(
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.get_user_assignment(request: req)

unless res.assignment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::LmsGetUserAssignmentRequest](../../models/operations/lmsgetuserassignmentrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::LmsGetUserAssignmentResponse)](../../models/operations/lmsgetuserassignmentresponse.md)**

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

## get_user_completion

Retrieve a completed learning record for a user by its identifier. 

This is the record of a user completing a learning object.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_get_user_completion" method="get" path="/unified/lms/users/{id}/completions/{subResourceId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsGetUserCompletionRequest.new(
  id: '<id>',
  sub_resource_id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.get_user_completion(request: req)

unless res.completion_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::LmsGetUserCompletionRequest](../../models/operations/lmsgetusercompletionrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::LmsGetUserCompletionResponse)](../../models/operations/lmsgetusercompletionresponse.md)**

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

## list_assignments

Retrieve a list of assignment type learning records. 

These are the records linking a user to a learning object. 

They can be pending, in progress, or completed.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_list_assignments" method="get" path="/unified/lms/assignments" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsListAssignmentsRequest.new(
  fields_: 'id,remote_id,external_reference,user_id,remote_user_id,course_id,remote_course_id,updated_at,created_at,due_date,status,progress,learning_object_type,learning_object_id,remote_learning_object_id,learning_object_external_reference,certificate_url,result,completed_at,unified_custom_fields',
  filter: Models::Operations::LmsListAssignmentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  remote_user_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
  user_id: 'c28xyrc55866bvuv',
  x_account_id: '<id>',
)

res = s.lms.list_assignments(request: req)

unless res.assignments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::LmsListAssignmentsRequest](../../models/operations/lmslistassignmentsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::LmsListAssignmentsResponse)](../../models/operations/lmslistassignmentsresponse.md)**

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

## list_categories

List Categories

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_list_categories" method="get" path="/unified/lms/categories" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsListCategoriesRequest.new(
  fields_: 'id,remote_id,name,active,hierarchy,level,language,unified_custom_fields',
  filter: Models::Operations::LmsListCategoriesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.lms.list_categories(request: req)

unless res.categories_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::LmsListCategoriesRequest](../../models/operations/lmslistcategoriesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::LmsListCategoriesResponse)](../../models/operations/lmslistcategoriesresponse.md)**

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

## list_completions

Retrieve a list of completed learning records. These are the records of a user completing learning objects.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_list_completions" method="get" path="/unified/lms/completions" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsListCompletionsRequest.new(
  fields_: 'id,remote_id,external_id,remote_external_id,external_reference,content_id,remote_content_id,course_id,remote_course_id,user_id,remote_user_id,completed_at,updated_at,created_at,result,content_external_reference,learning_object_type,learning_object_id,remote_learning_object_id,learning_object_external_reference,time_spent,certificate_url,unified_custom_fields',
  filter: Models::Operations::LmsListCompletionsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.lms.list_completions(request: req)

unless res.completions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::LmsListCompletionsRequest](../../models/operations/lmslistcompletionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::LmsListCompletionsResponse)](../../models/operations/lmslistcompletionsresponse.md)**

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

## list_content

Retrieve a list of content type learning objects. 

These are the most granular learning objects (e.g. video, document, podcast) on a platform. 

Only content objects for which the platform supports progress and completion tracking are returned.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_list_content" method="get" path="/unified/lms/content" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsListContentRequest.new(
  fields_: 'id,remote_id,external_reference,course_ids,remote_course_ids,title,description,additional_data,languages,content_url,mobile_launch_content_url,content_type,cover_url,active,duration,order,categories,skills,updated_at,created_at,provider,localizations,tags,authors,unified_custom_fields',
  filter: Models::Operations::LmsListContentQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.lms.list_content(request: req)

unless res.content_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::LmsListContentRequest](../../models/operations/lmslistcontentrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::LmsListContentResponse)](../../models/operations/lmslistcontentresponse.md)**

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

## list_courses

Retrieve a list of course type learning objects. 

These are collections of content type learning objects that are grouped together for a specific learning purpose.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_list_courses" method="get" path="/unified/lms/courses" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsListCoursesRequest.new(
  fields_: 'id,remote_id,external_reference,content_ids,remote_content_ids,title,description,languages,cover_url,url,active,duration,categories,skills,updated_at,created_at,content,provider,localizations,authors,unified_custom_fields',
  filter: Models::Operations::LmsListCoursesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.lms.list_courses(request: req)

unless res.course_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::LmsListCoursesRequest](../../models/operations/lmslistcoursesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::LmsListCoursesResponse)](../../models/operations/lmslistcoursesresponse.md)**

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

## list_skills

List Skills

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_list_skills" method="get" path="/unified/lms/skills" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsListSkillsRequest.new(
  fields_: 'id,remote_id,name,active,hierarchy,language,unified_custom_fields',
  filter: Models::Operations::LmsListSkillsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.lms.list_skills(request: req)

unless res.skills_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::LmsListSkillsRequest](../../models/operations/lmslistskillsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::LmsListSkillsResponse)](../../models/operations/lmslistskillsresponse.md)**

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

## list_user_assignments

Retrieve a list of assignment type learning records for a user. 

These are the records linking a user to learning objects. 

They can be pending, in progress, or completed.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_list_user_assignments" method="get" path="/unified/lms/users/{id}/assignments" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsListUserAssignmentsRequest.new(
  fields_: 'id,remote_id,external_reference,user_id,remote_user_id,course_id,remote_course_id,updated_at,created_at,due_date,status,progress,learning_object_type,learning_object_id,remote_learning_object_id,learning_object_external_reference,certificate_url,result,completed_at,unified_custom_fields',
  filter: Models::Operations::LmsListUserAssignmentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  remote_user_id: 'e3cb75bf-aa84-466e-a6c1-b8322b257a48',
  user_id: 'c28xyrc55866bvuv',
  x_account_id: '<id>',
)

res = s.lms.list_user_assignments(request: req)

unless res.assignments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::LmsListUserAssignmentsRequest](../../models/operations/lmslistuserassignmentsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::LmsListUserAssignmentsResponse)](../../models/operations/lmslistuserassignmentsresponse.md)**

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

## list_user_completions

Retrieve a list of completed learning records for a user. 

These are the records of a user completing learning objects.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_list_user_completions" method="get" path="/unified/lms/users/{id}/completions" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsListUserCompletionsRequest.new(
  fields_: 'id,remote_id,external_id,remote_external_id,external_reference,content_id,remote_content_id,course_id,remote_course_id,user_id,remote_user_id,completed_at,updated_at,created_at,result,content_external_reference,learning_object_type,learning_object_id,remote_learning_object_id,learning_object_external_reference,time_spent,certificate_url,unified_custom_fields',
  filter: Models::Operations::LmsListUserCompletionsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: '<id>',
  x_account_id: '<id>',
)

res = s.lms.list_user_completions(request: req)

unless res.completions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::LmsListUserCompletionsRequest](../../models/operations/lmslistusercompletionsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::LmsListUserCompletionsResponse)](../../models/operations/lmslistusercompletionsresponse.md)**

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

<!-- UsageSnippet language="ruby" operationID="lms_list_users" method="get" path="/unified/lms/users" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::LmsListUsersRequest.new(
  fields_: 'id,remote_id,external_reference,active,email,phone_number,created_at,updated_at,name,unified_custom_fields',
  filter: nil,
  x_account_id: '<id>',
)

res = s.lms.list_users(request: req)

unless res.users_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::LmsListUsersRequest](../../models/operations/lmslistusersrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::LmsListUsersResponse)](../../models/operations/lmslistusersresponse.md)**

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

## update_content

Update an external linking learning object that redirects users to a provider platform for consumption and progress tracking. 

See [here](https://docs.stackone.com/integration-guides/lms/external-content-providers/introduction) for more information about external linking learning objects.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_update_content" method="patch" path="/unified/lms/content/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.lms.update_content(lms_create_content_request_dto: Models::Shared::LmsCreateContentRequestDto.new(
  active: true,
  additional_data: [
    Models::Shared::AdditionalData.new(
      id: 'learning_outcomes',
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      value: 'This is additional data',
    ),
  ],
  authors: [
    Models::Shared::AuthorModel.new(
      id: '123',
      name: 'John Doe',
    ),
  ],
  categories: [
    Models::Shared::CreateCategoriesApiModel.new(
      name: 'Technology',
    ),
  ],
  content_url: 'https://www.youtube.com/watch?v=16873',
  cover_url: 'https://www.googledrive.com/?v=16873',
  created_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
  description: 'This video acts as learning content for software engineers.',
  duration: 'P3Y6M4DT12H30M5S',
  external_reference: 'SOFTWARE-ENG-LV1-TRAINING-VIDEO-1',
  languages: [
    Models::Shared::LanguageEnum.new(
      value: Models::Shared::LanguageEnumValue::EN_GB,
    ),
  ],
  localizations: [
    Models::Shared::LocalizationModel.new(
      description: 'This course acts as learning resource for software engineers.',
      title: 'Software Engineer Lv 1',
    ),
    Models::Shared::LocalizationModel.new(
      description: 'This video acts as learning content for software engineers.',
      title: 'Software Engineer Lv 1',
    ),
  ],
  mobile_launch_content_url: 'https://www.mobile.youtube.com/watch?v=16873',
  order: 1.0,
  skills: [
    Models::Shared::CreateSkillsApiModel.new(
      id: '12345',
      name: 'Sales Techniques',
    ),
  ],
  tags: [
    'Sales Techniques',
    'Customer Service',
  ],
  title: 'Software Engineer Lv 1',
  unified_custom_fields: {
    "my_project_custom_field_1": 'REF-1236',
    "my_project_custom_field_2": 'some other value',
  },
  updated_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
), id: '<id>', x_account_id: '<id>')

unless res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `lms_create_content_request_dto`                                                                | [Models::Shared::LmsCreateContentRequestDto](../../models/shared/lmscreatecontentrequestdto.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `id`                                                                                            | *::String*                                                                                      | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `x_account_id`                                                                                  | *::String*                                                                                      | :heavy_check_mark:                                                                              | The account identifier                                                                          |

### Response

**[T.nilable(Models::Operations::LmsUpdateContentResponse)](../../models/operations/lmsupdatecontentresponse.md)**

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

## upsert_content

Create or update an external linking learning object that redirects users to a provider platform for consumption and progress tracking. 

See [here](https://docs.stackone.com/integration-guides/lms/external-content-providers/introduction) for more information about external linking learning objects.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="lms_upsert_content" method="put" path="/unified/lms/content" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.lms.upsert_content(lms_upsert_content_request_dto: Models::Shared::LmsUpsertContentRequestDto.new(
  active: true,
  additional_data: [
    Models::Shared::AdditionalData.new(
      id: 'learning_outcomes',
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      value: 'This is additional data',
    ),
  ],
  authors: [
    Models::Shared::AuthorModel.new(
      id: '123',
      name: 'John Doe',
    ),
  ],
  categories: [
    Models::Shared::CreateCategoriesApiModel.new(
      id: '16873-IT345',
      language: Models::Shared::CreateCategoriesApiModelLanguage.new(
        value: Models::Shared::CreateCategoriesApiModelSchemasValue::EN_GB,
      ),
      name: 'Information-Technology',
      unified_custom_fields: {
        "my_project_custom_field_1": 'REF-1236',
        "my_project_custom_field_2": 'some other value',
      },
    ),
  ],
  content_url: 'https://www.youtube.com/watch?v=16873',
  cover_url: 'https://www.googledrive.com/?v=16873',
  created_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
  description: 'This video acts as learning content for software engineers.',
  duration: 'P3Y6M4DT12H30M5S',
  external_reference: 'SOFTWARE-ENG-LV1-TRAINING-VIDEO-1',
  languages: [
    Models::Shared::LanguageEnum.new(
      value: Models::Shared::LanguageEnumValue::EN_GB,
    ),
  ],
  localizations: [
    Models::Shared::LocalizationModel.new(
      description: 'This course acts as learning resource for software engineers.',
      title: 'Software Engineer Lv 1',
    ),
    Models::Shared::LocalizationModel.new(
      description: 'This course acts as learning resource for software engineers.',
      title: 'Software Engineer: A comprehensive guide',
    ),
  ],
  mobile_launch_content_url: 'https://www.mobile.youtube.com/watch?v=16873',
  order: 1.0,
  skills: [
    Models::Shared::CreateSkillsApiModel.new(
      id: '12345',
      name: 'Sales Techniques',
    ),
  ],
  tags: [
    'Sales Techniques',
    'Customer Service',
  ],
  title: 'Software Engineer Lv 1',
  unified_custom_fields: {
    "my_project_custom_field_1": 'REF-1236',
    "my_project_custom_field_2": 'some other value',
  },
  updated_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
), x_account_id: '<id>')

unless res.upsert_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `lms_upsert_content_request_dto`                                                                | [Models::Shared::LmsUpsertContentRequestDto](../../models/shared/lmsupsertcontentrequestdto.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `x_account_id`                                                                                  | *::String*                                                                                      | :heavy_check_mark:                                                                              | The account identifier                                                                          |

### Response

**[T.nilable(Models::Operations::LmsUpsertContentResponse)](../../models/operations/lmsupsertcontentresponse.md)**

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