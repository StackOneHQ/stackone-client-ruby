# JobPostingContentSectionValue

The type of the description.

## Example Usage

```ruby
require "stackone_client"

value = JobPostingContentSectionValue::RESPONSIBILITIES

# Open enum: use .deserialize() to create instances from custom string values
custom = JobPostingContentSectionValue.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `RESPONSIBILITIES` | responsibilities   |
| `SKILLS`           | skills             |
| `BENEFITS`         | benefits           |
| `COMPANY_OVERVIEW` | company_overview   |
| `DESCRIPTION`      | description        |
| `OTHER`            | other              |
| `UNMAPPED_VALUE`   | unmapped_value     |