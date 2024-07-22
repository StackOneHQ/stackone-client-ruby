# HRISDepartment


## Fields

| Field                                                                                          | Type                                                                                           | Required                                                                                       | Description                                                                                    | Example                                                                                        |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `id`                                                                                           | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | Unique identifier                                                                              | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                           |
| `name`                                                                                         | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | The name of the group                                                                          |                                                                                                |
| `owner_ids`                                                                                    | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | The list of group owner ids of the given group                                                 |                                                                                                |
| `parent_ids`                                                                                   | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | The list of parent group ids of the given group                                                |                                                                                                |
| `remote_id`                                                                                    | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | Provider's unique identifier                                                                   | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                           |
| `remote_parent_ids`                                                                            | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Provider's list of parent group ids of the given group                                         |                                                                                                |
| `type`                                                                                         | [T.nilable(::StackOne::Shared::HRISDepartmentType)](../../models/shared/hrisdepartmenttype.md) | :heavy_minus_sign:                                                                             | The type of the department group                                                               | department                                                                                     |