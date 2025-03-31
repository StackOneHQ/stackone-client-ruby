# Url

The request URL data


## Fields

| Field                               | Type                                | Required                            | Description                         | Example                             |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `hostname`                          | *T.nilable(::String)*               | :heavy_minus_sign:                  | The request URL hostname            | example.com                         |
| `path`                              | *T.nilable(::String)*               | :heavy_minus_sign:                  | The request path                    | /api/v1/resource                    |
| `query_params`                      | T::Hash[Symbol, *::Object*]         | :heavy_minus_sign:                  | The request query parameters        | {<br/>"page": 1,<br/>"limit": 10<br/>} |
| `url`                               | *T.nilable(::String)*               | :heavy_minus_sign:                  | The request URL                     | https://example.com/api/v1/resource |