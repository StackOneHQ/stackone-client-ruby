# TimeOffDurationUnit

The duration unit of the current policy


## Fields

| Field                                                                                                                                                                | Type                                                                                                                                                                 | Required                                                                                                                                                             | Description                                                                                                                                                          | Example                                                                                                                                                              |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `source_value`                                                                                                                                                       | [T.nilable(T.any(::String, ::Float, T::Boolean, Models::Shared::TimeOffSchemasPolicy4, T::Array[::Object]))](../../models/shared/timeoffschemaspolicysourcevalue.md) | :heavy_minus_sign:                                                                                                                                                   | N/A                                                                                                                                                                  |                                                                                                                                                                      |
| `value`                                                                                                                                                              | [T.nilable(Models::Shared::TimeOffSchemasPolicyValue)](../../models/shared/timeoffschemaspolicyvalue.md)                                                             | :heavy_minus_sign:                                                                                                                                                   | The unified value for the duration unit. If the provider does not specify this unit, the value will be set to unknown                                                | hours                                                                                                                                                                |