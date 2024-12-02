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


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Shared::ConnectSessionAuthenticate.new(
  token: "<value>",
)
    
res = s.connect_sessions.authenticate_connect_session(req)

if ! res.connect_session.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::StackOne::Shared::ConnectSessionAuthenticate](../../models/shared/connectsessionauthenticate.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(::StackOne::Operations::StackoneAuthenticateConnectSessionResponse)](../../models/operations/stackoneauthenticateconnectsessionresponse.md)**



## create_connect_session

Create Connect Session

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Shared::ConnectSessionCreate.new(
  categories: [
    ::StackOne::Shared::ConnectSessionCreateCategories::ATS,
    ::StackOne::Shared::ConnectSessionCreateCategories::HRIS,
    ::StackOne::Shared::ConnectSessionCreateCategories::CRM,
    ::StackOne::Shared::ConnectSessionCreateCategories::CRM,
    ::StackOne::Shared::ConnectSessionCreateCategories::IAM,
    ::StackOne::Shared::ConnectSessionCreateCategories::MARKETING,
    ::StackOne::Shared::ConnectSessionCreateCategories::LMS,
    ::StackOne::Shared::ConnectSessionCreateCategories::ATS,
    ::StackOne::Shared::ConnectSessionCreateCategories::DOCUMENTS,
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

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [::StackOne::Shared::ConnectSessionCreate](../../models/shared/connectsessioncreate.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(::StackOne::Operations::StackoneCreateConnectSessionResponse)](../../models/operations/stackonecreateconnectsessionresponse.md)**

