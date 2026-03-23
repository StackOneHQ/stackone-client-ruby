# Method

The method of the request

## Example Usage

```ruby
require "stackone_client"

value = Method::GET

# Open enum: use .deserialize() to create instances from custom string values
custom = Method.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `GET`    | get      |
| `POST`   | post     |
| `PUT`    | put      |
| `DELETE` | delete   |
| `PATCH`  | patch    |