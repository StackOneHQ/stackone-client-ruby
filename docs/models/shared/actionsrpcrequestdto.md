# ActionsRpcRequestDto


## Fields

| Field                                      | Type                                       | Required                                   | Description                                | Example                                    |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `action`                                   | *::String*                                 | :heavy_check_mark:                         | The action to execute                      | create_employee                            |
| `body`                                     | T::Hash[Symbol, *::Object*]                | :heavy_minus_sign:                         | Request body for the action                | {<br/>"data": "example"<br/>}              |
| `headers`                                  | T::Hash[Symbol, *::Object*]                | :heavy_minus_sign:                         | Headers for the action                     | {<br/>"Content-Type": "application/json"<br/>} |
| `path`                                     | T::Hash[Symbol, *::Object*]                | :heavy_minus_sign:                         | Path parameters for the action             | {<br/>"id": "123"<br/>}                    |
| `query`                                    | T::Hash[Symbol, *::Object*]                | :heavy_minus_sign:                         | Query parameters for the action            | {<br/>"param1": "value1",<br/>"param2": "value2"<br/>} |