# Lms

## Overview

### Available Operations

* [create_completion](#create_completion) - Create User Completion
* [create_content](#create_content) - Create Content
* [get_assignment](#get_assignment) - Get User Assignment
* [get_category](#get_category) - Get Category
* [get_content](#get_content) - Get Content
* [get_course](#get_course) - Get Course
* [get_user](#get_user) - Get User
* [list_assignments](#list_assignments) - List User Assignments
* [list_categories](#list_categories) - List Categories
* [list_completions](#list_completions) - List User Completions
* [list_content](#list_content) - List Content
* [list_courses](#list_courses) - List Courses
* [list_users](#list_users) - List Users
* [update_content](#update_content) - Update Content
* [upsert_content](#upsert_content) - Upsert Content

## create_completion

Create User Completion

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

    
res = s.lms.create_completion(lms_create_completion_request_dto=::StackOne::Shared::LmsCreateCompletionRequestDto.new(
    completed_at: "2021-07-21T14:00:00.000Z",
    content_id: "16873-ENG-VIDEO-1",
    external_id: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1-COMPLETION",
    passthrough: {
      "driver": "<value>",
    },
  ), id="<value>", x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `lms_create_completion_request_dto`                                                                       | [::StackOne::Shared::LmsCreateCompletionRequestDto](../../models/shared/lmscreatecompletionrequestdto.md) | :heavy_check_mark:                                                                                        | N/A                                                                                                       |
| `id`                                                                                                      | *::String*                                                                                                | :heavy_check_mark:                                                                                        | N/A                                                                                                       |
| `x_account_id`                                                                                            | *::String*                                                                                                | :heavy_check_mark:                                                                                        | The account identifier                                                                                    |

### Response

**[T.nilable(::StackOne::Operations::LmsCreateCompletionResponse)](../../models/operations/lmscreatecompletionresponse.md)**




## create_content

Create Content

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

    
res = s.lms.create_content(lms_create_content_request_dto=::StackOne::Shared::LmsCreateContentRequestDto.new(
    active: true,
    categories: [
      ::StackOne::Shared::CreateCategoriesApiModel.new(
        active: true,
        name: "Information-Technology",
      ),
    ],
    content_url: "https://www.youtube.com/watch?v=16873",
    course_ids: [
      "<value>",
    ],
    cover_url: "https://www.googledrive.com/?v=16873",
    description: "This video acts as learning content for software engineers.",
    duration: "P3Y6M4DT12H30M5S",
    external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
    languages: [
      ::StackOne::Shared::ContentLanguageEnum.new(
        value: ::StackOne::Shared::ContentLanguageEnumValue::EN_GB,
      ),
    ],
    order: 1.0,
    title: "Software Engineer Lv 1",
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `lms_create_content_request_dto`                                                                    | [::StackOne::Shared::LmsCreateContentRequestDto](../../models/shared/lmscreatecontentrequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(::StackOne::Operations::LmsCreateContentResponse)](../../models/operations/lmscreatecontentresponse.md)**




## get_assignment

Get User Assignment

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


req = ::StackOne::Operations::LmsGetAssignmentRequest.new(
  id: "<id>",
  sub_resource_id: "<value>",
  x_account_id: "<value>",
)
    
res = s.lms.get_assignment(req)

if ! res.assignment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::StackOne::Operations::LmsGetAssignmentRequest](../../models/operations/lmsgetassignmentrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(::StackOne::Operations::LmsGetAssignmentResponse)](../../models/operations/lmsgetassignmentresponse.md)**




## get_category

Get Category

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


req = ::StackOne::Operations::LmsGetCategoryRequest.new(
  fields_: "id,remote_id,name,active",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.lms.get_category(req)

if ! res.category_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::StackOne::Operations::LmsGetCategoryRequest](../../models/operations/lmsgetcategoryrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(::StackOne::Operations::LmsGetCategoryResponse)](../../models/operations/lmsgetcategoryresponse.md)**




## get_content

Get Content

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


req = ::StackOne::Operations::LmsGetContentRequest.new(
  fields_: "id,remote_id,external_reference,course_ids,remote_course_ids,title,description,languages,content_url,content_type,cover_url,active,duration,categories,order",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.lms.get_content(req)

if ! res.content_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::StackOne::Operations::LmsGetContentRequest](../../models/operations/lmsgetcontentrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(::StackOne::Operations::LmsGetContentResponse)](../../models/operations/lmsgetcontentresponse.md)**




## get_course

Get Course

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


req = ::StackOne::Operations::LmsGetCourseRequest.new(
  fields_: "id,remote_id,external_reference,content_ids,remote_content_ids,title,description,languages,course_type,cover_url,url,active,duration,categories,skills,updated_at,created_at",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.lms.get_course(req)

if ! res.course_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::LmsGetCourseRequest](../../models/operations/lmsgetcourserequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::StackOne::Operations::LmsGetCourseResponse)](../../models/operations/lmsgetcourseresponse.md)**




## get_user

Get User

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


req = ::StackOne::Operations::LmsGetUserRequest.new(
  fields_: "id,remote_id,email,phone_number,created_at,updated_at,name",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.lms.get_user(req)

if ! res.user_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::StackOne::Operations::LmsGetUserRequest](../../models/operations/lmsgetuserrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(::StackOne::Operations::LmsGetUserResponse)](../../models/operations/lmsgetuserresponse.md)**




## list_assignments

List User Assignments

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


req = ::StackOne::Operations::LmsListAssignmentsRequest.new(
  fields_: "id,remote_id,external_id,remote_external_id,course_id,remote_course_id,updated_at,created_at,due_date,status",
  filter: ::StackOne::Operations::LmsListAssignmentsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.lms.list_assignments(req)

if ! res.assignments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::StackOne::Operations::LmsListAssignmentsRequest](../../models/operations/lmslistassignmentsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::StackOne::Operations::LmsListAssignmentsResponse)](../../models/operations/lmslistassignmentsresponse.md)**




## list_categories

List Categories

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


req = ::StackOne::Operations::LmsListCategoriesRequest.new(
  fields_: "id,remote_id,name,active",
  filter: ::StackOne::Operations::LmsListCategoriesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.lms.list_categories(req)

if ! res.categories_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::StackOne::Operations::LmsListCategoriesRequest](../../models/operations/lmslistcategoriesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(::StackOne::Operations::LmsListCategoriesResponse)](../../models/operations/lmslistcategoriesresponse.md)**




## list_completions

List User Completions

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


req = ::StackOne::Operations::LmsListCompletionsRequest.new(
  fields_: "id,remote_id,external_id,remote_external_id,content_id,remote_content_id,user_id,remote_user_id,completed_at,updated_at,created_at,result",
  filter: ::StackOne::Operations::LmsListCompletionsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.lms.list_completions(req)

if ! res.completions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::StackOne::Operations::LmsListCompletionsRequest](../../models/operations/lmslistcompletionsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::StackOne::Operations::LmsListCompletionsResponse)](../../models/operations/lmslistcompletionsresponse.md)**




## list_content

List Content

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


req = ::StackOne::Operations::LmsListContentRequest.new(
  fields_: "id,remote_id,external_reference,course_ids,remote_course_ids,title,description,languages,content_url,content_type,cover_url,active,duration,categories,order",
  filter: ::StackOne::Operations::LmsListContentQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.lms.list_content(req)

if ! res.content_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::StackOne::Operations::LmsListContentRequest](../../models/operations/lmslistcontentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(::StackOne::Operations::LmsListContentResponse)](../../models/operations/lmslistcontentresponse.md)**




## list_courses

List Courses

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


req = ::StackOne::Operations::LmsListCoursesRequest.new(
  fields_: "id,remote_id,external_reference,content_ids,remote_content_ids,title,description,languages,course_type,cover_url,url,active,duration,categories,skills,updated_at,created_at",
  filter: ::StackOne::Operations::LmsListCoursesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.lms.list_courses(req)

if ! res.course_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::StackOne::Operations::LmsListCoursesRequest](../../models/operations/lmslistcoursesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(::StackOne::Operations::LmsListCoursesResponse)](../../models/operations/lmslistcoursesresponse.md)**




## list_users

List Users

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


req = ::StackOne::Operations::LmsListUsersRequest.new(
  fields_: "id,remote_id,email,phone_number,created_at,updated_at,name",
  filter: ::StackOne::Operations::LmsListUsersQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.lms.list_users(req)

if ! res.users_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::LmsListUsersRequest](../../models/operations/lmslistusersrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::StackOne::Operations::LmsListUsersResponse)](../../models/operations/lmslistusersresponse.md)**




## update_content

Update Content

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

    
res = s.lms.update_content(lms_create_content_request_dto=::StackOne::Shared::LmsCreateContentRequestDto.new(
    active: true,
    categories: [
      ::StackOne::Shared::CreateCategoriesApiModel.new(
        active: true,
        name: "Information-Technology",
      ),
    ],
    content_url: "https://www.youtube.com/watch?v=16873",
    course_ids: [
      "<value>",
    ],
    cover_url: "https://www.googledrive.com/?v=16873",
    description: "This video acts as learning content for software engineers.",
    duration: "P3Y6M4DT12H30M5S",
    external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
    languages: [
      ::StackOne::Shared::ContentLanguageEnum.new(
        value: ::StackOne::Shared::ContentLanguageEnumValue::EN_GB,
      ),
    ],
    order: 1.0,
    title: "Software Engineer Lv 1",
  ), id="<value>", x_account_id="<value>")

if ! res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `lms_create_content_request_dto`                                                                    | [::StackOne::Shared::LmsCreateContentRequestDto](../../models/shared/lmscreatecontentrequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `id`                                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(::StackOne::Operations::LmsUpdateContentResponse)](../../models/operations/lmsupdatecontentresponse.md)**




## upsert_content

Upsert Content

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

    
res = s.lms.upsert_content(lms_upsert_content_request_dto=::StackOne::Shared::LmsUpsertContentRequestDto.new(
    active: true,
    categories: [
      ::StackOne::Shared::CreateCategoriesApiModel.new(
        active: true,
        name: "Information-Technology",
      ),
    ],
    content_url: "https://www.youtube.com/watch?v=16873",
    course_ids: [
      "<value>",
    ],
    cover_url: "https://www.googledrive.com/?v=16873",
    description: "This video acts as learning content for software engineers.",
    duration: "P3Y6M4DT12H30M5S",
    external_reference: "SOFTWARE-ENG-LV1-TRAINING-VIDEO-1",
    languages: [
      ::StackOne::Shared::ContentLanguageEnum.new(
        value: ::StackOne::Shared::ContentLanguageEnumValue::EN_GB,
      ),
    ],
    order: 1.0,
    title: "Software Engineer Lv 1",
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `lms_upsert_content_request_dto`                                                                    | [::StackOne::Shared::LmsUpsertContentRequestDto](../../models/shared/lmsupsertcontentrequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(::StackOne::Operations::LmsUpsertContentResponse)](../../models/operations/lmsupsertcontentresponse.md)**

