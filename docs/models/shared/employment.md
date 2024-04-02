# Employment


## Fields

| Field                                                                                                                      | Type                                                                                                                       | Required                                                                                                                   | Description                                                                                                                | Example                                                                                                                    |
| -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `created_at`                                                                                                               | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                                       | :heavy_minus_sign:                                                                                                         | The created_at date                                                                                                        | 2021-01-01T01:01:01.000Z                                                                                                   |
| `effective_date`                                                                                                           | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                                       | :heavy_minus_sign:                                                                                                         | The effective date of the employment contract                                                                              | 2021-01-01T01:01:01.000Z                                                                                                   |
| `employee_id`                                                                                                              | *T.nilable(::String)*                                                                                                      | :heavy_minus_sign:                                                                                                         | The employee ID associated with this employment                                                                            | 1687-3                                                                                                                     |
| `employment_contract_type`                                                                                                 | [T.nilable(::StackOne::Shared::EmploymentEmploymentContractType)](../../models/shared/employmentemploymentcontracttype.md) | :heavy_minus_sign:                                                                                                         | The employment work schedule type (e.g., full-time, part-time)                                                             | full_time                                                                                                                  |
| `employment_type`                                                                                                          | [T.nilable(::StackOne::Shared::EmploymentEmploymentType)](../../models/shared/employmentemploymenttype.md)                 | :heavy_minus_sign:                                                                                                         | The type of employment (e.g., contractor, permanent)                                                                       | permanent                                                                                                                  |
| `id`                                                                                                                       | *T.nilable(::String)*                                                                                                      | :heavy_minus_sign:                                                                                                         | Unique identifier                                                                                                          | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                                       |
| `job_title`                                                                                                                | *T.nilable(::String)*                                                                                                      | :heavy_minus_sign:                                                                                                         | The job title of the employee                                                                                              | Software Engineer                                                                                                          |
| `pay_currency`                                                                                                             | *T.nilable(::String)*                                                                                                      | :heavy_minus_sign:                                                                                                         | The currency used for pay                                                                                                  | USD                                                                                                                        |
| `pay_frequency`                                                                                                            | [T.nilable(::StackOne::Shared::PayFrequency)](../../models/shared/payfrequency.md)                                         | :heavy_minus_sign:                                                                                                         | The pay frequency                                                                                                          | hourly                                                                                                                     |
| `pay_period`                                                                                                               | [T.nilable(::StackOne::Shared::PayPeriod)](../../models/shared/payperiod.md)                                               | :heavy_minus_sign:                                                                                                         | The pay period                                                                                                             | monthly                                                                                                                    |
| `pay_rate`                                                                                                                 | *T.nilable(::String)*                                                                                                      | :heavy_minus_sign:                                                                                                         | The pay rate for the employee                                                                                              | 40.00                                                                                                                      |
| `remote_id`                                                                                                                | *T.nilable(::String)*                                                                                                      | :heavy_minus_sign:                                                                                                         | Provider's unique identifier                                                                                               | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                                       |
| `updated_at`                                                                                                               | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                                       | :heavy_minus_sign:                                                                                                         | The updated_at date                                                                                                        | 2021-01-01T01:01:01.000Z                                                                                                   |