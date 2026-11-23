# LogQueryConditionDtoField

The log field to compare

## Example Usage

```ruby
require "stackone_client"

value = LogQueryConditionDtoField::ACCOUNT_SECURE_ID

# Open enum: use .deserialize() to create instances from custom string values
custom = LogQueryConditionDtoField.deserialize("custom_value")
```


## Values

| Name                   | Value                  |
| ---------------------- | ---------------------- |
| `ACCOUNT_SECURE_ID`    | account_secure_id      |
| `CONNECTOR_KEY`        | connector_key          |
| `CONNECTOR_VERSION`    | connector_version      |
| `CONNECTOR_OWNER`      | connector_owner        |
| `CONNECTOR_PROFILE_ID` | connector_profile_id   |
| `ACTION_ID`            | action_id              |
| `ACTION_RUN_ID`        | action_run_id          |
| `ACTION_TYPE`          | action_type            |
| `SOURCE_TYPE`          | source_type            |
| `SOURCE_ID`            | source_id              |
| `MODE`                 | mode                   |
| `ORIGIN_OWNER_ID`      | origin_owner_id        |
| `ORIGIN_OWNER_NAME`    | origin_owner_name      |
| `AUTH_TYPE`            | auth_type              |
| `AUTH_ID`              | auth_id                |
| `USER_AGENT`           | user_agent             |
| `IP_ADDRESS`           | ip_address             |
| `SESSION_ID`           | session_id             |
| `AGENT_ID`             | agent_id               |
| `TRANSPORT_TYPE`       | transport_type         |
| `STREAM_TYPE`          | stream_type            |
| `HTTP_METHOD`          | http_method            |
| `SERVICE`              | service                |
| `RESOURCE`             | resource               |
| `RISK_LEVEL`           | risk_level             |
| `POLICY_RESULT`        | policy_result          |
| `SUCCESS`              | success                |
| `IS_BACKGROUND`        | is_background          |
| `STATUS_CODE`          | status_code            |
| `DURATION_MS`          | duration_ms            |
| `LOG_ID`               | log_id                 |
| `REQUEST_ID`           | request_id             |
| `SESSION_AUTH_ID`      | session_auth_id        |