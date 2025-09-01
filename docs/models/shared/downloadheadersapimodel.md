# DownloadHeadersApiModel


## Fields

| Field                                   | Type                                    | Required                                | Description                             | Example                                 |
| --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- |
| `content_disposition`                   | *T.nilable(::String)*                   | :heavy_minus_sign:                      | Value of the Content-Disposition header | attachment; filename="example.pdf"      |
| `content_encoding`                      | *T.nilable(::String)*                   | :heavy_minus_sign:                      | Encoding of the content                 | gzip                                    |
| `content_length`                        | *T.nilable(::Float)*                    | :heavy_minus_sign:                      | Size of the content in bytes            | 1024                                    |
| `content_range`                         | *T.nilable(::String)*                   | :heavy_minus_sign:                      | Range of the content being sent         | bytes 0-1023/2048                       |
| `content_type`                          | *T.nilable(::String)*                   | :heavy_minus_sign:                      | MIME type of the file                   | application/pdf                         |
| `transfer_encoding`                     | *T.nilable(::String)*                   | :heavy_minus_sign:                      | Transfer encoding type                  | chunked                                 |