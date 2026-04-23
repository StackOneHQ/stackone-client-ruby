# Actions

## Overview

Retrieve Actions metadata and definitions.

### Available Operations

* [build_action_embeddings](#build_action_embeddings) - Rebuild action embeddings for semantic search
* [check_permissions](#check_permissions) - Check user permissions on a resource
* [list_actions_meta](#list_actions_meta) - List all actions metadata
* [rpc_action](#rpc_action) - Make an RPC call to an action
* [rpc_action_synced](#rpc_action_synced) - Read synced action data from the datasync index
* [search_actions](#search_actions) - Search connector actions by semantic similarity

## build_action_embeddings

Rebuild action embeddings for semantic search

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_build_action_embeddings" method="post" path="/actions/build" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)

req = Models::Shared::ActionBuildDto.new(
  connector_key: 'slack'
)
res = s.actions.build_action_embeddings(request: req)

unless res.action_build_response_dto.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `request`                                                               | [Models::Shared::ActionBuildDto](../../models/shared/actionbuilddto.md) | :heavy_check_mark:                                                      | The request object to use for the request.                              |

### Response

**[T.nilable(Models::Operations::StackoneBuildActionEmbeddingsResponse)](../../models/operations/stackonebuildactionembeddingsresponse.md)**

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

## check_permissions

Checks what permissions a user has on a given resource. Delegates to the connected provider's unified_check_permissions action.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_check_permissions" method="post" path="/unified/check_permissions" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.actions.check_permissions(check_permissions_request_dto: Models::Shared::CheckPermissionsRequestDto.new(
  action: Models::Shared::Action::READ,
  email: 'user@company.com',
  resource_id: 'C08G6QB90LU',
  resource_type: 'channel',
  user_id: 'U08FW4R4N6S'
), x_account_id: '<id>', prefer: 'heartbeat')

unless res.check_permissions_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                | Type                                                                                                                                                                     | Required                                                                                                                                                                 | Description                                                                                                                                                              | Example                                                                                                                                                                  |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `check_permissions_request_dto`                                                                                                                                          | [Models::Shared::CheckPermissionsRequestDto](../../models/shared/checkpermissionsrequestdto.md)                                                                          | :heavy_check_mark:                                                                                                                                                       | N/A                                                                                                                                                                      |                                                                                                                                                                          |
| `x_account_id`                                                                                                                                                           | *::String*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                       | The account identifier                                                                                                                                                   |                                                                                                                                                                          |
| `prefer`                                                                                                                                                                 | *T.nilable(::String)*                                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                       | Set to "heartbeat" to enable keep-alive newline heartbeats during long-running requests. Response includes Preference-Applied: heartbeat header when honored. (RFC 7240) | heartbeat                                                                                                                                                                |

### Response

**[T.nilable(Models::Operations::StackoneCheckPermissionsResponse)](../../models/operations/stackonecheckpermissionsresponse.md)**

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
    username: ''
  )
)

req = Models::Operations::StackoneListActionsMetaRequest.new(
  exclude: [
    Models::Operations::Exclude::ACTIONS,
  ],
  filter: Models::Operations::Filter.new(
    account_ids: 'account1,account2',
    action_key: 'action1',
    connectors: 'connector1,connector2'
  ),
  group_by: '["connector"]',
  include: [
    Models::Operations::Include::ACTION_DETAILS,
  ],
  search: 'employee'
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
    username: ''
  )
)

req = Models::Operations::StackoneRpcActionRequest.new(
  actions_rpc_request_dto: Models::Shared::ActionsRpcRequestDto.new(
    action: 'create_employee',
    body: {
      'data' => 'example',
    },
    defender_config: Models::Shared::DefenderConfig.new(
      block_high_risk: false,
      enabled: true,
      use_tier1_classification: true,
      use_tier2_classification: true
    ),
    headers: {
      'Content-Type' => 'application/json',
    },
    path: {
      'id' => '123',
    },
    query: Models::Shared::Query.new(
      debug: false
    )
  ),
  debug: false,
  run_id: '550e8400-e29b-41d4-a716-446655440000',
  sync: false,
  x_account_id: '<id>'
)
res = s.actions.rpc_action(request: req)

unless res.one_of.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::StackoneRpcActionRequest](../../models/operations/stackonerpcactionrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

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

## rpc_action_synced

Returns previously synced data for the specified action from the OpenSearch index

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_rpc_action_synced" method="post" path="/actions/rpc/synced" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.actions.rpc_action_synced(actions_rpc_synced_request_dto: Models::Shared::ActionsRpcSyncedRequestDto.new(
  action: 'create_employee',
  filter: {
    'status' => 'active',
  },
  path: {
    'id' => '123',
  },
  run_id: '550e8400-e29b-41d4-a716-446655440000'
), page_size: 25.0, skip: 0.0)

unless res.actions_synced_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     | Example                                                                                         |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `actions_rpc_synced_request_dto`                                                                | [Models::Shared::ActionsRpcSyncedRequestDto](../../models/shared/actionsrpcsyncedrequestdto.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |                                                                                                 |
| `page_size`                                                                                     | *T.nilable(::Float)*                                                                            | :heavy_minus_sign:                                                                              | The number of results to return per page                                                        | 25                                                                                              |
| `skip`                                                                                          | *T.nilable(::Float)*                                                                            | :heavy_minus_sign:                                                                              | The number of results to skip before returning results                                          | 0                                                                                               |

### Response

**[T.nilable(Models::Operations::StackoneRpcActionSyncedResponse)](../../models/operations/stackonerpcactionsyncedresponse.md)**

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

## search_actions

Search connector actions by semantic similarity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_search_actions" method="post" path="/actions/search" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)

req = Models::Shared::ActionSearchDto.new(
  connector: 'slack',
  query: 'send a message'
)
res = s.actions.search_actions(request: req)

unless res.action_search_response_dto.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `request`                                                                 | [Models::Shared::ActionSearchDto](../../models/shared/actionsearchdto.md) | :heavy_check_mark:                                                        | The request object to use for the request.                                |

### Response

**[T.nilable(Models::Operations::StackoneSearchActionsResponse)](../../models/operations/stackonesearchactionsresponse.md)**

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