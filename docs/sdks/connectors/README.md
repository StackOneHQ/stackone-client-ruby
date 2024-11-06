# Connectors
(*connectors*)

## Overview

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
    password: "",
    username: "",
  )
)

    
res = s.connectors.get_connector_meta(provider="<value>", include="field_path,unmapped_fields,resources,inactive,webhooks,static_fields")

if ! res.connectors_meta.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            | Example                                                                |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `provider`                                                             | *::String*                                                             | :heavy_check_mark:                                                     | N/A                                                                    |                                                                        |
| `include`                                                              | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | The comma separated list of data that will be included in the response | field_path,unmapped_fields,resources,inactive,webhooks,static_fields   |

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
    password: "",
    username: "",
  )
)

    
res = s.connectors.list_connectors_meta(include="field_path,unmapped_fields,resources,inactive,webhooks,static_fields")

if ! res.connectors_metas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            | Example                                                                |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `include`                                                              | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | The comma separated list of data that will be included in the response | field_path,unmapped_fields,resources,inactive,webhooks,static_fields   |

### Response

**[T.nilable(::StackOne::Operations::StackoneListConnectorsMetaResponse)](../../models/operations/stackonelistconnectorsmetaresponse.md)**

