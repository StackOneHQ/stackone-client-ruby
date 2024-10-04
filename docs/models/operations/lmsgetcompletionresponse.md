# LmsGetCompletionResponse


## Fields

| Field                                                                                      | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `completion_result`                                                                        | [T.nilable(::StackOne::Shared::CompletionResult)](../../models/shared/completionresult.md) | :heavy_minus_sign:                                                                         | The completion with the given identifier was retrieved.                                    |
| `content_type`                                                                             | *::String*                                                                                 | :heavy_check_mark:                                                                         | HTTP response content type for this operation                                              |
| `status_code`                                                                              | *::Integer*                                                                                | :heavy_check_mark:                                                                         | HTTP response status code for this operation                                               |
| `raw_response`                                                                             | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response)                | :heavy_check_mark:                                                                         | Raw HTTP response; suitable for custom response parsing                                    |