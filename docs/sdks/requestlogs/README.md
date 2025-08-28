# RequestLogs
(*request_logs*)

## Overview

API requests and response logs.

### Available Operations

* [get_log](#get_log) - Get Log
* [list_logs](#list_logs) - List Logs
* [list_platform_logs](#list_platform_logs) - List Platform Logs
* [list_step_logs](#list_step_logs) - List Step Logs

## get_log

Get Log

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_log" method="get" path="/requests/logs/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.request_logs.get_log(id: '<id>', include: Models::Operations::Include::STEP_LOGS)

unless res.unified_log_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                    | Type                                                                         | Required                                                                     | Description                                                                  | Example                                                                      |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `id`                                                                         | *::String*                                                                   | :heavy_check_mark:                                                           | N/A                                                                          |                                                                              |
| `include`                                                                    | [T.nilable(Models::Operations::Include)](../../models/operations/include.md) | :heavy_minus_sign:                                                           | The include parameter allows you to include additional data in the response. | step_logs                                                                    |

### Response

**[T.nilable(Models::Operations::StackoneGetLogResponse)](../../models/operations/stackonegetlogresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_logs

List Logs

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_logs" method="get" path="/requests/logs" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::StackoneListLogsRequest.new(
  filter: Models::Operations::Filter.new(
    account_ids: '45355976281015164504,45355976281015164505',
    actions: 'download,upload',
    child_resources: 'documents,time-off',
    end_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    http_methods: 'GET,POST',
    order_by: Models::Operations::QueryParamOrderBy::DURATION,
    order_direction: Models::Operations::QueryParamOrderDirection::ASC,
    providers: 'ashby,greenhouse',
    request_ids: 'adbf752f-6457-4ddd-89b3-98ae2252b83b,adbf752f-6457-4ddd-89b3-98ae2252b83c',
    resources: 'employees,users',
    services: 'hris,ats',
    source_types: 'DASHBOARD,SYNTHETIC_WEBHOOK',
    start_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    status_codes: '200,400',
    sub_resources: 'documents,employees',
    success: true,
  ),
  include: Models::Operations::QueryParamInclude::STEP_LOGS,
  order_by: Models::Operations::OrderBy::DURATION,
  order_direction: Models::Operations::OrderDirection::ASC,
)

res = s.request_logs.list_logs(request: req)

unless res.unified_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::StackoneListLogsRequest](../../models/operations/stackonelistlogsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::StackoneListLogsResponse)](../../models/operations/stackonelistlogsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_platform_logs

List Platform Logs

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_platform_logs" method="get" path="/requests/platform-logs" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::StackoneListPlatformLogsRequest.new(
  filter: Models::Operations::QueryParamFilter.new(
    account_ids: '45355976281015164504,45355976281015164505',
    actions: 'download,upload',
    categories: 'hris,ats',
    end_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    http_methods: 'GET,POST',
    order_by: Models::Operations::StackoneListPlatformLogsQueryParamRequestLogsOrderBy::EVENT_DATETIME,
    order_direction: Models::Operations::StackoneListPlatformLogsQueryParamRequestLogsOrderDirection::ASC,
    request_ids: 'adbf752f-6457-4ddd-89b3-98ae2252b83b,adbf752f-6457-4ddd-89b3-98ae2252b83c',
    resources: 'employees,users',
    source_types: 'DASHBOARD,SYNTHETIC_WEBHOOK',
    start_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    status_codes: '200,400',
    success: true,
  ),
  order_by: Models::Operations::StackoneListPlatformLogsQueryParamOrderBy::DURATION,
  order_direction: Models::Operations::StackoneListPlatformLogsQueryParamOrderDirection::ASC,
)

res = s.request_logs.list_platform_logs(request: req)

unless res.platform_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::StackoneListPlatformLogsRequest](../../models/operations/stackonelistplatformlogsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::StackoneListPlatformLogsResponse)](../../models/operations/stackonelistplatformlogsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_step_logs

List Step Logs

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_step_logs" method="get" path="/requests/logs/steps" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::StackoneListStepLogsRequest.new(
  filter: Models::Operations::StackoneListStepLogsQueryParamFilter.new(
    account_ids: '45355976281015164504,45355976281015164505',
    actions: 'download,upload',
    child_resources: 'documents,time-off',
    end_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    http_methods: 'GET,POST',
    providers: 'ashby,greenhouse',
    request_ids: 'adbf752f-6457-4ddd-89b3-98ae2252b83b,adbf752f-6457-4ddd-89b3-98ae2252b83c',
    resources: 'employees,users',
    services: 'hris,ats',
    start_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    status_codes: '200,400',
    sub_resources: 'documents,employees',
    success: true,
  ),
  order_by: Models::Operations::StackoneListStepLogsQueryParamOrderBy::EVENT_DATETIME,
  order_direction: Models::Operations::StackoneListStepLogsQueryParamOrderDirection::ASC,
)

res = s.request_logs.list_step_logs(request: req)

unless res.step_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::StackoneListStepLogsRequest](../../models/operations/stackoneliststeplogsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::StackoneListStepLogsResponse)](../../models/operations/stackoneliststeplogsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |