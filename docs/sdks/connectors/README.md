# Connectors
(*connectors*)

## Overview

Retrieve metadata for connectors.

### Available Operations

* [get_connector_meta](#get_connector_meta) - Get Connector Meta Information
* [list_connectors_meta](#list_connectors_meta) - List Connector Meta Information

## get_connector_meta

Get Connector Meta Information

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
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

**[T.nilable(Models::Operations::StackoneGetConnectorMetaResponse)](../../models/operations/stackonegetconnectormetaresponse.md)**



## list_connectors_meta

List Connector Meta Information

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
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

**[T.nilable(Models::Operations::StackoneListConnectorsMetaResponse)](../../models/operations/stackonelistconnectorsmetaresponse.md)**

