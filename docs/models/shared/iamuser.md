# IamUser


## Fields

| Field                                                                                          | Type                                                                                           | Required                                                                                       | Description                                                                                    | Example                                                                                        |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `avatar`                                                                                       | [T.nilable(::StackOne::Shared::IamUserAvatar)](../../models/shared/iamuseravatar.md)           | :heavy_minus_sign:                                                                             | The user's avatar data. This generally contains a URL within this property's 'contents' array. |                                                                                                |
| `created_at`                                                                                   | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                           | :heavy_minus_sign:                                                                             | The date the user was created                                                                  | 2021-01-01T01:01:01.000Z                                                                       |
| `first_name`                                                                                   | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | N/A                                                                                            | Han                                                                                            |
| `groups`                                                                                       | T::Array<[::StackOne::Shared::IamGroup](../../models/shared/iamgroup.md)>                      | :heavy_minus_sign:                                                                             | List of groups the user is assigned to                                                         |                                                                                                |
| `id`                                                                                           | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | Unique identifier                                                                              | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                           |
| `is_bot_user`                                                                                  | *T.nilable(::Object)*                                                                          | :heavy_minus_sign:                                                                             | Indicates if the user is a bot or service user                                                 | true                                                                                           |
| `last_active_at`                                                                               | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                           | :heavy_minus_sign:                                                                             | The date this user was last active                                                             | 2021-01-01T01:01:01.000Z                                                                       |
| `last_login_at`                                                                                | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                           | :heavy_minus_sign:                                                                             | The date this user last logged in                                                              | 2021-01-01T01:01:01.000Z                                                                       |
| `last_name`                                                                                    | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | N/A                                                                                            | Solo                                                                                           |
| `multi_factor_enabled`                                                                         | T::Array<[::StackOne::Shared::IamMfaTypeEnum](../../models/shared/iammfatypeenum.md)>          | :heavy_minus_sign:                                                                             | The list of Multi-Factor Authentication (MFA) types enabled for the user.                      |                                                                                                |
| `name`                                                                                         | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | User's name which (can be a full name or display name)                                         | Han Solo                                                                                       |
| `primary_email_address`                                                                        | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | Primary email address of the user. This is generally a work email address.                     | han@stackone.com                                                                               |
| `remote_id`                                                                                    | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | Provider's unique identifier                                                                   | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                           |
| `roles`                                                                                        | T::Array<[::StackOne::Shared::IamRole](../../models/shared/iamrole.md)>                        | :heavy_minus_sign:                                                                             | List of roles the user is assigned to                                                          |                                                                                                |
| `status`                                                                                       | [T.nilable(::StackOne::Shared::IamUserStatus)](../../models/shared/iamuserstatus.md)           | :heavy_minus_sign:                                                                             | N/A                                                                                            |                                                                                                |
| `updated_at`                                                                                   | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                           | :heavy_minus_sign:                                                                             | The date the user was created                                                                  | 2021-01-01T01:01:01.000Z                                                                       |
| `username`                                                                                     | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | N/A                                                                                            | hansolo1977                                                                                    |