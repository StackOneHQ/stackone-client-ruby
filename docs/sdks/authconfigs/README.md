# AuthConfigs

## Overview

View and manage connector auth configurations for the project.

### Available Operations

* [list_auth_configs](#list_auth_configs) - List Auth Configs

## list_auth_configs

List the auth configs available to the project.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_auth_configs" method="get" path="/auth_configs" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.auth_configs.list_auth_configs(connector_key: 'salesforce', enabled: true, page_size: 25.0)

unless res.auth_configs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                | Example                                    |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `connector_key`                            | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Filter auth configs by connector key       | salesforce                                 |
| `enabled`                                  | *T.nilable(T::Boolean)*                    | :heavy_minus_sign:                         | Filter auth configs by their enabled state | true                                       |
| `page`                                     | *T.nilable(::Float)*                       | :heavy_minus_sign:                         | The page number of the results to fetch    |                                            |
| `page_size`                                | *T.nilable(::Float)*                       | :heavy_minus_sign:                         | The number of results per page             |                                            |

### Response

**[T.nilable(Models::Operations::StackoneListAuthConfigsResponse)](../../models/operations/stackonelistauthconfigsresponse.md)**

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