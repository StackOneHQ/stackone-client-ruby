# AtsListCandidatesQueryParamFilter

ATS Candidate Filter


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   | Example                                                                       |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `created_after`                                                               | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Use a string with a date to only select results created after that given date | 2020-01-01T00:00:00.000Z                                                      |
| `email`                                                                       | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Filter to select candidates by email                                          |                                                                               |
| `updated_after`                                                               | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Use a string with a date to only select results updated after that given date | 2020-01-01T00:00:00.000Z                                                      |