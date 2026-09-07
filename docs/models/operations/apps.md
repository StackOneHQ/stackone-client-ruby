# Apps

MCP Apps panel: "off" (default) omits it, "on" registers the interactive toolset explorer. Only set it for hosts that render MCP Apps — a client with no iframe (a terminal) gets a tool whose result it cannot display

## Example Usage

```ruby
require "stackone_client"

value = Apps::ON
```


## Values

| Name  | Value |
| ----- | ----- |
| `ON`  | on    |
| `OFF` | off   |