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
| `DELETE`         | delete           |
| `EXPORT`         | export           |
| `READ_WRITE`     | read_write       |
| `APPROVE`        | approve          |
| `USE`            | use              |
| `WRITE`          | write            |
| `COMMENT`        | comment          |
| `CREATE`         | create           |
| `EDIT`           | edit             |
| `UNMAPPED_VALUE` | unmapped_value   |