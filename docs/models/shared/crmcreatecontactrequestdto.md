# CrmCreateContactRequestDto


## Fields

| Field                            | Type                             | Required                         | Description                      | Example                          |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `account_ids`                    | T::Array<*::String*>             | :heavy_minus_sign:               | List of associated account IDs   | [<br/>"account-123",<br/>"account-456"<br/>] |
| `company_name`                   | *T.nilable(::String)*            | :heavy_minus_sign:               | The contact company name         | Apple Inc.                       |
| `deal_ids`                       | T::Array<*::String*>             | :heavy_minus_sign:               | List of associated deal IDs      | [<br/>"deal-001",<br/>"deal-002"<br/>] |
| `emails`                         | T::Array<*::String*>             | :heavy_minus_sign:               | List of contact email addresses  | [<br/>"steve@apple.com"<br/>]    |
| `first_name`                     | *T.nilable(::String)*            | :heavy_minus_sign:               | The contact first name           | Steve                            |
| `last_name`                      | *T.nilable(::String)*            | :heavy_minus_sign:               | The contact last name            | Wozniak                          |
| `phone_numbers`                  | T::Array<*::String*>             | :heavy_minus_sign:               | List of contact phone numbers    | [<br/>"123-456-7890"<br/>]       |