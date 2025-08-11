# Documents
(*documents*)

## Overview

### Available Operations

* [download_file](#download_file) - Download File
* [get_drive](#get_drive) - Get Drive
* [get_file](#get_file) - Get File
* [get_folder](#get_folder) - Get Folder
* [list_drives](#list_drives) - List Drives
* [list_files](#list_files) - List Files
* [list_folders](#list_folders) - List Folders
* [upload_file](#upload_file) - Upload File

## download_file

Download File

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::DocumentsDownloadFileRequest.new(
  export_format: "text/plain",
  format: "base64",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.documents.download_file(req)

if ! res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::DocumentsDownloadFileRequest](../../models/operations/documentsdownloadfilerequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::DocumentsDownloadFileResponse)](../../models/operations/documentsdownloadfileresponse.md)**



## get_drive

Get Drive

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::DocumentsGetDriveRequest.new(
  fields_: "id,remote_id,name,description,url,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.documents.get_drive(req)

if ! res.drive_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::DocumentsGetDriveRequest](../../models/operations/documentsgetdriverequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::DocumentsGetDriveResponse)](../../models/operations/documentsgetdriveresponse.md)**



## get_file

Get File

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::DocumentsGetFileRequest.new(
  fields_: "id,remote_id,name,description,url,size,file_format,path,owner_id,remote_owner_id,folder_id,remote_folder_id,drive_id,remote_drive_id,export_formats,default_download_format,created_at,updated_at,has_content,has_children,all_parent_folder_ids,remote_all_parent_folder_ids",
  id: "<id>",
  include: "all_parent_folder_ids",
  x_account_id: "<id>",
)

res = s.documents.get_file(req)

if ! res.file_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::DocumentsGetFileRequest](../../models/operations/documentsgetfilerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::DocumentsGetFileResponse)](../../models/operations/documentsgetfileresponse.md)**



## get_folder

Get Folder

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::DocumentsGetFolderRequest.new(
  fields_: "id,remote_id,name,description,url,size,path,owner_id,remote_owner_id,parent_folder_id,remote_parent_folder_id,drive_id,remote_drive_id,created_at,updated_at,has_content,has_children,is_root,all_parent_folder_ids,remote_all_parent_folder_ids",
  id: "<id>",
  include: "all_parent_folder_ids",
  x_account_id: "<id>",
)

res = s.documents.get_folder(req)

if ! res.folder_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::DocumentsGetFolderRequest](../../models/operations/documentsgetfolderrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::DocumentsGetFolderResponse)](../../models/operations/documentsgetfolderresponse.md)**



## list_drives

List Drives

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::DocumentsListDrivesRequest.new(
  fields_: "id,remote_id,name,description,url,created_at,updated_at",
  filter: Models::Operations::DocumentsListDrivesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.documents.list_drives(req)

if ! res.drives_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::DocumentsListDrivesRequest](../../models/operations/documentslistdrivesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::DocumentsListDrivesResponse)](../../models/operations/documentslistdrivesresponse.md)**



## list_files

List Files

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::DocumentsListFilesRequest.new(
  fields_: "id,remote_id,name,description,url,size,file_format,path,owner_id,remote_owner_id,folder_id,remote_folder_id,drive_id,remote_drive_id,export_formats,default_download_format,created_at,updated_at,has_content,has_children,all_parent_folder_ids,remote_all_parent_folder_ids",
  filter: Models::Operations::DocumentsListFilesQueryParamFilter.new(
    content: "FAQ of the project",
    created_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
    drive_id: "1234567890",
    folder_id: "1234567890",
    name: "john_doe_resume.pdf",
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  folder_id: "1234567890",
  include: "all_parent_folder_ids",
  nested_items: "true",
  x_account_id: "<id>",
)

res = s.documents.list_files(req)

if ! res.files_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::DocumentsListFilesRequest](../../models/operations/documentslistfilesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::DocumentsListFilesResponse)](../../models/operations/documentslistfilesresponse.md)**



## list_folders

List Folders

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::DocumentsListFoldersRequest.new(
  fields_: "id,remote_id,name,description,url,size,path,owner_id,remote_owner_id,parent_folder_id,remote_parent_folder_id,drive_id,remote_drive_id,created_at,updated_at,has_content,has_children,is_root,all_parent_folder_ids,remote_all_parent_folder_ids",
  filter: Models::Operations::DocumentsListFoldersQueryParamFilter.new(
    drive_id: "1234567890",
    folder_id: "1234567890",
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  folder_id: "1234567890",
  include: "all_parent_folder_ids",
  nested_items: "true",
  x_account_id: "<id>",
)

res = s.documents.list_folders(req)

if ! res.folders_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::DocumentsListFoldersRequest](../../models/operations/documentslistfoldersrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::DocumentsListFoldersResponse)](../../models/operations/documentslistfoldersresponse.md)**



## upload_file

Upload File

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.documents.upload_file(unified_upload_request_dto=Models::Shared::UnifiedUploadRequestDto.new(
  category: Models::Shared::UnifiedUploadRequestDtoCategory.new(
    source_value: "550e8400-e29b-41d4-a716-446655440000, CUSTOM_CATEGORY_NAME",
    value: "reports, resumes",
  ),
  category_id: "6530",
  confidential: Models::Shared::UnifiedUploadRequestDtoConfidential.new(
    source_value: "public",
    value: Models::Shared::UnifiedUploadRequestDtoValue::TRUE,
  ),
  content: "VGhpcyBpc24ndCByZWFsbHkgYSBzYW1wbGUgZmlsZSwgYnV0IG5vIG9uZSB3aWxsIGV2ZXIga25vdyE",
  file_format: Models::Shared::UnifiedUploadRequestDtoFileFormat.new(
    source_value: "application/pdf",
    value: Models::Shared::UnifiedUploadRequestDtoSchemasValue::PDF,
  ),
  name: "weather-forecast",
  path: "/path/to/file",
), x_account_id="<id>", x_stackone_api_session_token="<value>")

if ! res.write_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `unified_upload_request_dto`                                                              | [Models::Shared::UnifiedUploadRequestDto](../../models/shared/unifieduploadrequestdto.md) | :heavy_check_mark:                                                                        | N/A                                                                                       |
| `x_account_id`                                                                            | *::String*                                                                                | :heavy_check_mark:                                                                        | The account identifier                                                                    |
| `x_stackone_api_session_token`                                                            | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | The session token                                                                         |

### Response

**[T.nilable(Models::Operations::DocumentsUploadFileResponse)](../../models/operations/documentsuploadfileresponse.md)**

