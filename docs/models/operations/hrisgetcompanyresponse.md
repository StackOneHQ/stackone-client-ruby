# HrisGetCompanyResponse


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `company_result`                                                            | [T.nilable(Shared::CompanyResult)](../../models/shared/companyresult.md)    | :heavy_minus_sign:                                                          | The Company with the given identifier was retrieved.                        |
| `content_type`                                                              | *String*                                                                    | :heavy_check_mark:                                                          | HTTP response content type for this operation                               |
| `status_code`                                                               | *Integer*                                                                   | :heavy_check_mark:                                                          | HTTP response status code for this operation                                |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_check_mark:                                                          | Raw HTTP response; suitable for custom response parsing                     |