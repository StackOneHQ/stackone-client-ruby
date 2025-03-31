# RequestLogs
(*request_logs*)

## Overview

### Available Operations

* [get_log](#get_log) - Get a Log
* [list_logs](#list_logs) - List Logs
* [list_step_logs](#list_step_logs) - List Step Logs

## get_log

Get a Log

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: ::StackOne::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.request_logs.get_log(id="<id>", include=::StackOne::Operations::Include::STEP_LOGS)

if ! res.unified_log_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                        | Type                                                                             | Required                                                                         | Description                                                                      | Example                                                                          |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `id`                                                                             | *::String*                                                                       | :heavy_check_mark:                                                               | N/A                                                                              |                                                                                  |
| `include`                                                                        | [T.nilable(::StackOne::Operations::Include)](../../models/operations/include.md) | :heavy_minus_sign:                                                               | The include parameter allows you to include additional data in the response.     | step_logs                                                                        |

### Response

**[T.nilable(::StackOne::Operations::StackoneGetLogResponse)](../../models/operations/stackonegetlogresponse.md)**



## list_logs

List Logs

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: ::StackOne::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = ::StackOne::Operations::StackoneListLogsRequest.new(
  filter: ::StackOne::Operations::Filter.new(
    account_ids: "45355976281015164504,45355976281015164505",
    actions: "download,upload",
    child_resources: "documents,time-off",
    end_date: "2020-01-01T00:00:00.000Z",
    http_methods: "GET,POST",
    order_by: ::StackOne::Operations::QueryParamOrderBy::SERVICE,
    order_direction: ::StackOne::Operations::QueryParamOrderDirection::ASC,
    providers: "ashby,greenhouse",
    request_ids: "adbf752f-6457-4ddd-89b3-98ae2252b83b,adbf752f-6457-4ddd-89b3-98ae2252b83c",
    resources: "employees,users",
    services: "hris,ats",
    source_types: "DASHBOARD,SYNTHETIC_WEBHOOK",
    start_date: "2020-01-01T00:00:00.000Z",
    status_codes: "200,400",
    sub_resources: "documents,employees",
    success: true,
  ),
  include: ::StackOne::Operations::QueryParamInclude::STEP_LOGS,
  order_by: ::StackOne::Operations::OrderBy::SERVICE,
  order_direction: ::StackOne::Operations::OrderDirection::ASC,
)

res = s.request_logs.list_logs(req)

if ! res.unified_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::StackOne::Operations::StackoneListLogsRequest](../../models/operations/stackonelistlogsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(::StackOne::Operations::StackoneListLogsResponse)](../../models/operations/stackonelistlogsresponse.md)**



## list_step_logs

List Step Logs

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: ::StackOne::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = ::StackOne::Operations::StackoneListStepLogsRequest.new(
  filter: ::StackOne::Operations::QueryParamFilter.new(
    account_ids: "45355976281015164504,45355976281015164505",
    actions: "download,upload",
    child_resources: "documents,time-off",
    end_date: "2020-01-01T00:00:00.000Z",
    http_methods: "GET,POST",
    order_by: ::StackOne::Operations::StackoneListStepLogsQueryParamRequestLogsOrderBy::STATUS,
    order_direction: ::StackOne::Operations::StackoneListStepLogsQueryParamRequestLogsOrderDirection::ASC,
    providers: "ashby,greenhouse",
    request_ids: "adbf752f-6457-4ddd-89b3-98ae2252b83b,adbf752f-6457-4ddd-89b3-98ae2252b83c",
    resources: "employees,users",
    services: "hris,ats",
    start_date: "2020-01-01T00:00:00.000Z",
    status_codes: "200,400",
    sub_resources: "documents,employees",
    success: true,
  ),
  include: ::StackOne::Operations::StackoneListStepLogsQueryParamInclude::STEP_LOGS,
  order_by: ::StackOne::Operations::StackoneListStepLogsQueryParamOrderBy::STATUS,
  order_direction: ::StackOne::Operations::StackoneListStepLogsQueryParamOrderDirection::ASC,
)

res = s.request_logs.list_step_logs(req)

if ! res.step_logs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::StackOne::Operations::StackoneListStepLogsRequest](../../models/operations/stackoneliststeplogsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(::StackOne::Operations::StackoneListStepLogsResponse)](../../models/operations/stackoneliststeplogsresponse.md)**

