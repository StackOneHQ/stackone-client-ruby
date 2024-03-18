# StackoneListLinkedAccountsRequest


## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `account_ids`                                       | T::Array<*::String*>                                | :heavy_minus_sign:                                  | The providers list of the results to fetch          |
| `origin_owner_id`                                   | *T.nilable(::String)*                               | :heavy_minus_sign:                                  | The origin owner identifier of the results to fetch |
| `page`                                              | *T.nilable(::Float)*                                | :heavy_minus_sign:                                  | The page number of the results to fetch             |
| `page_size`                                         | *T.nilable(::Float)*                                | :heavy_minus_sign:                                  | The number of results per page                      |
| `provider`                                          | *T.nilable(::String)*                               | :heavy_minus_sign:                                  | The provider of the results to fetch                |
| `providers`                                         | T::Array<*::String*>                                | :heavy_minus_sign:                                  | The providers list of the results to fetch          |