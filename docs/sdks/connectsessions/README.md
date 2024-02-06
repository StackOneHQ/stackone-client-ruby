# ConnectSessions


### Available Operations

* [authenticate_connect_session](#authenticate_connect_session) - Authenticate Connect Session
* [create_connect_session](#create_connect_session) - Create Connect Session

## authenticate_connect_session

Authenticate Connect Session

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=::StackOne::Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Shared::ConnectSessionAuthenticate.new(
  token="string",
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
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=::StackOne::Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Shared::ConnectSessionCreate.new(
  categories=[
    ::StackOne::Shared::ConnectSessionCreateCategories::HRIS_LEGACY,
  ],
  metadata=::StackOne::Shared::Metadata.new(),
  origin_owner_id="string",
  origin_owner_name="string",
)
    
res = s.connect_sessions.create_connect_session(req)

if ! res.connect_session_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [::StackOne::Shared::ConnectSessionCreate](../../models/shared/connectsessioncreate.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(::StackOne::Operations::StackoneCreateConnectSessionResponse)](../../models/operations/stackonecreateconnectsessionresponse.md)**

