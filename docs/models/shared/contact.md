# Contact


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          | Example                                                              |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `account_ids`                                                        | T::Array<*::String*>                                                 | :heavy_minus_sign:                                                   | List of associated account IDs                                       | [<br/>"account-123",<br/>"account-456"<br/>]                         |
| `company_name`                                                       | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | The contact company name                                             | Apple Inc.                                                           |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | Timestamp when the contact was created                               | 2021-01-01T01:01:01.000Z                                             |
| `deal_ids`                                                           | T::Array<*::String*>                                                 | :heavy_minus_sign:                                                   | List of associated deal IDs                                          | [<br/>"deal-001",<br/>"deal-002"<br/>]                               |
| `emails`                                                             | T::Array<*::String*>                                                 | :heavy_minus_sign:                                                   | List of contact email addresses                                      | [<br/>"steve@apple.com"<br/>]                                        |
| `first_name`                                                         | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | The contact first name                                               | Steve                                                                |
| `id`                                                                 | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | Unique identifier                                                    | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                 |
| `last_name`                                                          | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | The contact last name                                                | Wozniak                                                              |
| `phone_numbers`                                                      | T::Array<*::String*>                                                 | :heavy_minus_sign:                                                   | List of contact phone numbers                                        | [<br/>"123-456-7890"<br/>]                                           |
| `remote_id`                                                          | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | Provider's unique identifier                                         | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                 |
| `updated_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | Timestamp when the contact was last updated                          | 2021-01-01T01:01:01.000Z                                             |