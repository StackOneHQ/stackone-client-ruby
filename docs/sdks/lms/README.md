# Lms
(*lms*)

## Overview

### Available Operations

* [batch_upsert_content](#batch_upsert_content) - Batch Upsert Content
* [batch_upsert_course](#batch_upsert_course) - Batch Upsert Course
* [create_collection](#create_collection) - Create Collection
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
* [update_collection](#update_collection) - Update Collection
* [update_content](#update_content) - Update Content
* [upsert_content](#upsert_content) - Upsert Content
* [upsert_course](#upsert_course) - Upsert Course

## batch_upsert_content

Batch Upsert Content

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.batch_upsert_content(lms_batch_upsert_content_request_dto=Models::Shared::LmsBatchUpsertContentRequestDto.new(
  items: [
    Models::Shared::LmsUpsertContentRequestDto.new(
      active: true,
      additional_data: [
        Models::Shared::AdditionalData.new(
          id: "learning_outcomes",
          remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
          value: "This is additional data",
        ),
      ],
      categories: [
        Models::Shared::CreateCategoriesApiModel.new(
          id: "16873-IT345",
          language: Models::Shared::CreateCategoriesApiModelLanguage.new(
            value: Models::Shared::CreateCategoriesApiModelSchemasValue::EN_GB,
          ),
          name: "Information-Technology",
          unified_custom_fields: {
            "my_project_custom_field_1": "REF-1236",
            "my_project_custom_field_2": "some other value",
          },
        ),
      ],
      content_url: "https://www.youtube.com/watch?v=16873",
      cover_url: "https://www.googledrive.com/?v=16873",
      created_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
      description: "This video acts as learning content for software engineers.",
      duration: "P3Y6M4DT12H30M5S",
      external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
      languages: [
        Models::Shared::LanguageEnum.new(
          value: Models::Shared::LanguageEnumValue::EN_GB,
        ),
      ],
      localizations: [
        Models::Shared::LocalizationModel.new(
          description: "This course acts as learning resource for software engineers.",
          title: "Software Engineer Lv 1",
        ),
        Models::Shared::LocalizationModel.new(
          description: "This course acts as learning resource for software engineers.",
          title: "Software Engineer: A comprehensive guide",
        ),
      ],
      mobile_launch_content_url: "https://www.mobile.youtube.com/watch?v=16873",
      order: 1.0,
      skills: [
        Models::Shared::CreateSkillsApiModel.new(
          id: "12345",
          name: "Sales Techniques",
        ),
      ],
      tags: [
        "Sales Techniques",
        "Customer Service",
      ],
      title: "Software Engineer Lv 1",
      unified_custom_fields: {
        "my_project_custom_field_1": "REF-1236",
        "my_project_custom_field_2": "some other value",
      },
      updated_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
    ),
  ],
), x_account_id="<id>")

if ! res.batch_result_api_model.nil?
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



## batch_upsert_course

Batch Upsert Course

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.batch_upsert_course(lms_batch_upsert_course_request_dto=Models::Shared::LmsBatchUpsertCourseRequestDto.new(
  items: [
    Models::Shared::LmsUpsertCourseRequestDto.new(
      active: true,
      categories: [
        Models::Shared::CreateCategoriesApiModel.new(
          id: "16873-IT345",
          language: Models::Shared::CreateCategoriesApiModelLanguage.new(
            value: Models::Shared::CreateCategoriesApiModelSchemasValue::EN_GB,
          ),
          name: "Information-Technology",
          unified_custom_fields: {
            "my_project_custom_field_1": "REF-1236",
            "my_project_custom_field_2": "some other value",
          },
        ),
      ],
      content: [
        Models::Shared::CreateContentApiModel.new(
          content_url: "https://www.youtube.com/watch?v=16873",
          description: "This video acts as learning content for software engineers.",
          external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
          mobile_launch_content_url: "https://www.mobile.youtube.com/watch?v=16873",
          order: 1.0,
          title: "Software Engineer Lv 1",
        ),
      ],
      cover_url: "https://www.googledrive.com/?v=16873",
      description: "This course acts as learning content for software engineers.",
      duration: "P3Y6M4DT12H30M5S",
      external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
      languages: [
        Models::Shared::LanguageEnum.new(
          value: Models::Shared::LanguageEnumValue::EN_GB,
        ),
      ],
      localizations: [
        Models::Shared::LocalizationModel.new(
          description: "This course acts as learning resource for software engineers.",
          title: "Software Engineer Lv 1",
        ),
        Models::Shared::LocalizationModel.new(
          description: "This course acts as learning resource for software engineers.",
          title: "Software Engineer: A comprehensive guide",
        ),
      ],
      skills: [
        Models::Shared::CreateSkillsApiModel.new(
          id: "16873-IT345",
          language: Models::Shared::CreateSkillsApiModelLanguage.new(
            value: Models::Shared::CreateSkillsApiModelSchemasValue::EN_GB,
          ),
          name: "Information-Technology",
        ),
      ],
      title: "Software Engineer Lv 1",
      unified_custom_fields: {
        "my_project_custom_field_1": "REF-1236",
        "my_project_custom_field_2": "some other value",
      },
      url: "https://www.linkedinlearning.com/?v=16873",
    ),
  ],
), x_account_id="<id>")

if ! res.batch_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `lms_batch_upsert_course_request_dto`                                                                   | [Models::Shared::LmsBatchUpsertCourseRequestDto](../../models/shared/lmsbatchupsertcourserequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |

### Response

**[T.nilable(Models::Operations::LmsBatchUpsertCourseResponse)](../../models/operations/lmsbatchupsertcourseresponse.md)**



## create_collection

Create Collection

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.create_collection(lms_create_collection_request_dto=Models::Shared::LmsCreateCollectionRequestDto.new(
  categories: [
    Models::Shared::CreateCategoriesApiModel.new(
      id: "16873-IT345",
      language: Models::Shared::CreateCategoriesApiModelLanguage.new(
        value: Models::Shared::CreateCategoriesApiModelSchemasValue::EN_GB,
      ),
      name: "Information-Technology",
      unified_custom_fields: {
        "my_project_custom_field_1": "REF-1236",
        "my_project_custom_field_2": "some other value",
      },
    ),
  ],
  cover_url: "https://www.googledrive.com/?v=16873",
  description: "This collection acts as learning pathway for software engineers.",
  external_reference: "SOFTWARE-ENG-LV1-TRAINING-collection-1",
  learning_object_ids: [
    "16873-SOFTWARE-ENG-COURSE",
    "16874-SOFTWARE-ENG-COURSE",
  ],
  remote_learning_object_ids: [
    "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
    "e3cb75bf-aa84-466e-a6c1-b8322b257a49",
  ],
  skills: [
    Models::Shared::CreateSkillsApiModel.new(
      id: "16873-IT345",
      language: Models::Shared::CreateSkillsApiModelLanguage.new(
        value: Models::Shared::CreateSkillsApiModelSchemasValue::EN_GB,
      ),
      name: "Information-Technology",
    ),
  ],
  title: "Software Engineer Lv 1 Collection",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
), x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `lms_create_collection_request_dto`                                                                   | [Models::Shared::LmsCreateCollectionRequestDto](../../models/shared/lmscreatecollectionrequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The account identifier                                                                                |

### Response

**[T.nilable(Models::Operations::LmsCreateCollectionResponse)](../../models/operations/lmscreatecollectionresponse.md)**



## create_user_assignment

Create User Assignment

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.create_user_assignment(lms_create_assignment_request_dto=Models::Shared::LmsCreateAssignmentRequestDto.new(
  created_at: "2021-07-21T14:00:00.000Z",
  due_date: "2021-07-21T14:00:00.000Z",
  learning_object_external_reference: "learning-content-123",
  learning_object_id: "e3gd34-23tr21-er234-345er56",
  passthrough: {
    "other_known_names": "John Doe",
  },
  progress: 40,
  status: Models::Shared::LmsCreateAssignmentRequestDtoStatus.new(
    value: Models::Shared::LmsCreateAssignmentRequestDtoValue::IN_PROGRESS,
  ),
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
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



## create_user_completion

Create User Completion

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.create_user_completion(lms_create_completion_request_dto=Models::Shared::LmsCreateCompletionRequestDto.new(
  completed_at: "2021-07-21T14:00:00.000Z",
  learning_object_external_reference: "learning-content-123",
  learning_object_id: "e3gd34-23tr21-er234-345er56",
  passthrough: {
    "other_known_names": "John Doe",
  },
  time_spent: "PT1H30M45S",
), id="<id>", x_account_id="<id>")

if ! res.create_result.nil?
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



## delete_user_completion

Delete User Completion

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.delete_user_completion(id="<id>", sub_resource_id="<id>", x_account_id="<id>")

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

**[T.nilable(Models::Operations::LmsDeleteUserCompletionResponse)](../../models/operations/lmsdeleteusercompletionresponse.md)**



## get_assignment

Get Assignment

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsGetAssignmentRequest.new(
  id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.get_assignment(req)

if ! res.assignment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::LmsGetAssignmentRequest](../../models/operations/lmsgetassignmentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::LmsGetAssignmentResponse)](../../models/operations/lmsgetassignmentresponse.md)**



## get_category

Get Category

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsGetCategoryRequest.new(
  fields_: "id,remote_id,name,active,hierarchy,level,language",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.get_category(req)

if ! res.category_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::LmsGetCategoryRequest](../../models/operations/lmsgetcategoryrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::LmsGetCategoryResponse)](../../models/operations/lmsgetcategoryresponse.md)**



## get_completion

Get Completion

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsGetCompletionRequest.new(
  id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.get_completion(req)

if ! res.completion_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::LmsGetCompletionRequest](../../models/operations/lmsgetcompletionrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::LmsGetCompletionResponse)](../../models/operations/lmsgetcompletionresponse.md)**



## get_content

Get Content

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsGetContentRequest.new(
  fields_: "id,remote_id,external_reference,course_ids,remote_course_ids,title,description,additional_data,languages,content_url,mobile_launch_content_url,content_type,cover_url,active,duration,order,categories,skills,updated_at,created_at,provider,localizations,tags",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.get_content(req)

if ! res.content_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::LmsGetContentRequest](../../models/operations/lmsgetcontentrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::LmsGetContentResponse)](../../models/operations/lmsgetcontentresponse.md)**



## get_course

Get Course

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsGetCourseRequest.new(
  fields_: "id,remote_id,external_reference,content_ids,remote_content_ids,title,description,languages,cover_url,url,active,duration,categories,skills,updated_at,created_at,content,provider,localizations",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.get_course(req)

if ! res.course_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::LmsGetCourseRequest](../../models/operations/lmsgetcourserequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::LmsGetCourseResponse)](../../models/operations/lmsgetcourseresponse.md)**



## get_skill

Get Skill

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsGetSkillRequest.new(
  fields_: "id,remote_id,name,active,hierarchy,language",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.get_skill(req)

if ! res.skill_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::LmsGetSkillRequest](../../models/operations/lmsgetskillrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::LmsGetSkillResponse)](../../models/operations/lmsgetskillresponse.md)**



## get_user

Get User

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsGetUserRequest.new(
  fields_: "id,remote_id,external_reference,active,email,phone_number,created_at,updated_at,name",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.get_user(req)

if ! res.user_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::LmsGetUserRequest](../../models/operations/lmsgetuserrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::LmsGetUserResponse)](../../models/operations/lmsgetuserresponse.md)**



## get_user_assignment

Get User Assignment

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsGetUserAssignmentRequest.new(
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.get_user_assignment(req)

if ! res.assignment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::LmsGetUserAssignmentRequest](../../models/operations/lmsgetuserassignmentrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::LmsGetUserAssignmentResponse)](../../models/operations/lmsgetuserassignmentresponse.md)**



## get_user_completion

Get User Completion

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsGetUserCompletionRequest.new(
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.get_user_completion(req)

if ! res.completion_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::LmsGetUserCompletionRequest](../../models/operations/lmsgetusercompletionrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::LmsGetUserCompletionResponse)](../../models/operations/lmsgetusercompletionresponse.md)**



## list_assignments

List Assignments

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsListAssignmentsRequest.new(
  fields_: "id,remote_id,external_reference,user_id,remote_user_id,course_id,remote_course_id,updated_at,created_at,due_date,status,progress,learning_object_type,learning_object_id,remote_learning_object_id,learning_object_external_reference",
  filter: Models::Operations::LmsListAssignmentsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  remote_user_id: "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
  user_id: "c28xyrc55866bvuv",
  x_account_id: "<id>",
)

res = s.lms.list_assignments(req)

if ! res.assignments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::LmsListAssignmentsRequest](../../models/operations/lmslistassignmentsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::LmsListAssignmentsResponse)](../../models/operations/lmslistassignmentsresponse.md)**



## list_categories

List Categories

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsListCategoriesRequest.new(
  fields_: "id,remote_id,name,active,hierarchy,level,language",
  filter: Models::Operations::LmsListCategoriesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)

res = s.lms.list_categories(req)

if ! res.categories_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::LmsListCategoriesRequest](../../models/operations/lmslistcategoriesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::LmsListCategoriesResponse)](../../models/operations/lmslistcategoriesresponse.md)**



