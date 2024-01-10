# CrmCreateContactRequestDto


## Fields

| Field                           | Type                            | Required                        | Description                     | Example                         |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| `account_ids`                   | T::Array<*String*>              | :heavy_minus_sign:              | List of associated account IDs  | ["account-123","account-456"]   |
| `company_name`                  | *T.nilable(String)*             | :heavy_minus_sign:              | The contact company name        | Apple Inc.                      |
| `deal_ids`                      | T::Array<*String*>              | :heavy_minus_sign:              | List of associated deal IDs     | ["deal-001","deal-002"]         |
| `emails`                        | T::Array<*String*>              | :heavy_minus_sign:              | List of contact email addresses | ["steve@apple.com"]             |
| `first_name`                    | *T.nilable(String)*             | :heavy_minus_sign:              | The contact first name          | Steve                           |
| `last_name`                     | *T.nilable(String)*             | :heavy_minus_sign:              | The contact last name           | Wozniak                         |
| `phone_numbers`                 | T::Array<*String*>              | :heavy_minus_sign:              | List of contact phone numbers   | ["123-456-7890"]                |