# Connectors


### Available Operations

* [get_connector_meta](#get_connector_meta) - Get Connector Meta information for the given provider key
* [list_connectors_meta](#list_connectors_meta) - List Connectors Meta Information for all providers

## get_connector_meta

Get Connector Meta information for the given provider key

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.connectors.get_connector_meta(provider="string", include="string")

if ! res.connectors_meta.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `provider`                                                             | *::String*                                                             | :heavy_check_mark:                                                     | N/A                                                                    |
| `include`                                                              | *::String*                                                             | :heavy_minus_sign:                                                     | The comma separated list of data that will be included in the response |


### Response

**[T.nilable(::StackOne::Operations::StackoneGetConnectorMetaResponse)](../../models/operations/stackonegetconnectormetaresponse.md)**


## list_connectors_meta

List Connectors Meta Information for all providers

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.connectors.list_connectors_meta(include="string")

if ! res.connectors_metas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `include`                                                              | *::String*                                                             | :heavy_minus_sign:                                                     | The comma separated list of data that will be included in the response |


### Response

**[T.nilable(::StackOne::Operations::StackoneListConnectorsMetaResponse)](../../models/operations/stackonelistconnectorsmetaresponse.md)**

