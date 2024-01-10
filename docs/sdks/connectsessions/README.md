# ConnectSessions


### Available Operations

* [authenticate_connect_session](#authenticate_connect_session) - Authenticate Connect Session
* [create_connect_session](#create_connect_session) - Create Connect Session

## authenticate_connect_session

Authenticate Connect Session

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Shared::ConnectSessionAuthenticate.new(
  token="string",
)
    
res = s.connect_sessions.authenticate_connect_session(req)

if ! res.connect_session.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Shared::ConnectSessionAuthenticate](../../models/shared/connectsessionauthenticate.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::StackoneAuthenticateConnectSessionResponse)](../../models/operations/stackoneauthenticateconnectsessionresponse.md)**


## create_connect_session

Create Connect Session

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Shared::ConnectSessionCreate.new(
  categories=[
    Shared::ConnectSessionCreateCategories::HRIS_LEGACY,
  ],
  metadata=Shared::Metadata.new(),
  origin_owner_id="string",
  origin_owner_name="string",
)
    
res = s.connect_sessions.create_connect_session(req)

if ! res.connect_session_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `request`                                                                   | [Shared::ConnectSessionCreate](../../models/shared/connectsessioncreate.md) | :heavy_check_mark:                                                          | The request object to use for the request.                                  |


### Response

**[T.nilable(Operations::StackoneCreateConnectSessionResponse)](../../models/operations/stackonecreateconnectsessionresponse.md)**

