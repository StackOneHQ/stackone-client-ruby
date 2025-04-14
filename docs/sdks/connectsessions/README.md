# ConnectSessions
(*connect_sessions*)

## Overview

### Available Operations

* [authenticate_connect_session](#authenticate_connect_session) - Authenticate Connect Session
* [create_connect_session](#create_connect_session) - Create Connect Session

## authenticate_connect_session

Authenticate Connect Session

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Shared::ConnectSessionAuthenticate.new(
  token: "<value>",
)

res = s.connect_sessions.authenticate_connect_session(req)

if ! res.connect_session.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Shared::ConnectSessionAuthenticate](../../models/shared/connectsessionauthenticate.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::StackoneAuthenticateConnectSessionResponse)](../../models/operations/stackoneauthenticateconnectsessionresponse.md)**



## create_connect_session

Create Connect Session

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Shared::ConnectSessionCreate.new(
  categories: [
    Models::Shared::ConnectSessionCreateCategories::ATS,
    Models::Shared::ConnectSessionCreateCategories::HRIS,
    Models::Shared::ConnectSessionCreateCategories::IAM,
    Models::Shared::ConnectSessionCreateCategories::CRM,
    Models::Shared::ConnectSessionCreateCategories::IAM,
    Models::Shared::ConnectSessionCreateCategories::MARKETING,
    Models::Shared::ConnectSessionCreateCategories::LMS,
    Models::Shared::ConnectSessionCreateCategories::ATS,
    Models::Shared::ConnectSessionCreateCategories::DOCUMENTS,
    Models::Shared::ConnectSessionCreateCategories::TICKETING,
    Models::Shared::ConnectSessionCreateCategories::SCREENING,
  ],
  origin_owner_id: "<id>",
  origin_owner_name: "<value>",
)

res = s.connect_sessions.create_connect_session(req)

if ! res.connect_session_token_auth_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Models::Shared::ConnectSessionCreate](../../models/shared/connectsessioncreate.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |

### Response

**[T.nilable(Models::Operations::StackoneCreateConnectSessionResponse)](../../models/operations/stackonecreateconnectsessionresponse.md)**