## list_completions

List Completions

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsListCompletionsRequest.new(
  fields_: "id,remote_id,external_id,remote_external_id,external_reference,content_id,remote_content_id,course_id,remote_course_id,user_id,remote_user_id,completed_at,updated_at,created_at,result,content_external_reference,learning_object_type,learning_object_id,remote_learning_object_id,learning_object_external_reference,time_spent",
  filter: Models::Operations::LmsListCompletionsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)

res = s.lms.list_completions(req)

if ! res.completions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::LmsListCompletionsRequest](../../models/operations/lmslistcompletionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::LmsListCompletionsResponse)](../../models/operations/lmslistcompletionsresponse.md)**



## list_content

List Content

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsListContentRequest.new(
  fields_: "id,remote_id,external_reference,course_ids,remote_course_ids,title,description,additional_data,languages,content_url,mobile_launch_content_url,content_type,cover_url,active,duration,order,categories,skills,updated_at,created_at,provider,localizations,tags",
  filter: Models::Operations::LmsListContentQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)

res = s.lms.list_content(req)

if ! res.content_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::LmsListContentRequest](../../models/operations/lmslistcontentrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::LmsListContentResponse)](../../models/operations/lmslistcontentresponse.md)**



## list_courses

List Courses

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsListCoursesRequest.new(
  fields_: "id,remote_id,external_reference,content_ids,remote_content_ids,title,description,languages,cover_url,url,active,duration,categories,skills,updated_at,created_at,content,provider,localizations",
  filter: Models::Operations::LmsListCoursesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)

