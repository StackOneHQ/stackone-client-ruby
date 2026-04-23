# IamPermissionValue

The type of the permission, e.g. read, read_write, delete, etc.

## Example Usage

```ruby
require "stackone_client"

value = IamPermissionValue::READ

# Open enum: use .deserialize() to create instances from custom string values
custom = IamPermissionValue.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `READ`           | read             |
| `READ_WRITE`     | read_write       |
| `APPROVE`        | approve          |
| `DELETE`         | delete           |
| `USE`            | use              |
| `EXPORT`         | export           |
| `UNMAPPED_VALUE` | unmapped_value   |