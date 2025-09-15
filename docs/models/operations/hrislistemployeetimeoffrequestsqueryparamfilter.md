# HrisListEmployeeTimeOffRequestsQueryParamFilter

HRIS Time Off filters


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   | Example                                                                       |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `policy_ids`                                                                  | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | List of time off policy ids to filter by.                                     |                                                                               |
| `updated_after`                                                               | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)          | :heavy_minus_sign:                                                            | Use a string with a date to only select results updated after that given date | 2020-01-01T00:00:00.000Z                                                      |