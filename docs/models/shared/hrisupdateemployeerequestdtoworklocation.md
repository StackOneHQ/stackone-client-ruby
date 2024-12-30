# HrisUpdateEmployeeRequestDtoWorkLocation

The employee work location


## Fields

| Field                                                                                                                                                                  | Type                                                                                                                                                                   | Required                                                                                                                                                               | Description                                                                                                                                                            | Example                                                                                                                                                                |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `city`                                                                                                                                                                 | *T.nilable(::String)*                                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                     | The city where the location is situated                                                                                                                                | Grantham                                                                                                                                                               |
| `country`                                                                                                                                                              | [T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasWorkLocationCountry)](../../models/shared/hrisupdateemployeerequestdtoschemasworklocationcountry.md) | :heavy_minus_sign:                                                                                                                                                     | The country code                                                                                                                                                       |                                                                                                                                                                        |
| `id`                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                     | Unique identifier                                                                                                                                                      | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                                                                                   |
| `name`                                                                                                                                                                 | *T.nilable(::String)*                                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                     | The name of the location                                                                                                                                               | Woolsthorpe Manor                                                                                                                                                      |
| `passthrough`                                                                                                                                                          | T::Hash[Symbol, *::Object*]                                                                                                                                            | :heavy_minus_sign:                                                                                                                                                     | Value to pass through to the provider                                                                                                                                  | {<br/>"other_known_names": "John Doe"<br/>}                                                                                                                            |
| `phone_number`                                                                                                                                                         | *T.nilable(::String)*                                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                     | The phone number of the location                                                                                                                                       | +44 1476 860 364                                                                                                                                                       |
| `state`                                                                                                                                                                | [T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasState)](../../models/shared/hrisupdateemployeerequestdtoschemasstate.md)                             | :heavy_minus_sign:                                                                                                                                                     | The ISO3166-2 sub division where the location is situated                                                                                                              | GB-LIN                                                                                                                                                                 |
| `street_1`                                                                                                                                                             | *T.nilable(::String)*                                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                     | The first line of the address                                                                                                                                          | Water Lane                                                                                                                                                             |
| `street_2`                                                                                                                                                             | *T.nilable(::String)*                                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                     | The second line of the address                                                                                                                                         | Woolsthorpe by Colsterworth                                                                                                                                            |
| `zip_code`                                                                                                                                                             | *T.nilable(::String)*                                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                     | The ZIP code/Postal code of the location                                                                                                                               | NG33 5NR                                                                                                                                                               |