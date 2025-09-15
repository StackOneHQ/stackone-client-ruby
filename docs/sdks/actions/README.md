# Actions
(*actions*)

## Overview

Retrieve Actions metadata and definitions.

### Available Operations

* [list_actions_meta](#list_actions_meta) - List all actions metadata
* [rpc_action](#rpc_action) - Make an RPC call to an action

## list_actions_meta

Retrieves a list of all actions metadata

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_actions_meta" method="get" path="/actions" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::StackoneListActionsMetaRequest.new(
  filter: Models::Operations::Filter.new(
    account_ids: 'account1,account2',
    action_key: 'action1',
    connectors: 'connector1,connector2',
  ),
  group_by: '["connector"]',
  include: [
    Models::Operations::Include::OPERATION_DETAILS,
  ],
)

res = s.actions.list_actions_meta(request: req)

unless res.actions_meta_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::StackoneListActionsMetaRequest](../../models/operations/stackonelistactionsmetarequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::StackoneListActionsMetaResponse)](../../models/operations/stackonelistactionsmetaresponse.md)**

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

## rpc_action

Makes a remote procedure call to the specified action

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_rpc_action" method="post" path="/actions/rpc" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Shared::ActionsRpcRequestDto.new(
  action: 'create_employee',
  input: Models::Shared::Input.new(
    body: {
      "data": 'example',
    },
    headers: {
      "Content-Type": 'application/json',
    },
    query: {
      "param1": 'value1',
      "param2": 'value2',
    },
  ),
)

res = s.actions.rpc_action(request: req)

unless res.actions_rpc_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Models::Shared::ActionsRpcRequestDto](../../models/shared/actionsrpcrequestdto.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |

### Response

**[T.nilable(Models::Operations::StackoneRpcActionResponse)](../../models/operations/stackonerpcactionresponse.md)**

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