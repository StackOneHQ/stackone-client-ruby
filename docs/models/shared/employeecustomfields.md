# EmployeeCustomFields


## Fields

| Field                                                                                                        | Type                                                                                                         | Required                                                                                                     | Description                                                                                                  | Example                                                                                                      |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ |
| `description`                                                                                                | *T.nilable(::String)*                                                                                        | :heavy_minus_sign:                                                                                           | The description of the custom field.                                                                         | The completion status of the employee's training.                                                            |
| `id`                                                                                                         | *T.nilable(::String)*                                                                                        | :heavy_minus_sign:                                                                                           | Unique identifier                                                                                            | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                         |
| `name`                                                                                                       | *T.nilable(::String)*                                                                                        | :heavy_minus_sign:                                                                                           | The name of the custom field.                                                                                | Training Completion Status                                                                                   |
| `options`                                                                                                    | T::Array<*::String*>                                                                                         | :heavy_minus_sign:                                                                                           | An array of possible options for the custom field.                                                           | [<br/>"Not Started",<br/>"In Progress",<br/>"Completed",<br/>"Overdue"<br/>]                                 |
| `remote_id`                                                                                                  | *T.nilable(::String)*                                                                                        | :heavy_minus_sign:                                                                                           | Provider's unique identifier                                                                                 | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                         |
| `type`                                                                                                       | [T.nilable(::StackOne::Shared::EmployeeCustomFieldsType)](../../models/shared/employeecustomfieldstype.md)   | :heavy_minus_sign:                                                                                           | The type of the custom field.                                                                                | Dropdown                                                                                                     |
| `value`                                                                                                      | [T.nilable(::StackOne::Shared::EmployeeCustomFieldsValue)](../../models/shared/employeecustomfieldsvalue.md) | :heavy_minus_sign:                                                                                           | The value associated with the custom field.                                                                  | Completed                                                                                                    |
| `value_id`                                                                                                   | *T.nilable(::String)*                                                                                        | :heavy_minus_sign:                                                                                           | The unique identifier for the value of the custom field.                                                     | value_456                                                                                                    |