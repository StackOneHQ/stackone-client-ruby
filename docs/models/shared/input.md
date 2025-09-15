# Input

Input parameters for the action


## Fields

| Field                                      | Type                                       | Required                                   | Description                                | Example                                    |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `body`                                     | T::Hash[Symbol, *::Object*]                | :heavy_minus_sign:                         | Request body for the action                | {<br/>"data": "example"<br/>}              |
| `headers`                                  | T::Hash[Symbol, *::Object*]                | :heavy_minus_sign:                         | Headers for the action                     | {<br/>"Content-Type": "application/json"<br/>} |
| `query`                                    | T::Hash[Symbol, *::Object*]                | :heavy_minus_sign:                         | Query parameters for the action            | {<br/>"param1": "value1",<br/>"param2": "value2"<br/>} |