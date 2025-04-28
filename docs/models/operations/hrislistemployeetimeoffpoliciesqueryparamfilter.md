# HrisListEmployeeTimeOffPoliciesQueryParamFilter

HRIS Time-Off Policies filters


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   | Example                                                                       |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `type`                                                                        | [T.nilable(Models::Operations::Type)](../../models/operations/type.md)        | :heavy_minus_sign:                                                            | Filter to select time-off policies by type                                    |                                                                               |
| `updated_after`                                                               | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Use a string with a date to only select results updated after that given date | 2020-01-01T00:00:00.000Z                                                      |