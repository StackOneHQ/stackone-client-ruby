# ActionsSyncedQueryableFieldsSync


## Fields

| Field                                                           | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `expires_at`                                                    | *::String*                                                      | :heavy_check_mark:                                              | ISO 8601 timestamp of when the synced data expires              |
| `sync_id`                                                       | *::String*                                                      | :heavy_check_mark:                                              | Pass this as `sync_id` to read this sync.                       |
| `sync_name`                                                     | *::String*                                                      | :heavy_check_mark:                                              | The sync's raw name. Not unique, and may be the bare action id. |
| `synced_at`                                                     | *::String*                                                      | :heavy_check_mark:                                              | ISO 8601 timestamp of when the data was synced                  |