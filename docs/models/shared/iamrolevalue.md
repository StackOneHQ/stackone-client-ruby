# IamRoleValue

## Example Usage

```ruby
require "stackone_client"

value = IamRoleValue::ADMIN

# Open enum: use .deserialize() to create instances from custom string values
custom = IamRoleValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `ADMIN`          | admin            |
| `VIEWER`         | viewer           |
| `EDITOR`         | editor           |
| `BASIC`          | basic            |
| `GUEST`          | guest            |
| `UNASSIGNED`     | unassigned       |
| `RESTRICTED`     | restricted       |
| `UNMAPPED_VALUE` | unmapped_value   |