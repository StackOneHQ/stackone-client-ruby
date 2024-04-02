# ConnectSessionToken


## Fields

| Field                                                                                                               | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         | Example                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                        | *T.nilable(::String)*                                                                                               | :heavy_minus_sign:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `categories`                                                                                                        | T::Array<[::StackOne::Shared::ConnectSessionTokenCategories](../../models/shared/connectsessiontokencategories.md)> | :heavy_minus_sign:                                                                                                  | N/A                                                                                                                 | [<br/>"ats",<br/>"hris",<br/>"hrisLegacy",<br/>"crm",<br/>"iam",<br/>"marketing",<br/>"stackOne"<br/>]              |
| `created_at`                                                                                                        | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                                | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `id`                                                                                                                | *::Float*                                                                                                           | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `label`                                                                                                             | *T.nilable(::String)*                                                                                               | :heavy_minus_sign:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `organization_id`                                                                                                   | *::Float*                                                                                                           | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `origin_owner_id`                                                                                                   | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `origin_owner_name`                                                                                                 | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `origin_username`                                                                                                   | *T.nilable(::String)*                                                                                               | :heavy_minus_sign:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `project_id`                                                                                                        | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `provider`                                                                                                          | *T.nilable(::String)*                                                                                               | :heavy_minus_sign:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |
| `token`                                                                                                             | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |                                                                                                                     |