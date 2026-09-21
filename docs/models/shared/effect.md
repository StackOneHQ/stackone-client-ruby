# Effect

What it did, absent when it did nothing. Most rules on a call are absent here: they were in force and had no opinion, which is the distinction this record exists to make.

## Example Usage

```ruby
require "stackone_client"

value = Effect::REFUSED

# Open enum: use .deserialize() to create instances from custom string values
custom = Effect.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `REFUSED`            | refused              |
| `MASKED`             | masked               |
| `WOULD_HAVE_REFUSED` | would-have-refused   |
| `PERMITTED`          | permitted            |
| `UNMAPPED_VALUE`     | unmapped_value       |