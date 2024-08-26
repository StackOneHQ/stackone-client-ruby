# IamPolicy


## Fields

| Field                                                                               | Type                                                                                | Required                                                                            | Description                                                                         | Example                                                                             |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `created_at`                                                                        | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                | :heavy_minus_sign:                                                                  | N/A                                                                                 | 2021-01-01T01:01:01.000Z                                                            |
| `description`                                                                       | *T.nilable(::String)*                                                               | :heavy_minus_sign:                                                                  | N/A                                                                                 |                                                                                     |
| `id`                                                                                | *T.nilable(::String)*                                                               | :heavy_minus_sign:                                                                  | Unique identifier                                                                   | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                |
| `name`                                                                              | *T.nilable(::String)*                                                               | :heavy_minus_sign:                                                                  | The name of the policy.                                                             | Remote Contractor Policy                                                            |
| `permissions`                                                                       | T::Array<[::StackOne::Shared::IamPermission](../../models/shared/iampermission.md)> | :heavy_minus_sign:                                                                  | The set of permissions associated with the policy.                                  |                                                                                     |
| `remote_id`                                                                         | *T.nilable(::String)*                                                               | :heavy_minus_sign:                                                                  | Provider's unique identifier                                                        | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                |
| `updated_at`                                                                        | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                | :heavy_minus_sign:                                                                  | N/A                                                                                 | 2021-01-01T01:01:01.000Z                                                            |