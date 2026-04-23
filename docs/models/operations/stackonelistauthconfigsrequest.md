# StackoneListAuthConfigsRequest


## Fields

| Field                                      | Type                                       | Required                                   | Description                                | Example                                    |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `connector_key`                            | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Filter auth configs by connector key       | salesforce                                 |
| `enabled`                                  | *T.nilable(T::Boolean)*                    | :heavy_minus_sign:                         | Filter auth configs by their enabled state | true                                       |
| `page`                                     | *T.nilable(::Float)*                       | :heavy_minus_sign:                         | The page number of the results to fetch    |                                            |
| `page_size`                                | *T.nilable(::Float)*                       | :heavy_minus_sign:                         | The number of results per page             |                                            |