# PolicyLogResult

The outcome recorded for the call. `partial` means the call was permitted but a rule removed fields from the response; `monitored` means a rule would have refused had its level been enforcing; `error` means the layer could not decide and failed safe.

## Example Usage

```ruby
require "stackone_client"

value = PolicyLogResult::SKIPPED

# Open enum: use .deserialize() to create instances from custom string values
custom = PolicyLogResult.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `SKIPPED`   | skipped     |
| `ALLOWED`   | allowed     |
| `PARTIAL`   | partial     |
| `MONITORED` | monitored   |
| `DENIED`    | denied      |
| `ERROR`     | error       |