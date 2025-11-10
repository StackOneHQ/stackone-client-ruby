# Proxy
(*proxy*)

## Overview

Routing API requests through StackOne directly to the underlying provider.

### Available Operations

* [proxy_request](#proxy_request) - Proxy Request

## proxy_request

Proxy Request

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_proxy_request" method="post" path="/unified/proxy" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.proxy.proxy_request(proxy_request_body: Models::Shared::ProxyRequestBody.new(
  headers: {
    "Content-Type": 'application/json',
  },
  path: '/employees/directory',
  url: 'https://api.sample-integration.com/v1',
), x_account_id: '<id>')

unless res.proxy_response_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `proxy_request_body`                                                        | [Models::Shared::ProxyRequestBody](../../models/shared/proxyrequestbody.md) | :heavy_check_mark:                                                          | The request body                                                            |
| `x_account_id`                                                              | *::String*                                                                  | :heavy_check_mark:                                                          | The account identifier                                                      |

### Response

**[T.nilable(Models::Operations::StackoneProxyRequestResponse)](../../models/operations/stackoneproxyrequestresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |