# Mcp
(*mcp*)

## Overview

Model Context Protocol endpoint.

### Available Operations

* [mcp_delete](#mcp_delete) - Delete MCP session
* [mcp_get](#mcp_get) - Open MCP SSE stream
* [mcp_post](#mcp_post) - Send MCP JSON-RPC message

## mcp_delete

Close an existing MCP session for the provided session id

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_mcp_delete" method="delete" path="/mcp" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new

res = s.mcp.mcp_delete(security: Models::Operations::StackoneMcpDeleteSecurity.new(
    api_key: '<YOUR_API_KEY_HERE>',
  ), mcp_session_id: '<id>', x_account_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                | Type                                                                                                     | Required                                                                                                 | Description                                                                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| `security`                                                                                               | [Models::Operations::StackoneMcpDeleteSecurity](../../models/operations/stackonemcpdeletesecurity.md)    | :heavy_check_mark:                                                                                       | The security requirements to use for the request.                                                        |
| `mcp_session_id`                                                                                         | *::String*                                                                                               | :heavy_check_mark:                                                                                       | Session id                                                                                               |
| `x_account_id`                                                                                           | *T.nilable(::String)*                                                                                    | :heavy_minus_sign:                                                                                       | Account secure id for the target provider account (optional if x-account-id query parameter is provided) |
| `x_account_id_query_parameter`                                                                           | *T.nilable(::Object)*                                                                                    | :heavy_minus_sign:                                                                                       | Account secure id (alternative to x-account-id header)                                                   |

### Response

**[T.nilable(Models::Operations::StackoneMcpDeleteResponse)](../../models/operations/stackonemcpdeleteresponse.md)**

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

## mcp_get

Open a dedicated Server-Sent Events stream for MCP notifications

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_mcp_get" method="get" path="/mcp" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new

res = s.mcp.mcp_get(security: Models::Operations::StackoneMcpGetSecurity.new(
    api_key: '<YOUR_API_KEY_HERE>',
  ), mcp_session_id: '<id>', x_account_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                | Type                                                                                                     | Required                                                                                                 | Description                                                                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| `security`                                                                                               | [Models::Operations::StackoneMcpGetSecurity](../../models/operations/stackonemcpgetsecurity.md)          | :heavy_check_mark:                                                                                       | The security requirements to use for the request.                                                        |
| `mcp_session_id`                                                                                         | *::String*                                                                                               | :heavy_check_mark:                                                                                       | Session id                                                                                               |
| `x_account_id`                                                                                           | *T.nilable(::String)*                                                                                    | :heavy_minus_sign:                                                                                       | Account secure id for the target provider account (optional if x-account-id query parameter is provided) |
| `x_account_id_query_parameter`                                                                           | *T.nilable(::Object)*                                                                                    | :heavy_minus_sign:                                                                                       | Account secure id (alternative to x-account-id header)                                                   |

### Response

**[T.nilable(Models::Operations::StackoneMcpGetResponse)](../../models/operations/stackonemcpgetresponse.md)**

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

## mcp_post

Send JSON-RPC request to the MCP server over HTTP streaming transport

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_mcp_post" method="post" path="/mcp" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new

res = s.mcp.mcp_post(security: Models::Operations::StackoneMcpPostSecurity.new(
    api_key: '<YOUR_API_KEY_HERE>',
  ), json_rpc_message_dto: Models::Shared::JsonRpcMessageDto.new(
  id: Models::Shared::Id.new(),
  jsonrpc: '2.0',
  method: 'initialize',
  params: Models::Shared::Params.new(),
), x_account_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                | Type                                                                                                     | Required                                                                                                 | Description                                                                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| `security`                                                                                               | [Models::Operations::StackoneMcpPostSecurity](../../models/operations/stackonemcppostsecurity.md)        | :heavy_check_mark:                                                                                       | The security requirements to use for the request.                                                        |
| `json_rpc_message_dto`                                                                                   | [Models::Shared::JsonRpcMessageDto](../../models/shared/jsonrpcmessagedto.md)                            | :heavy_check_mark:                                                                                       | JSON-RPC 2.0 message                                                                                     |
| `mcp_session_id`                                                                                         | *T.nilable(::String)*                                                                                    | :heavy_minus_sign:                                                                                       | Session id; omit for initialize, include for subsequent calls                                            |
| `x_account_id`                                                                                           | *T.nilable(::String)*                                                                                    | :heavy_minus_sign:                                                                                       | Account secure id for the target provider account (optional if x-account-id query parameter is provided) |
| `x_account_id_query_parameter`                                                                           | *T.nilable(::Object)*                                                                                    | :heavy_minus_sign:                                                                                       | Account secure id (alternative to x-account-id header)                                                   |

### Response

**[T.nilable(Models::Operations::StackoneMcpPostResponse)](../../models/operations/stackonemcppostresponse.md)**

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