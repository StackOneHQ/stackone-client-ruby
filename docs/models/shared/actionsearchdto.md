# ActionSearchDto


## Fields

| Field                                      | Type                                       | Required                                   | Description                                | Example                                    |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `connector`                                | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Filter by connector key                    | slack                                      |
| `query`                                    | *::String*                                 | :heavy_check_mark:                         | Search query for finding connector actions | send a message                             |
| `top_k`                                    | *T.nilable(::Float)*                       | :heavy_minus_sign:                         | Number of results to return                |                                            |