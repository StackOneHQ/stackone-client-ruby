# Logs

## Overview

API request logs and analytics.

### Available Operations

* [get_action_advanced_log](#get_action_advanced_log) - Get Action Advanced Log
* [get_action_defender_log](#get_action_defender_log) - Get Action Defender Log
* [get_action_log](#get_action_log) - Get Action Log
* [get_logs_stats_aggregate](#get_logs_stats_aggregate) - Get Logs Stats Aggregate
* [get_logs_stats_dimensions](#get_logs_stats_dimensions) - Get Logs Stats Dimensions
* [get_provider_advanced_log](#get_provider_advanced_log) - Get Provider Advanced Log
* [get_provider_log](#get_provider_log) - Get Provider Log
* [get_step_advanced_log](#get_step_advanced_log) - Get Step Advanced Log
* [get_step_log](#get_step_log) - Get Step Log
* [get_unified_advanced_log](#get_unified_advanced_log) - Get Unified Advanced Log
* [get_unified_log](#get_unified_log) - Get Unified Log
* [list_action_logs](#list_action_logs) - List Action Logs
* [list_action_step_logs](#list_action_step_logs) - List Action Step Logs
* [list_logs](#list_logs) - List Logs
* [list_provider_logs](#list_provider_logs) - List Provider Logs
* [list_step_logs](#list_step_logs) - List Step Logs
* [list_unified_logs](#list_unified_logs) - List Unified Logs
* [list_unified_provider_logs](#list_unified_provider_logs) - List Unified Provider Logs

## get_action_advanced_log

Returns the full HTTP request and response bodies for an action run. Fetch on demand when inspecting payloads — not for every row, as advanced logs are large.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_action_advanced_log" method="get" path="/logs/actions/{actionRunId}/advanced" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.get_action_advanced_log(action_run_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `action_run_id`    | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetActionAdvancedLogResponse)](../../models/operations/stackonegetactionadvancedlogresponse.md)**

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

## get_action_defender_log

Returns StackOne Defender scan results for an action run, including the risk classification and scores. Available when Defender is enabled; use to review the security assessment of AI agent tool calls.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_action_defender_log" method="get" path="/logs/actions/{actionRunId}/defender" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.get_action_defender_log(action_run_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `action_run_id`    | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetActionDefenderLogResponse)](../../models/operations/stackonegetactiondefenderlogresponse.md)**

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

## get_action_log

Returns the full metadata for a single action run identified by `action_run_id` — status, duration, connector, account, action, and event time. Use after locating an `action_run_id` from List Action Logs.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_action_log" method="get" path="/logs/actions/{actionRunId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.get_action_log(action_run_id: '<id>')

unless res.action_log.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `action_run_id`    | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetActionLogResponse)](../../models/operations/stackonegetactionlogresponse.md)**

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

## get_logs_stats_aggregate

Returns aggregated log metrics — request volume, error counts, and latency — optionally grouped by one or more dimensions and bucketed into time intervals. Use for dashboards and trends instead of listing individual rows.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_logs_stats_aggregate" method="post" path="/logs/stats/aggregate" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)

req = Models::Shared::AggregationPostDto.new(
  filters: nil,
  interval_period: 1.0
)
res = s.logs.get_logs_stats_aggregate(request: req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Models::Shared::AggregationPostDto](../../models/shared/aggregationpostdto.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |

### Response

**[T.nilable(Models::Operations::StackoneGetLogsStatsAggregateResponse)](../../models/operations/stackonegetlogsstatsaggregateresponse.md)**

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

## get_logs_stats_dimensions

Returns the distinct values available for the requested dimensions (for example connector, account, or status code). Use to populate filter controls and build breakdowns.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_logs_stats_dimensions" method="post" path="/logs/stats/dimensions" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)

req = Models::Shared::DimensionsPostDto.new(
  dimensions: [],
  filters: Models::Shared::DimensionsPostDtoFilters.new(
    account_secure_id: [
      '45355976281015164504',
    ],
    action: [
      'create_employee',
    ],
    action_id: [
      'get_employees',
    ],
    action_run_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    action_type: [
      'sync',
    ],
    category: [
      'hris',
    ],
    connector_key: [
      'slack',
    ],
    connector_version: [
      '1.0.0',
    ],
    end_time: '2025-01-31T23:59:59.999Z',
    log_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    mode: [
      'production',
    ],
    origin_owner_id: [
      'owner-123',
    ],
    provider: [
      'hibob',
    ],
    request_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    resource: [
      'employees',
    ],
    service: [
      'hris',
    ],
    source_id: [
      '1234567890',
    ],
    source_type: [
      'DASHBOARD',
    ],
    start_time: '2025-01-01T00:00:00.000Z',
    status_code: [
      '200',
    ],
    sub_resource: [
      'documents',
    ],
    success: true
  )
)
res = s.logs.get_logs_stats_dimensions(request: req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `request`                                                                     | [Models::Shared::DimensionsPostDto](../../models/shared/dimensionspostdto.md) | :heavy_check_mark:                                                            | The request object to use for the request.                                    |

### Response

**[T.nilable(Models::Operations::StackoneGetLogsStatsDimensionsResponse)](../../models/operations/stackonegetlogsstatsdimensionsresponse.md)**

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

## get_provider_advanced_log

Returns the full request and response bodies for a single provider request made while serving a unified request, identified by the unified `request_id` and the provider log `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_provider_advanced_log" method="get" path="/logs/unified/{requestId}/provider/{id}/advanced" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.get_provider_advanced_log(id: '<id>', request_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |
| `request_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetProviderAdvancedLogResponse)](../../models/operations/stackonegetprovideradvancedlogresponse.md)**

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

## get_provider_log

Returns the metadata for a single provider request made while serving a unified request, identified by the unified `request_id` and the provider log `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_provider_log" method="get" path="/logs/unified/{requestId}/provider/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.get_provider_log(id: '<id>', request_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |
| `request_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetProviderLogResponse)](../../models/operations/stackonegetproviderlogresponse.md)**

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

## get_step_advanced_log

Returns the full request and response bodies for a single step of an action run, identified by `action_run_id` and `step_index`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_step_advanced_log" method="get" path="/logs/actions/{actionRunId}/steps/{stepIndex}/advanced" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.get_step_advanced_log(action_run_id: '<id>', step_index: 7982.24)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `action_run_id`    | *::String*         | :heavy_check_mark: | N/A                |
| `step_index`       | *::Float*          | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetStepAdvancedLogResponse)](../../models/operations/stackonegetstepadvancedlogresponse.md)**

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

## get_step_log

Returns the metadata for a single step within an action run, identified by its `step_index`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_step_log" method="get" path="/logs/actions/{actionRunId}/steps/{stepIndex}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.get_step_log(action_run_id: '<id>', step_index: 6773.0)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `action_run_id`    | *::String*         | :heavy_check_mark: | N/A                |
| `step_index`       | *::Float*          | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetStepLogResponse)](../../models/operations/stackonegetsteplogresponse.md)**

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

## get_unified_advanced_log

Returns the full request and response bodies for a single unified request, identified by `request_id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_unified_advanced_log" method="get" path="/logs/unified/{requestId}/advanced" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.get_unified_advanced_log(request_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `request_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetUnifiedAdvancedLogResponse)](../../models/operations/stackonegetunifiedadvancedlogresponse.md)**

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

## get_unified_log

Returns the metadata for a single unified request log identified by `request_id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_unified_log" method="get" path="/logs/unified/{requestId}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.get_unified_log(request_id: '<id>')

unless res.unified_log.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `request_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetUnifiedLogResponse)](../../models/operations/stackonegetunifiedlogresponse.md)**

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

## list_action_logs

Returns a paginated list of action logs. Each row summarises a single action or RPC execution and includes an `action_run_id` for drilling into its detail, steps, and advanced payloads.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_action_logs" method="post" path="/logs/actions" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)

req = Models::Shared::ActionLogsPostDto.new(
  filters: Models::Shared::Filters.new(
    account_secure_id: [
      '45355976281015164504',
    ],
    action_id: [
      'get_employees',
    ],
    action_run_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    action_type: [
      'sync',
    ],
    category: [
      'hris',
    ],
    connector_key: [
      'slack',
    ],
    connector_version: [
      '1.0.0',
    ],
    end_time: '2025-01-31T23:59:59.999Z',
    mode: [
      'production',
    ],
    origin_owner_id: [
      'owner-123',
    ],
    source_id: [
      '1234567890',
    ],
    source_type: [
      'DASHBOARD',
    ],
    start_time: '2025-01-01T00:00:00.000Z',
    status_code: [
      '200',
    ],
    success: true
  ),
  page: 1.0,
  page_size: 25.0
)
res = s.logs.list_action_logs(request: req)

unless res.action_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `request`                                                                     | [Models::Shared::ActionLogsPostDto](../../models/shared/actionlogspostdto.md) | :heavy_check_mark:                                                            | The request object to use for the request.                                    |

### Response

**[T.nilable(Models::Operations::StackoneListActionLogsResponse)](../../models/operations/stackonelistactionlogsresponse.md)**

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

## list_action_step_logs

Returns the connector execution steps for a single action run, in execution order. Use to examine the individual steps of a request when debugging a failure.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_action_step_logs" method="get" path="/logs/actions/{actionRunId}/steps" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.list_action_step_logs(action_run_id: '<id>', page: 2239.51, page_size: 6392.8)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `action_run_id`    | *::String*         | :heavy_check_mark: | N/A                |
| `page`             | *::Float*          | :heavy_check_mark: | N/A                |
| `page_size`        | *::Float*          | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneListActionStepLogsResponse)](../../models/operations/stackonelistactionsteplogsresponse.md)**

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

Returns a paginated list of logs. Each log includes a `log_type` discriminator field with possible values: `action` or `unified`. Use the `log_type` filter to request specific types.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_logs" method="post" path="/logs" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)

req = Models::Shared::LogsPostDto.new(
  filters: Models::Shared::LogsPostDtoFilters.new(
    account_secure_id: [
      '45355976281015164504',
    ],
    action: [
      'create_employee',
    ],
    action_id: [
      'get_employees',
    ],
    action_run_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    action_type: [
      'sync',
    ],
    category: [
      'hris',
    ],
    connector_key: [
      'slack',
    ],
    connector_version: [
      '1.0.0',
    ],
    end_time: '2025-01-31T23:59:59.999Z',
    log_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    mode: [
      'production',
    ],
    origin_owner_id: [
      'owner-123',
    ],
    provider: [
      'hibob',
    ],
    request_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    resource: [
      'employees',
    ],
    service: [
      'hris',
    ],
    source_id: [
      '1234567890',
    ],
    source_type: [
      'DASHBOARD',
    ],
    start_time: '2025-01-01T00:00:00.000Z',
    status_code: [
      '200',
    ],
    sub_resource: [
      'documents',
    ],
    success: true
  ),
  page: 1.0,
  page_size: 25.0
)
res = s.logs.list_logs(request: req)

unless res.logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `request`                                                         | [Models::Shared::LogsPostDto](../../models/shared/logspostdto.md) | :heavy_check_mark:                                                | The request object to use for the request.                        |

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

## list_provider_logs

Returns a paginated list of provider request logs — the raw requests StackOne sent to the downstream provider.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_provider_logs" method="post" path="/logs/provider" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)

req = Models::Shared::ProviderLogsPostDto.new(
  filters: Models::Shared::ProviderLogsPostDtoFilters.new(
    account_secure_id: [
      '45355976281015164504',
    ],
    end_time: '2025-01-31T23:59:59.999Z',
    request_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    start_time: '2025-01-01T00:00:00.000Z',
    success: true
  ),
  page: 1.0,
  page_size: 25.0
)
res = s.logs.list_provider_logs(request: req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Models::Shared::ProviderLogsPostDto](../../models/shared/providerlogspostdto.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |

### Response

**[T.nilable(Models::Operations::StackoneListProviderLogsResponse)](../../models/operations/stackonelistproviderlogsresponse.md)**

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

Returns a paginated list of connector execution steps across action runs. Each action runs as one or more steps; use this to find steps without first selecting an action run.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_step_logs" method="post" path="/logs/steps" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)

req = Models::Shared::StepsLogsPostDto.new(
  filters: Models::Shared::StepsLogsPostDtoFilters.new(
    account_secure_id: [
      '45355976281015164504',
    ],
    action_run_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    end_time: '2025-01-31T23:59:59.999Z',
    start_time: '2025-01-01T00:00:00.000Z',
    success: true
  ),
  page: 1.0,
  page_size: 25.0
)
res = s.logs.list_step_logs(request: req)

unless res.step_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `request`                                                                   | [Models::Shared::StepsLogsPostDto](../../models/shared/stepslogspostdto.md) | :heavy_check_mark:                                                          | The request object to use for the request.                                  |

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

## list_unified_logs

Returns a paginated list of unified request logs — StackOne-normalized API requests.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_unified_logs" method="post" path="/logs/unified" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)

req = Models::Shared::UnifiedLogsPostDto.new(
  filters: Models::Shared::UnifiedLogsPostDtoFilters.new(
    account_secure_id: [
      '45355976281015164504',
    ],
    action: [
      'create_employee',
    ],
    connector_key: [
      'slack',
    ],
    end_time: '2025-01-31T23:59:59.999Z',
    mode: [
      'production',
    ],
    origin_owner_id: [
      'owner-123',
    ],
    request_id: [
      'adbf752f-6457-4ddd-89b3-98ae2252b83b',
    ],
    resource: [
      'employees',
    ],
    service: [
      'hris',
    ],
    source_id: [
      '1234567890',
    ],
    source_type: [
      'DASHBOARD',
    ],
    start_time: '2025-01-01T00:00:00.000Z',
    status_code: [
      '200',
    ],
    success: true
  ),
  page: 1.0,
  page_size: 25.0
)
res = s.logs.list_unified_logs(request: req)

unless res.unified_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Models::Shared::UnifiedLogsPostDto](../../models/shared/unifiedlogspostdto.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |

### Response

**[T.nilable(Models::Operations::StackoneListUnifiedLogsResponse)](../../models/operations/stackonelistunifiedlogsresponse.md)**

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

## list_unified_provider_logs

Returns the underlying provider requests StackOne made while serving a single unified request, identified by `request_id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_unified_provider_logs" method="get" path="/logs/unified/{requestId}/provider" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.logs.list_unified_provider_logs(page: 6031.38, page_size: 6484.47, request_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `page`             | *::Float*          | :heavy_check_mark: | N/A                |
| `page_size`        | *::Float*          | :heavy_check_mark: | N/A                |
| `request_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneListUnifiedProviderLogsResponse)](../../models/operations/stackonelistunifiedproviderlogsresponse.md)**

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