# Proxy


### Available Operations

* [proxy_request](#proxy_request) - Proxy Request

## proxy_request

Proxy Request

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.proxy.proxy_request(proxy_request_body=::StackOne::Shared::ProxyRequestBody.new(
    headers: {
      "Car": "<value>",
    },
    path: "/employees/directory",
    url: "https://api.sample-integration.com/v1",
  ), x_account_id="<value>")

if res.status_code == 200
  # handle response
end

```



### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `proxy_request_body`                                                            | [::StackOne::Shared::ProxyRequestBody](../../models/shared/proxyrequestbody.md) | :heavy_check_mark:                                                              | The request body                                                                |
| `x_account_id`                                                                  | *::String*                                                                      | :heavy_check_mark:                                                              | The account identifier                                                          |


### Response

**[T.nilable(::StackOne::Operations::StackoneProxyRequestResponse)](../../models/operations/stackoneproxyrequestresponse.md)**

