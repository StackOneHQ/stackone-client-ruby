# IamCredentialsValue

How the connection authenticates.

## Example Usage

```ruby
require "stackone_client"

value = IamCredentialsValue::OAUTH

# Open enum: use .deserialize() to create instances from custom string values
custom = IamCredentialsValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `OAUTH`          | oauth            |
| `API_KEY`        | api_key          |
| `SERVICE_USER`   | service_user     |
| `UNMAPPED_VALUE` | unmapped_value   |