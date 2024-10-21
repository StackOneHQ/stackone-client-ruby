# StackoneGetConnectorMetaRequest


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            | Example                                                                |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `provider`                                                             | *::String*                                                             | :heavy_check_mark:                                                     | N/A                                                                    |                                                                        |
| `include`                                                              | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | The comma separated list of data that will be included in the response | field_path,unmapped_fields,resources,inactive,webhooks,static_fields   |