res = s.lms.list_courses(req)

if ! res.course_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::LmsListCoursesRequest](../../models/operations/lmslistcoursesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::LmsListCoursesResponse)](../../models/operations/lmslistcoursesresponse.md)**



## list_skills

List Skills

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsListSkillsRequest.new(
  fields_: "id,remote_id,name,active,hierarchy,language",
  filter: Models::Operations::LmsListSkillsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)

res = s.lms.list_skills(req)

if ! res.skills_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::LmsListSkillsRequest](../../models/operations/lmslistskillsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::LmsListSkillsResponse)](../../models/operations/lmslistskillsresponse.md)**



## list_user_assignments

List User Assignments

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsListUserAssignmentsRequest.new(
  fields_: "id,remote_id,external_reference,user_id,remote_user_id,course_id,remote_course_id,updated_at,created_at,due_date,status,progress,learning_object_type,learning_object_id,remote_learning_object_id,learning_object_external_reference",
  filter: Models::Operations::LmsListUserAssignmentsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  remote_user_id: "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
  user_id: "c28xyrc55866bvuv",
  x_account_id: "<id>",
)

res = s.lms.list_user_assignments(req)

if ! res.assignments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::LmsListUserAssignmentsRequest](../../models/operations/lmslistuserassignmentsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::LmsListUserAssignmentsResponse)](../../models/operations/lmslistuserassignmentsresponse.md)**



