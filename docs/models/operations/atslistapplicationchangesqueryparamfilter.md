# AtsListApplicationChangesQueryParamFilter

Filter parameters for application changes (supports created_after and change_type)


## Fields

| Field                                                                              | Type                                                                               | Required                                                                           | Description                                                                        | Example                                                                            |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `change_type`                                                                      | [T.nilable(Models::Operations::ChangeType)](../../models/operations/changetype.md) | :heavy_minus_sign:                                                                 | Filter by the type of change that occurred to the application                      |                                                                                    |
| `created_after`                                                                    | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)               | :heavy_minus_sign:                                                                 | Use a string with a date to only select results created after that given date      | 2020-01-01T00:00:00.000Z                                                           |