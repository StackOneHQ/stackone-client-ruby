# ActionsSyncedResponse


## Fields

| Field                                                                                 | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `data`                                                                                | T::Array<T::Hash[Symbol, *::Object*]>                                                 | :heavy_minus_sign:                                                                    | The synced records for the requested action                                           |
| `datasync`                                                                            | [Models::Shared::ActionsSyncedDatasync](../../models/shared/actionssynceddatasync.md) | :heavy_check_mark:                                                                    | Metadata about the datasync operation                                                 |