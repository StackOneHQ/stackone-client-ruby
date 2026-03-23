# ChannelsEnumValue

The Channels of the campaign.

## Example Usage

```ruby
require "stackone_client"

value = ChannelsEnumValue::EMAIL

# Open enum: use .deserialize() to create instances from custom string values
custom = ChannelsEnumValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `EMAIL`          | email            |
| `SMS`            | sms              |
| `WEB_PUSH`       | web_push         |
| `IOS_PUSH`       | ios_push         |
| `ANDROID_PUSH`   | android_push     |
| `UNKNOWN`        | unknown          |
| `UNMAPPED_VALUE` | unmapped_value   |