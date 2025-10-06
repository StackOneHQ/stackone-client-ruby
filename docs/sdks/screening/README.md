# Screening
(*screening*)

## Overview

### Available Operations

* [create_screening_order](#create_screening_order) - Create Screening Order
* [get_screening_package](#get_screening_package) - Get Screening Package
* [list_screening_packages](#list_screening_packages) - List Screening Packages
* [webhook_screening_result](#webhook_screening_result) - Webhook Screening Result

## create_screening_order

Create Screening Order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="screening_create_screening_order" method="post" path="/unified/screening/orders" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.screening.create_screening_order(screening_create_order_request_dto: Models::Shared::ScreeningCreateOrderRequestDto.new(
  candidate: Models::Shared::ScreeningOrderCandidate.new(
    email: 'john.doe@example.com',
    first_name: 'John',
    last_name: 'Doe',
  ),
  package_id: '54321',
  passthrough: {
    "other_known_names": 'John Doe',
  },
  unified_custom_fields: {
    "my_project_custom_field_1": 'REF-1236',
    "my_project_custom_field_2": 'some other value',
  },
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `screening_create_order_request_dto`                                                                    | [Models::Shared::ScreeningCreateOrderRequestDto](../../models/shared/screeningcreateorderrequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |

### Response

**[T.nilable(Models::Operations::ScreeningCreateScreeningOrderResponse)](../../models/operations/screeningcreatescreeningorderresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_screening_package

Get Screening Package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="screening_get_screening_package" method="get" path="/unified/screening/packages/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::ScreeningGetScreeningPackageRequest.new(
  fields_: 'id,remote_id,name,description,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.screening.get_screening_package(request: req)

unless res.screening_package_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::ScreeningGetScreeningPackageRequest](../../models/operations/screeninggetscreeningpackagerequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::ScreeningGetScreeningPackageResponse)](../../models/operations/screeninggetscreeningpackageresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_screening_packages

List Screening Packages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="screening_list_screening_packages" method="get" path="/unified/screening/packages" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::ScreeningListScreeningPackagesRequest.new(
  fields_: 'id,remote_id,name,description,unified_custom_fields',
  filter: Models::Operations::ScreeningListScreeningPackagesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.screening.list_screening_packages(request: req)

unless res.screening_packages_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::ScreeningListScreeningPackagesRequest](../../models/operations/screeninglistscreeningpackagesrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::ScreeningListScreeningPackagesResponse)](../../models/operations/screeninglistscreeningpackagesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## webhook_screening_result

Webhook Screening Result

### Example Usage

<!-- UsageSnippet language="ruby" operationID="screening_webhook_screening_result" method="post" path="/unified/screening/results/webhook" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.screening.webhook_screening_result(screening_result_webhook: Models::Shared::ScreeningResultWebhook.new(
  data: Models::Shared::ScreeningResult.new(
    id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    order_id: '12345',
    remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    result_url: 'https://example.com/results/12345',
    score: Models::Shared::ScreeningResultScore.new(
      label: 'Overall Risk',
      max: '100',
      min: '0',
      value: '75',
    ),
    start_date: DateTime.iso8601('2023-01-01T00:00:00Z'),
    status: Models::Shared::ScreeningResultStatus::COMPLETED,
    submission_date: DateTime.iso8601('2023-01-02T00:00:00Z'),
    summary: 'Background check completed successfully',
    unified_custom_fields: {
      "my_project_custom_field_1": 'REF-1236',
      "my_project_custom_field_2": 'some other value',
    },
  ),
  event: Models::Shared::Event::SCREENING_RESULTS_CANCELLED,
), x_account_id: '<id>')

unless res.screening_result_webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `screening_result_webhook`                                                              | [Models::Shared::ScreeningResultWebhook](../../models/shared/screeningresultwebhook.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `x_account_id`                                                                          | *::String*                                                                              | :heavy_check_mark:                                                                      | The account identifier                                                                  |

### Response

**[T.nilable(Models::Operations::ScreeningWebhookScreeningResultResponse)](../../models/operations/screeningwebhookscreeningresultresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |