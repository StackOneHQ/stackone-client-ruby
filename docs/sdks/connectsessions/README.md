# ConnectSessions
(*connect_sessions*)

## Overview

Generate connection session tokens or auth URLs to allow your customers to connect their accounts.

### Available Operations

* [authenticate_connect_session](#authenticate_connect_session) - Authenticate Connect Session
* [create_connect_session](#create_connect_session) - Create Connect Session

## authenticate_connect_session

Authenticate Connect Session

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_authenticate_connect_session" method="post" path="/connect_sessions/authenticate" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Shared::ConnectSessionAuthenticate.new(
  token: '<value>',
)

res = s.connect_sessions.authenticate_connect_session(request: req)

unless res.connect_session.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Shared::ConnectSessionAuthenticate](../../models/shared/connectsessionauthenticate.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::StackoneAuthenticateConnectSessionResponse)](../../models/operations/stackoneauthenticateconnectsessionresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_connect_session

Create Connect Session

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_create_connect_session" method="post" path="/connect_sessions" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Shared::ConnectSessionCreate.new(
  categories: [
    Models::Shared::ConnectSessionCreateCategories::ATS,
    Models::Shared::ConnectSessionCreateCategories::HRIS,
    Models::Shared::ConnectSessionCreateCategories::TICKETING,
    Models::Shared::ConnectSessionCreateCategories::CRM,
    Models::Shared::ConnectSessionCreateCategories::IAM,
    Models::Shared::ConnectSessionCreateCategories::MARKETING,
    Models::Shared::ConnectSessionCreateCategories::LMS,
    Models::Shared::ConnectSessionCreateCategories::IAM,
    Models::Shared::ConnectSessionCreateCategories::DOCUMENTS,
    Models::Shared::ConnectSessionCreateCategories::TICKETING,
    Models::Shared::ConnectSessionCreateCategories::SCREENING,
    Models::Shared::ConnectSessionCreateCategories::MESSAGING,
    Models::Shared::ConnectSessionCreateCategories::ACCOUNTING,
  ],
  origin_owner_id: '<id>',
  origin_owner_name: '<value>',
)

res = s.connect_sessions.create_connect_session(request: req)

unless res.connect_session_token_auth_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Models::Shared::ConnectSessionCreate](../../models/shared/connectsessioncreate.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |

### Response

**[T.nilable(Models::Operations::StackoneCreateConnectSessionResponse)](../../models/operations/stackonecreateconnectsessionresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |