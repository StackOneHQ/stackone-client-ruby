# Answer


## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `id`                                                               | *T.nilable(String)*                                                | :heavy_minus_sign:                                                 | Unique identifier of the answer                                    | answer_1                                                           |
| `type`                                                             | [T.nilable(Shared::Type)](../../models/shared/type.md)             | :heavy_minus_sign:                                                 | Type of the answer                                                 |                                                                    |
| `values`                                                           | T::Array<*String*>                                                 | :heavy_minus_sign:                                                 | Values of the answer                                               | ["Yes","No Travel","It sounds pretty cool.","Excel","Power Point"] |