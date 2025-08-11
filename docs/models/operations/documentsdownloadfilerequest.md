# DocumentsDownloadFileRequest


## Fields

| Field                              | Type                               | Required                           | Description                        | Example                            |
| ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- |
| `export_format`                    | *T.nilable(::String)*              | :heavy_minus_sign:                 | The export format of the file      | text/plain                         |
| `format`                           | *T.nilable(::String)*              | :heavy_minus_sign:                 | The format to download the file in | base64                             |
| `id`                               | *::String*                         | :heavy_check_mark:                 | N/A                                |                                    |
| `x_account_id`                     | *::String*                         | :heavy_check_mark:                 | The account identifier             |                                    |
| `x_stackone_api_session_token`     | *T.nilable(::String)*              | :heavy_minus_sign:                 | The session token                  |                                    |