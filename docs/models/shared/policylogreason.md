# PolicyLogReason

Why it may not have been enforced. `no-engine`: nothing was available to redact with. `streamed`: the response was streamed, which cannot be rewritten. `engine-skipped`: redaction was skipped, for example over a size limit. `engine-failed`: redaction failed, so the response went back unredacted.

## Example Usage

```ruby
require "stackone_client"

value = PolicyLogReason::NO_ENGINE

# Open enum: use .deserialize() to create instances from custom string values
custom = PolicyLogReason.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `NO_ENGINE`      | no-engine        |
| `STREAMED`       | streamed         |
| `ENGINE_SKIPPED` | engine-skipped   |
| `ENGINE_FAILED`  | engine-failed    |