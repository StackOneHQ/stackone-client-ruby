# Scope

Optional scope describing where this role applies (e.g. group, organization, department).


## Fields

| Field                                                                            | Type                                                                             | Required                                                                         | Description                                                                      | Example                                                                          |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `resource_id`                                                                    | *T.nilable(::String)*                                                            | :heavy_minus_sign:                                                               | The id of the specific resource the role applies to. Omitted = all of type.      | group_abc123                                                                     |
| `resource_type`                                                                  | *T.nilable(::String)*                                                            | :heavy_minus_sign:                                                               | The kind of resource the role applies to (e.g. group, organization, department). | group                                                                            |