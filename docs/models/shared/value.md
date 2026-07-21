# Value

The type of the resource, e.g. user, group, permission, etc.

## Example Usage

```ruby
require "stackone_client"

value = Value::PROJECT

# Open enum: use .deserialize() to create instances from custom string values
custom = Value.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PROJECT`        | project          |
| `FILE`           | file             |
| `FOLDER`         | folder           |
| `PRODUCT`        | product          |
| `PROPERTY`       | property         |
| `USER`           | user             |
| `UNMAPPED_VALUE` | unmapped_value   |