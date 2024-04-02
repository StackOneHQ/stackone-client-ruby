# HomeLocation

The employee home location


## Fields

| Field                                                                                              | Type                                                                                               | Required                                                                                           | Description                                                                                        | Example                                                                                            |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `city`                                                                                             | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | The city where the location is situated                                                            | Grantham                                                                                           |
| `country`                                                                                          | [T.nilable(::StackOne::Shared::EmployeeCountry)](../../models/shared/employeecountry.md)           | :heavy_minus_sign:                                                                                 | The country code                                                                                   |                                                                                                    |
| `created_at`                                                                                       | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                               | :heavy_minus_sign:                                                                                 | The created_at date                                                                                | 2021-01-01T01:01:01.000Z                                                                           |
| `employee_id`                                                                                      | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | The employee ID                                                                                    | 1687-3                                                                                             |
| `id`                                                                                               | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | Unique identifier                                                                                  | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                               |
| `location_type`                                                                                    | [T.nilable(::StackOne::Shared::EmployeeLocationType)](../../models/shared/employeelocationtype.md) | :heavy_minus_sign:                                                                                 | The location type                                                                                  | work                                                                                               |
| `name`                                                                                             | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | The name of the location                                                                           | Woolsthorpe Manor                                                                                  |
| `phone_number`                                                                                     | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | The phone number of the location                                                                   | +44 1476 860 364                                                                                   |
| `remote_id`                                                                                        | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | Provider's unique identifier                                                                       | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                               |
| `state`                                                                                            | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | The state where the location is situated                                                           | Lincolnshire                                                                                       |
| `street_1`                                                                                         | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | The first line of the address                                                                      | Water Lane                                                                                         |
| `street_2`                                                                                         | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | The second line of the address                                                                     | Woolsthorpe by Colsterworth                                                                        |
| `updated_at`                                                                                       | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                               | :heavy_minus_sign:                                                                                 | The updated_at date                                                                                | 2021-01-01T01:01:01.000Z                                                                           |
| `zip_code`                                                                                         | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | The ZIP code/Postal code of the location                                                           | NG33 5NR                                                                                           |