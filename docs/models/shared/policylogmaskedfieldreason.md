# PolicyLogMaskedFieldReason

Why it was withheld. `rule`: a rule refused it, and `policy_ids` names it. `no-permit`: no rule refused it, but nothing at its level permitted it either, so `policy_ids` is empty. `fault`: the policy could not be evaluated for it, so it was withheld to fail safe. `unchecked`: it was never decided, so it was withheld to fail safe. Absent on decisions stored before the reason was recorded, which are kept for a year, so treat absent as unknown.

## Example Usage

```ruby
require "stackone_client"

value = PolicyLogMaskedFieldReason::RULE

# Open enum: use .deserialize() to create instances from custom string values
custom = PolicyLogMaskedFieldReason.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `RULE`           | rule             |
| `NO_PERMIT`      | no-permit        |
| `FAULT`          | fault            |
| `UNCHECKED`      | unchecked        |
| `UNMAPPED_VALUE` | unmapped_value   |