# ApplicationAttachmentValue

The content type of the attachment.

## Example Usage

```ruby
require "stackone_client"

value = ApplicationAttachmentValue::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = ApplicationAttachmentValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `TEXT`           | text             |
| `PDF`            | pdf              |
| `VIDEO`          | video            |
| `OTHER`          | other            |
| `UNMAPPED_VALUE` | unmapped_value   |