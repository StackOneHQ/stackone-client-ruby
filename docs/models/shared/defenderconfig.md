# DefenderConfig

Per-request defender configuration. Takes precedence over defender_enabled and project settings.


## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `block_high_risk`                                                  | *T.nilable(T::Boolean)*                                            | :heavy_minus_sign:                                                 | Whether to block tool execution when a HIGH risk score is detected | false                                                              |
| `enabled`                                                          | *T.nilable(T::Boolean)*                                            | :heavy_minus_sign:                                                 | Whether to run defender at all                                     | true                                                               |
| `use_tier1_classification`                                         | *T.nilable(T::Boolean)*                                            | :heavy_minus_sign:                                                 | Whether to run tier 1 pattern-based detection                      | true                                                               |
| `use_tier2_classification`                                         | *T.nilable(T::Boolean)*                                            | :heavy_minus_sign:                                                 | Whether to run tier 2 ML-based detection                           | true                                                               |