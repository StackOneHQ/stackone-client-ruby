# Account


## Fields

| Field                                                                                               | Type                                                                                                | Required                                                                                            | Description                                                                                         | Example                                                                                             |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `addresses`                                                                                         | T::Array<[::StackOne::Shared::AccountAddress](../../models/shared/accountaddress.md)>               | :heavy_minus_sign:                                                                                  | N/A                                                                                                 |                                                                                                     |
| `annual_revenue`                                                                                    | *T.nilable(::String)*                                                                               | :heavy_minus_sign:                                                                                  | N/A                                                                                                 |                                                                                                     |
| `created_at`                                                                                        | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                | :heavy_minus_sign:                                                                                  | Timestamp when the account was created                                                              | 2021-01-01T01:01:01.000Z                                                                            |
| `description`                                                                                       | *T.nilable(::String)*                                                                               | :heavy_minus_sign:                                                                                  | N/A                                                                                                 |                                                                                                     |
| `id`                                                                                                | *T.nilable(::String)*                                                                               | :heavy_minus_sign:                                                                                  | Unique identifier                                                                                   | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                |
| `industries`                                                                                        | T::Array<*::String*>                                                                                | :heavy_minus_sign:                                                                                  | Values of the industries                                                                            | [<br/>"Information Technology",<br/>"Airlines \u0026 Airports",<br/>"Personal Care \u0026 Household Products"<br/>] |
| `name`                                                                                              | *T.nilable(::String)*                                                                               | :heavy_minus_sign:                                                                                  | N/A                                                                                                 |                                                                                                     |
| `owner_id`                                                                                          | *T.nilable(::String)*                                                                               | :heavy_minus_sign:                                                                                  | N/A                                                                                                 |                                                                                                     |
| `phone_numbers`                                                                                     | T::Array<*::String*>                                                                                | :heavy_minus_sign:                                                                                  | List of account phone numbers                                                                       | [<br/>"+1123425334"<br/>]                                                                           |
| `remote_id`                                                                                         | *T.nilable(::String)*                                                                               | :heavy_minus_sign:                                                                                  | Provider's unique identifier                                                                        | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                |
| `updated_at`                                                                                        | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                | :heavy_minus_sign:                                                                                  | Timestamp when the account was last updated                                                         | 2021-01-01T01:01:01.000Z                                                                            |
| `website`                                                                                           | *T.nilable(::String)*                                                                               | :heavy_minus_sign:                                                                                  | N/A                                                                                                 |                                                                                                     |