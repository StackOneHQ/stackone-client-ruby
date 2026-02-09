# ActionSearchResultDto


## Fields

| Field                                                | Type                                                 | Required                                             | Description                                          |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `action_name`                                        | *::String*                                           | :heavy_check_mark:                                   | Unique action identifier                             |
| `connector_key`                                      | *::String*                                           | :heavy_check_mark:                                   | Connector key                                        |
| `description`                                        | *::String*                                           | :heavy_check_mark:                                   | Action description                                   |
| `label`                                              | *::String*                                           | :heavy_check_mark:                                   | Human-readable action label                          |
| `project_id`                                         | *::String*                                           | :heavy_check_mark:                                   | Project ID of the action (global for shared actions) |
| `similarity_score`                                   | *::Float*                                            | :heavy_check_mark:                                   | Cosine similarity score (0-1)                        |