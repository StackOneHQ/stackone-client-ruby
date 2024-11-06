# Webhooks
(*webhooks*)

## Overview

### Available Operations

* [create](#create)

## create

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

    
res = s.webhooks.create(request_body=[
  ::StackOne::Shared::CreateEvent.new(
    event: "hris_employees.created",
    record_id: "<id>",
  ),
], id=4865.89, x_account_id="<id>")

if ! res.create_event_responses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request_body`                                                                  | T::Array<[::StackOne::Shared::CreateEvent](../../models/shared/createevent.md)> | :heavy_check_mark:                                                              | N/A                                                                             |
| `id`                                                                            | *::Float*                                                                       | :heavy_check_mark:                                                              | N/A                                                                             |
| `x_account_id`                                                                  | *::String*                                                                      | :heavy_check_mark:                                                              | The account identifier                                                          |

### Response

**[T.nilable(::StackOne::Operations::CreateResponse)](../../models/operations/createresponse.md)**