## list_user_completions

List User Completions

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsListUserCompletionsRequest.new(
  fields_: "id,remote_id,external_id,remote_external_id,external_reference,content_id,remote_content_id,course_id,remote_course_id,user_id,remote_user_id,completed_at,updated_at,created_at,result,content_external_reference,learning_object_type,learning_object_id,remote_learning_object_id,learning_object_external_reference,time_spent",
  filter: Models::Operations::LmsListUserCompletionsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.lms.list_user_completions(req)

if ! res.completions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::LmsListUserCompletionsRequest](../../models/operations/lmslistusercompletionsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::LmsListUserCompletionsResponse)](../../models/operations/lmslistusercompletionsresponse.md)**



## list_users

List Users

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::LmsListUsersRequest.new(
  fields_: "id,remote_id,external_reference,active,email,phone_number,created_at,updated_at,name",
  filter: Models::Operations::LmsListUsersQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)

res = s.lms.list_users(req)

if ! res.users_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::LmsListUsersRequest](../../models/operations/lmslistusersrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::LmsListUsersResponse)](../../models/operations/lmslistusersresponse.md)**



## update_collection

Update Collection

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.update_collection(lms_create_collection_request_dto=Models::Shared::LmsCreateCollectionRequestDto.new(
  categories: [
    Models::Shared::CreateCategoriesApiModel.new(
      id: "16873-IT345",
      language: Models::Shared::CreateCategoriesApiModelLanguage.new(
        value: Models::Shared::CreateCategoriesApiModelSchemasValue::EN_GB,
      ),
      name: "Information-Technology",
      unified_custom_fields: {
        "my_project_custom_field_1": "REF-1236",
        "my_project_custom_field_2": "some other value",
      },
    ),
  ],
  cover_url: "https://www.googledrive.com/?v=16873",
  description: "This collection acts as learning pathway for software engineers.",
  external_reference: "SOFTWARE-ENG-LV1-TRAINING-collection-1",
  learning_object_ids: [
    "16873-SOFTWARE-ENG-COURSE",
    "16874-SOFTWARE-ENG-COURSE",
  ],
  remote_learning_object_ids: [
    "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
    "e3cb75bf-aa84-466e-a6c1-b8322b257a49",
  ],
  skills: [
    Models::Shared::CreateSkillsApiModel.new(
      id: "16873-IT345",
      language: Models::Shared::CreateSkillsApiModelLanguage.new(
        value: Models::Shared::CreateSkillsApiModelSchemasValue::EN_GB,
      ),
      name: "Information-Technology",
    ),
  ],
  title: "Software Engineer Lv 1 Collection",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
), id="<id>", x_account_id="<id>")

