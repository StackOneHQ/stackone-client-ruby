# RejectedReason


## Fields

| Field                                                                                          | Type                                                                                           | Required                                                                                       | Description                                                                                    | Example                                                                                        |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `id`                                                                                           | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | The ID of the rejected reason.                                                                 | 5d9743fb-ef6f-4430-a234-a163af119832                                                           |
| `label`                                                                                        | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | The label of the rejected reason.                                                              | Failed Phone Screen                                                                            |
| `rejected_reason_type`                                                                         | [T.nilable(::StackOne::Shared::RejectedReasonType)](../../models/shared/rejectedreasontype.md) | :heavy_minus_sign:                                                                             | N/A                                                                                            |                                                                                                |
| `type`                                                                                         | *T.nilable(::String)*                                                                          | :heavy_minus_sign:                                                                             | The string type of the rejected reason.                                                        | rejected_by_organization                                                                       |