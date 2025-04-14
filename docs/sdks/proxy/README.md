# Proxy
(*proxy*)

## Overview

### Available Operations

* [proxy_request](#proxy_request) - Proxy Request

## proxy_request

Proxy Request

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.proxy.proxy_request(proxy_request_body=Models::Shared::ProxyRequestBody.new(
  headers: {
    "Content-Type": "application/json",
  },
  path: "/employees/directory",
  url: "https://api.sample-integration.com/v1",
), x_account_id="<id>")

if res.status_code == 200
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