if ! res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `lms_create_collection_request_dto`                                                                   | [Models::Shared::LmsCreateCollectionRequestDto](../../models/shared/lmscreatecollectionrequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `id`                                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *::String*                                                                                            | :heavy_check_mark:                                                                                    | The account identifier                                                                                |

### Response

**[T.nilable(Models::Operations::LmsUpdateCollectionResponse)](../../models/operations/lmsupdatecollectionresponse.md)**



## update_content

Update Content

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.update_content(lms_create_content_request_dto=Models::Shared::LmsCreateContentRequestDto.new(
  active: true,
  additional_data: [
    Models::Shared::AdditionalData.new(
      id: "learning_outcomes",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      value: "This is additional data",
    ),
  ],
  categories: [
    Models::Shared::CreateCategoriesApiModel.new(
      name: "Technology",
    ),
  ],
  content_url: "https://www.youtube.com/watch?v=16873",
  cover_url: "https://www.googledrive.com/?v=16873",
  created_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
  description: "This video acts as learning content for software engineers.",
  duration: "P3Y6M4DT12H30M5S",
  external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
  languages: [
    Models::Shared::LanguageEnum.new(
      value: Models::Shared::LanguageEnumValue::EN_GB,
    ),
  ],
  localizations: [
    Models::Shared::LocalizationModel.new(
      description: "This course acts as learning resource for software engineers.",
      title: "Software Engineer Lv 1",
    ),
    Models::Shared::LocalizationModel.new(
      description: "This video acts as learning content for software engineers.",
      title: "Software Engineer Lv 1",
    ),
  ],
  mobile_launch_content_url: "https://www.mobile.youtube.com/watch?v=16873",
  order: 1.0,
  skills: [
    Models::Shared::CreateSkillsApiModel.new(
      id: "12345",
      name: "Sales Techniques",
    ),
  ],
  tags: [
    "Sales Techniques",
    "Customer Service",
  ],
  title: "Software Engineer Lv 1",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
  updated_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
), id="<id>", x_account_id="<id>")

if ! res.update_result.nil?
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



## upsert_content

Upsert Content

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.upsert_content(lms_upsert_content_request_dto=Models::Shared::LmsUpsertContentRequestDto.new(
  active: true,
  additional_data: [
    Models::Shared::AdditionalData.new(
      id: "learning_outcomes",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      value: "This is additional data",
    ),
  ],
  categories: [
    Models::Shared::CreateCategoriesApiModel.new(
      id: "16873-IT345",
      language: Models::Shared::CreateCategoriesApiModelLanguage.new(
        value: Models::Shared::CreateCategoriesApiModelSchemasValue::EN_GB,
      ),
      name: "Information-Technology",
      unified_custom_fields: {
        "my_project_custom_field_1": "REF-1236",
        "my_project_custom_field_2": "some other value",
      },
    ),
  ],
  content_url: "https://www.youtube.com/watch?v=16873",
  cover_url: "https://www.googledrive.com/?v=16873",
  created_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
  description: "This video acts as learning content for software engineers.",
  duration: "P3Y6M4DT12H30M5S",
  external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
  languages: [
    Models::Shared::LanguageEnum.new(
      value: Models::Shared::LanguageEnumValue::EN_GB,
    ),
  ],
  localizations: [
    Models::Shared::LocalizationModel.new(
      description: "This course acts as learning resource for software engineers.",
      title: "Software Engineer Lv 1",
    ),
    Models::Shared::LocalizationModel.new(
      description: "This course acts as learning resource for software engineers.",
      title: "Software Engineer: A comprehensive guide",
    ),
  ],
  mobile_launch_content_url: "https://www.mobile.youtube.com/watch?v=16873",
  order: 1.0,
  skills: [
    Models::Shared::CreateSkillsApiModel.new(
      id: "12345",
      name: "Sales Techniques",
    ),
  ],
  tags: [
    "Sales Techniques",
    "Customer Service",
  ],
  title: "Software Engineer Lv 1",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
  updated_at: DateTime.iso8601('2021-07-21T14:00:00.000Z'),
), x_account_id="<id>")

if ! res.upsert_result.nil?
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



## upsert_course

Upsert Course

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.lms.upsert_course(lms_upsert_course_request_dto=Models::Shared::LmsUpsertCourseRequestDto.new(
  active: true,
  categories: [
    Models::Shared::CreateCategoriesApiModel.new(
      id: "16873-IT345",
      language: Models::Shared::CreateCategoriesApiModelLanguage.new(
        value: Models::Shared::CreateCategoriesApiModelSchemasValue::EN_GB,
      ),
      name: "Information-Technology",
      unified_custom_fields: {
        "my_project_custom_field_1": "REF-1236",
        "my_project_custom_field_2": "some other value",
      },
    ),
  ],
  content: [
    Models::Shared::CreateContentApiModel.new(
      content_url: "https://www.youtube.com/watch?v=16873",
      description: "This video acts as learning content for software engineers.",
      external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
      mobile_launch_content_url: "https://www.mobile.youtube.com/watch?v=16873",
      order: 1.0,
      title: "Software Engineer Lv 1",
    ),
  ],
  cover_url: "https://www.googledrive.com/?v=16873",
  description: "This course acts as learning content for software engineers.",
  duration: "P3Y6M4DT12H30M5S",
  external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
  languages: [
    Models::Shared::LanguageEnum.new(
      value: Models::Shared::LanguageEnumValue::EN_GB,
    ),
  ],
  localizations: [
    Models::Shared::LocalizationModel.new(
      description: "This course acts as learning resource for software engineers.",
      title: "Software Engineer Lv 1",
    ),
    Models::Shared::LocalizationModel.new(
      description: "This course acts as learning resource for software engineers.",
      title: "Software Engineer: A comprehensive guide",
    ),
  ],
  skills: [
    Models::Shared::CreateSkillsApiModel.new(
      id: "16873-IT345",
      language: Models::Shared::CreateSkillsApiModelLanguage.new(
        value: Models::Shared::CreateSkillsApiModelSchemasValue::EN_GB,
      ),
      name: "Information-Technology",
    ),
  ],
  title: "Software Engineer Lv 1",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
  url: "https://www.linkedinlearning.com/?v=16873",
), x_account_id="<id>")

if ! res.upsert_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `lms_upsert_course_request_dto`                                                               | [Models::Shared::LmsUpsertCourseRequestDto](../../models/shared/lmsupsertcourserequestdto.md) | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `x_account_id`                                                                                | *::String*                                                                                    | :heavy_check_mark:                                                                            | The account identifier                                                                        |

### Response

**[T.nilable(Models::Operations::LmsUpsertCourseResponse)](../../models/operations/lmsupsertcourseresponse.md)**

