# PolicyLogObservation


## Fields

| Field                                      | Type                                       | Required                                   | Description                                | Example                                    |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `decision`                                 | *::String*                                 | :heavy_check_mark:                         | What it would have answered                | deny                                       |
| `level`                                    | *::String*                                 | :heavy_check_mark:                         | The level that observed                    | project                                    |
| `policy_ids`                               | T::Array<*::String*>                       | :heavy_check_mark:                         | The rules behind the observation           | [<br/>"21cfc501-43b4-4fdb-bea9-1e79bc1f2425"<br/>] |