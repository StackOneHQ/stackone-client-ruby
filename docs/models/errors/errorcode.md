# ErrorCode

Identifies which account status blocked the request

## Example Usage

```ruby
require "stackone_client"

value = ErrorCode::ACCOUNT_SUSPENDED_ERROR

# Open enum: use .deserialize() to create instances from custom string values
custom = ErrorCode.deserialize("custom_value")
```


## Values

| Name                      | Value                     |
| ------------------------- | ------------------------- |
| `ACCOUNT_SUSPENDED_ERROR` | AccountSuspendedError     |
| `ACCOUNT_EXPIRED_ERROR`   | AccountExpiredError       |
| `ACCOUNT_ARCHIVED_ERROR`  | AccountArchivedError      |
| `ACCOUNT_ERROR_STATUS`    | AccountErrorStatus        |