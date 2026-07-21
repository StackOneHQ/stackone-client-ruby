# Instructions

Server `instructions` (returned in the MCP initialize handshake) that teach the model the path/query/body/headers parameter envelope: "off" (default) omits them, "on" includes envelope guidance matched to the active param-style

## Example Usage

```ruby
require "stackone_client"

value = Instructions::ON
```


## Values

| Name  | Value |
| ----- | ----- |
| `ON`  | on    |
| `OFF` | off   |