# LmsListAssignmentsQueryParamFilter

LMS Assignment Filter


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   | Example                                                                       |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `completed`                                                                   | *T.nilable(T::Boolean)*                                                       | :heavy_minus_sign:                                                            | Filter to select assignment by completed status                               |                                                                               |
| `learning_object_type`                                                        | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Filter to select assignment by learning object type.                          |                                                                               |
| `updated_after`                                                               | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Use a string with a date to only select results updated after that given date | 2020-01-01T00:00:00.000Z                                                      |