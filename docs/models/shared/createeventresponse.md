# CreateEventResponse


## Fields

| Field                                            | Type                                             | Required                                         | Description                                      | Example                                          |
| ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| `event`                                          | *::String*                                       | :heavy_check_mark:                               | The event name                                   | hris_employees.created                           |
| `message`                                        | *T.nilable(::String)*                            | :heavy_minus_sign:                               | The message associated with the operation result | The event was created                            |
| `record_id`                                      | *::String*                                       | :heavy_check_mark:                               | The record id associated with the event          |                                                  |
| `status`                                         | *::Float*                                        | :heavy_check_mark:                               | The response http status code                    | 200                                              |