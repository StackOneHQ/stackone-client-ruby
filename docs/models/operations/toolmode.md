# ToolMode

Tool registration mode: "individual" (default) registers each action as a separate tool; "search_execute" registers two tools per linked account for a search-then-execute flow

## Example Usage

```ruby
require "stackone_client"

value = ToolMode::INDIVIDUAL
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `INDIVIDUAL`     | individual       |
| `SEARCH_EXECUTE` | search_execute   |