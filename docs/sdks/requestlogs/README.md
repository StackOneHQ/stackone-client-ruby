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

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.request_logs.get_log(id="<id>", include=Models::Operations::Include::STEP_LOGS)

if ! res.unified_log_result.nil?
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



## list_logs

List Logs

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::StackoneListLogsRequest.new(
  filter: Models::Operations::Filter.new(
    account_ids: "45355976281015164504,45355976281015164505",
    actions: "download,upload",
    child_resources: "documents,time-off",
    end_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    http_methods: "GET,POST",
    order_by: Models::Operations::QueryParamOrderBy::SERVICE,
    order_direction: Models::Operations::QueryParamOrderDirection::ASC,
    providers: "ashby,greenhouse",
    request_ids: "adbf752f-6457-4ddd-89b3-98ae2252b83b,adbf752f-6457-4ddd-89b3-98ae2252b83c",
    resources: "employees,users",
    services: "hris,ats",
    source_types: "DASHBOARD,SYNTHETIC_WEBHOOK",
    start_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    status_codes: "200,400",
    sub_resources: "documents,employees",
    success: true,
  ),
  include: Models::Operations::QueryParamInclude::STEP_LOGS,
  order_by: Models::Operations::OrderBy::SERVICE,
  order_direction: Models::Operations::OrderDirection::ASC,
)

res = s.request_logs.list_logs(req)

if ! res.unified_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::StackoneListLogsRequest](../../models/operations/stackonelistlogsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::StackoneListLogsResponse)](../../models/operations/stackonelistlogsresponse.md)**



## list_platform_logs

List Platform Logs

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::StackoneListPlatformLogsRequest.new(
  filter: Models::Operations::QueryParamFilter.new(
    account_ids: "45355976281015164504,45355976281015164505",
    actions: "download,upload",
    categories: "hris,ats",
    end_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    http_methods: "GET,POST",
    order_by: Models::Operations::StackoneListPlatformLogsQueryParamRequestLogsOrderBy::EVENT_DATETIME,
    order_direction: Models::Operations::StackoneListPlatformLogsQueryParamRequestLogsOrderDirection::ASC,
    request_ids: "adbf752f-6457-4ddd-89b3-98ae2252b83b,adbf752f-6457-4ddd-89b3-98ae2252b83c",
    resources: "employees,users",
    source_types: "DASHBOARD,SYNTHETIC_WEBHOOK",
    start_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    status_codes: "200,400",
    success: true,
  ),
  order_by: Models::Operations::StackoneListPlatformLogsQueryParamOrderBy::STATUS,
  order_direction: Models::Operations::StackoneListPlatformLogsQueryParamOrderDirection::ASC,
)

res = s.request_logs.list_platform_logs(req)

if ! res.platform_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::StackoneListPlatformLogsRequest](../../models/operations/stackonelistplatformlogsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::StackoneListPlatformLogsResponse)](../../models/operations/stackonelistplatformlogsresponse.md)**



## list_step_logs

List Step Logs

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::StackoneListStepLogsRequest.new(
  filter: Models::Operations::StackoneListStepLogsQueryParamFilter.new(
    account_ids: "45355976281015164504,45355976281015164505",
    actions: "download,upload",
    child_resources: "documents,time-off",
    end_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    http_methods: "GET,POST",
    providers: "ashby,greenhouse",
    request_ids: "adbf752f-6457-4ddd-89b3-98ae2252b83b,adbf752f-6457-4ddd-89b3-98ae2252b83c",
    resources: "employees,users",
    services: "hris,ats",
    start_date: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    status_codes: "200,400",
    sub_resources: "documents,employees",
    success: true,
  ),
  order_by: Models::Operations::StackoneListStepLogsQueryParamOrderBy::STATUS,
  order_direction: Models::Operations::StackoneListStepLogsQueryParamOrderDirection::ASC,
)

res = s.request_logs.list_step_logs(req)

if ! res.step_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::StackoneListStepLogsRequest](../../models/operations/stackoneliststeplogsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::StackoneListStepLogsResponse)](../../models/operations/stackoneliststeplogsresponse.md)**

