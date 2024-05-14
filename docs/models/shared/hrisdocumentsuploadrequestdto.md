# HrisDocumentsUploadRequestDto


## Fields

| Field                                                                                                                                    | Type                                                                                                                                     | Required                                                                                                                                 | Description                                                                                                                              | Example                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| `category`                                                                                                                               | [T.nilable(::StackOne::Shared::HrisDocumentsUploadRequestDtoCategory)](../../models/shared/hrisdocumentsuploadrequestdtocategory.md)     | :heavy_minus_sign:                                                                                                                       | The category to be associated with the file to be uploaded. Id will take precedence over name.                                           | {<br/>"name": "reports",<br/>"id": "550e8400-e29b-41d4-a716-446655440000"<br/>}                                                          |
| `confidential`                                                                                                                           | [T.nilable(::StackOne::Shared::Confidential)](../../models/shared/confidential.md)                                                       | :heavy_minus_sign:                                                                                                                       | The confidentiality level of the file to be uploaded                                                                                     |                                                                                                                                          |
| `content`                                                                                                                                | *T.nilable(::String)*                                                                                                                    | :heavy_minus_sign:                                                                                                                       | The base64 encoded content of the file to upload                                                                                         | VGhpcyBpc24ndCByZWFsbHkgYSBzYW1wbGUgZmlsZSwgYnV0IG5vIG9uZSB3aWxsIGV2ZXIga25vdyE                                                          |
| `file_format`                                                                                                                            | [T.nilable(::StackOne::Shared::HrisDocumentsUploadRequestDtoFileFormat)](../../models/shared/hrisdocumentsuploadrequestdtofileformat.md) | :heavy_minus_sign:                                                                                                                       | The file format of the file                                                                                                              |                                                                                                                                          |
| `name`                                                                                                                                   | *T.nilable(::String)*                                                                                                                    | :heavy_minus_sign:                                                                                                                       | The filename of the file to upload                                                                                                       | weather-forecast                                                                                                                         |
| `path`                                                                                                                                   | *T.nilable(::String)*                                                                                                                    | :heavy_minus_sign:                                                                                                                       | The path for the file to be uploaded to                                                                                                  | /path/to/file                                                                                                                            |