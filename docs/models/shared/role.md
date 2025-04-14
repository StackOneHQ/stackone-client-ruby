# Role

The role of manager


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            | Example                                                                |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `id`                                                                   | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | Unique identifier                                                      | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                   |
| `label`                                                                | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | The label of the role type                                             | Admin                                                                  |
| `remote_id`                                                            | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | Provider's unique identifier                                           | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                   |
| `role_type`                                                            | [T.nilable(Models::Shared::RoleType)](../../models/shared/roletype.md) | :heavy_minus_sign:                                                     | The manager role type (e.g., admin, viewer)                            | admin                                                                  |