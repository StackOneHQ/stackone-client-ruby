# LmsListUsersQueryParamFilter

LMS Users Filter


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   | Example                                                                       |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `email`                                                                       | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Filter to select users by email                                               |                                                                               |
| `external_reference`                                                          | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Filter to select users by external_reference                                  |                                                                               |
| `updated_after`                                                               | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Use a string with a date to only select results updated after that given date | 2020-01-01T00:00:00.000Z                                                      |