# AuthConfigsPaginated


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `data`                                                                    | T::Array<[Models::Shared::AuthConfig](../../models/shared/authconfig.md)> | :heavy_check_mark:                                                        | The list of auth configs                                                  |
| `page`                                                                    | *::Float*                                                                 | :heavy_check_mark:                                                        | The current page number                                                   |
| `page_size`                                                               | *::Float*                                                                 | :heavy_check_mark:                                                        | The number of results per page                                            |
| `total`                                                                   | *::Float*                                                                 | :heavy_check_mark:                                                        | The total number of auth configs matching the query                       |