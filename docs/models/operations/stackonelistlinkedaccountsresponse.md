# StackoneListLinkedAccountsResponse


## Fields

| Field                                                                               | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `content_type`                                                                      | *::String*                                                                          | :heavy_check_mark:                                                                  | HTTP response content type for this operation                                       |
| `linked_accounts`                                                                   | T::Array<[::StackOne::Shared::LinkedAccount](../../models/shared/linkedaccount.md)> | :heavy_minus_sign:                                                                  | The list of accounts was retrieved.                                                 |
| `status_code`                                                                       | *::Integer*                                                                         | :heavy_check_mark:                                                                  | HTTP response status code for this operation                                        |
| `raw_response`                                                                      | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response)         | :heavy_check_mark:                                                                  | Raw HTTP response; suitable for custom response parsing                             |