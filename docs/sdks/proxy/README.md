# Proxy


### Available Operations

* [proxy_request](#proxy_request) - Proxy Request

## proxy_request

Proxy Request

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::StackoneProxyRequestRequest.new(
  proxy_request_body=Shared::ProxyRequestBody.new(
    body=Shared::Body.new(),
    headers=Shared::Headers.new(),
    path="/employees/directory",
    url="https://api.sample-integration.com/v1",
  ),
  x_account_id="string",
)
    
res = s.proxy.proxy_request(proxy_request_body=Shared::ProxyRequestBody.new(
    body=Shared::Body.new(),
    headers=Shared::Headers.new(),
    path="/employees/directory",
    url="https://api.sample-integration.com/v1",
  ), x_account_id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `proxy_request_body`                                                | [Shared::ProxyRequestBody](../../models/shared/proxyrequestbody.md) | :heavy_check_mark:                                                  | The request body                                                    |
| `x_account_id`                                                      | *String*                                                            | :heavy_check_mark:                                                  | The account identifier                                              |


### Response

**[T.nilable(Operations::StackoneProxyRequestResponse)](../../models/operations/stackoneproxyrequestresponse.md)**
