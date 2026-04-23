# ActionsSyncedDatasync


## Fields

| Field                                              | Type                                               | Required                                           | Description                                        |
| -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| `path_params_hash`                                 | *::String*                                         | :heavy_check_mark:                                 | Hash of the path parameters used during sync       |
| `request_id`                                       | *::String*                                         | :heavy_check_mark:                                 | The unique request ID for this sync read           |
| `run_id`                                           | *::String*                                         | :heavy_check_mark:                                 | The run ID for this sync operation                 |
| `sync_expires_at`                                  | *::String*                                         | :heavy_check_mark:                                 | ISO 8601 timestamp of when the synced data expires |
| `synced_at`                                        | *::String*                                         | :heavy_check_mark:                                 | ISO 8601 timestamp of when the data was synced     |