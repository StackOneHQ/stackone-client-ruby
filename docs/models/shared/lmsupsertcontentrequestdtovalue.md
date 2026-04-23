# LmsUpsertContentRequestDtoValue

The content type for write operations. Provide one of the listed enum values. If omitted or set to "unmapped_value", the source_value will be sent to the provider instead.

## Example Usage

```ruby
require "stackone_client"

value = LmsUpsertContentRequestDtoValue::VIDEO

# Open enum: use .deserialize() to create instances from custom string values
custom = LmsUpsertContentRequestDtoValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `VIDEO`          | video            |
| `QUIZ`           | quiz             |
| `DOCUMENT`       | document         |
| `AUDIO`          | audio            |
| `ARTICLE`        | article          |
| `BOOK`           | book             |
| `EVENT`          | event            |
| `COURSE`         | course           |
| `COLLECTION`     | collection       |
| `INTERACTIVE`    | interactive      |
| `UNMAPPED_VALUE` | unmapped_value   |