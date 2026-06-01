# Error

Present on protocol-level failure. Tool-level failures use result with isError: true instead.


## Fields

| Field                    | Type                     | Required                 | Description              | Example                  |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `code`                   | *T.nilable(::Float)*     | :heavy_minus_sign:       | N/A                      | -32600                   |
| `data`                   | *T.nilable(::Object)*    | :heavy_minus_sign:       | Additional error context |                          |
| `message`                | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | Invalid request          |