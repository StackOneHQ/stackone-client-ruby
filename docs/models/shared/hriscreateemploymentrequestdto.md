# HrisCreateEmploymentRequestDto


## Fields

| Field                                                                                                                                                              | Type                                                                                                                                                               | Required                                                                                                                                                           | Description                                                                                                                                                        | Example                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `effective_date`                                                                                                                                                   | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                                                                               | :heavy_minus_sign:                                                                                                                                                 | The effective date of the employment contract                                                                                                                      | 2021-01-01T01:01:01.000Z                                                                                                                                           |
| `employee_id`                                                                                                                                                      | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The employee ID associated with this employment                                                                                                                    | 1687-3                                                                                                                                                             |
| `employment_contract_type`                                                                                                                                         | [T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentContractType)](../../models/shared/hriscreateemploymentrequestdtoemploymentcontracttype.md) | :heavy_minus_sign:                                                                                                                                                 | The employment work schedule type (e.g., full-time, part-time)                                                                                                     | full_time                                                                                                                                                          |
| `employment_type`                                                                                                                                                  | [T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentType)](../../models/shared/hriscreateemploymentrequestdtoemploymenttype.md)                 | :heavy_minus_sign:                                                                                                                                                 | The type of employment (e.g., contractor, permanent)                                                                                                               | permanent                                                                                                                                                          |
| `id`                                                                                                                                                               | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | Unique identifier                                                                                                                                                  | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                                                                               |
| `job_title`                                                                                                                                                        | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The job title of the employee                                                                                                                                      | Software Engineer                                                                                                                                                  |
| `passthrough`                                                                                                                                                      | T::Hash[Symbol, *::Object*]                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                 | Value to pass through to the provider                                                                                                                              | {<br/>"other_known_names": "John Doe"<br/>}                                                                                                                        |
| `pay_currency`                                                                                                                                                     | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The currency used for pay                                                                                                                                          | USD                                                                                                                                                                |
| `pay_frequency`                                                                                                                                                    | [T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoPayFrequency)](../../models/shared/hriscreateemploymentrequestdtopayfrequency.md)                     | :heavy_minus_sign:                                                                                                                                                 | The pay frequency                                                                                                                                                  | hourly                                                                                                                                                             |
| `pay_period`                                                                                                                                                       | [T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoPayPeriod)](../../models/shared/hriscreateemploymentrequestdtopayperiod.md)                           | :heavy_minus_sign:                                                                                                                                                 | The pay period                                                                                                                                                     | monthly                                                                                                                                                            |
| `pay_rate`                                                                                                                                                         | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The pay rate for the employee                                                                                                                                      | 40.00                                                                                                                                                              |
| `time_worked`                                                                                                                                                      | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The time worked for the employee in ISO 8601 duration format                                                                                                       | P0Y0M0DT8H0M0S                                                                                                                                                     |
| `unified_custom_fields`                                                                                                                                            | T::Hash[Symbol, *::Object*]                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                 | Custom Unified Fields configured in your StackOne project                                                                                                          | {<br/>"my_project_custom_field_1": "REF-1236",<br/>"my_project_custom_field_2": "some other value"<br/>}                                                           |