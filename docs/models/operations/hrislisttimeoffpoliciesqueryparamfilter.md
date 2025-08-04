# HrisListTimeOffPoliciesQueryParamFilter

HRIS Time-Off Policies filters


## Fields

| Field                                                                                      | Type                                                                                       | Required                                                                                   | Description                                                                                | Example                                                                                    |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `type`                                                                                     | [T.nilable(Models::Operations::QueryParamType)](../../models/operations/queryparamtype.md) | :heavy_minus_sign:                                                                         | Filter to select time-off policies by type                                                 |                                                                                            |
| `updated_after`                                                                            | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                       | :heavy_minus_sign:                                                                         | Use a string with a date to only select results updated after that given date              | 2020-01-01T00:00:00.000Z                                                                   |