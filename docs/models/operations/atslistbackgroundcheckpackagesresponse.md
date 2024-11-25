# AtsListBackgroundCheckPackagesResponse


## Fields

| Field                                                                                                                    | Type                                                                                                                     | Required                                                                                                                 | Description                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| `background_check_package_paginated`                                                                                     | [T.nilable(::StackOne::Shared::BackgroundCheckPackagePaginated)](../../models/shared/backgroundcheckpackagepaginated.md) | :heavy_minus_sign:                                                                                                       | The list of background check packages was retrieved.                                                                     |
| `content_type`                                                                                                           | *::String*                                                                                                               | :heavy_check_mark:                                                                                                       | HTTP response content type for this operation                                                                            |
| `status_code`                                                                                                            | *::Integer*                                                                                                              | :heavy_check_mark:                                                                                                       | HTTP response status code for this operation                                                                             |
| `raw_response`                                                                                                           | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response)                                              | :heavy_check_mark:                                                                                                       | Raw HTTP response; suitable for custom response parsing                                                                  |