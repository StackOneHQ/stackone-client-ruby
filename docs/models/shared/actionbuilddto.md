# ActionBuildDto


## Fields

| Field                                                           | Type                                                            | Required                                                        | Description                                                     | Example                                                         |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connector_key`                                                 | *T.nilable(::String)*                                           | :heavy_minus_sign:                                              | Specific connector key to rebuild embeddings for                | slack                                                           |
| `force_refresh`                                                 | *T.nilable(T::Boolean)*                                         | :heavy_minus_sign:                                              | Force refresh - clear all existing embeddings before rebuilding |                                                                 |