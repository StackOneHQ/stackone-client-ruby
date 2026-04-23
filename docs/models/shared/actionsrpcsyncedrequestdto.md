# ActionsRpcSyncedRequestDto


## Fields

| Field                                                   | Type                                                    | Required                                                | Description                                             | Example                                                 |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `action`                                                | *::String*                                              | :heavy_check_mark:                                      | The action to execute                                   | create_employee                                         |
| `filter`                                                | T::Hash[Symbol, *::Object*]                             | :heavy_minus_sign:                                      | Filter parameters to scope the synced action            | {<br/>"status": "active"<br/>}                          |
| `path`                                                  | T::Hash[Symbol, *::Object*]                             | :heavy_minus_sign:                                      | Path parameters for the action                          | {<br/>"id": "123"<br/>}                                 |
| `run_id`                                                | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | The sync run ID to associate with this action execution | 550e8400-e29b-41d4-a716-446655440000                    |