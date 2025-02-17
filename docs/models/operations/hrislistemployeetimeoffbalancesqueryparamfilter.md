# HrisListEmployeeTimeOffBalancesQueryParamFilter

HRIS Time Off Balance filters


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   | Example                                                                       |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `policy_ids`                                                                  | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | List of policy ids to filter time off balances by.                            |                                                                               |
| `updated_after`                                                               | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Use a string with a date to only select results updated after that given date | 2020-01-01T00:00:00.000Z                                                      |