# Filter

Actions Metadata filters


## Fields

| Field                                                           | Type                                                            | Required                                                        | Description                                                     | Example                                                         |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `account_ids`                                                   | *T.nilable(::String)*                                           | :heavy_minus_sign:                                              | A comma-separated list of account IDs to filter the results by. | account1,account2                                               |
| `action_key`                                                    | *T.nilable(::String)*                                           | :heavy_minus_sign:                                              | The action key to filter the results by                         | action1                                                         |
| `connectors`                                                    | *T.nilable(::String)*                                           | :heavy_minus_sign:                                              | A comma-separated list of connectors to filter the results by.  | connector1,connector2                                           |