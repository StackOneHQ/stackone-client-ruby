# MessagingMessageSendRequestDto


## Fields

| Field                                                     | Type                                                      | Required                                                  | Description                                               | Example                                                   |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `content`                                                 | *T.nilable(::String)*                                     | :heavy_minus_sign:                                        | Content body of the message                               | Hello, world!                                             |
| `recipient`                                               | *T.nilable(::String)*                                     | :heavy_minus_sign:                                        | Can be a conversation ID, user ID, email or phone number. | c28xyrc55866bvuv                                          |
| `sender`                                                  | *T.nilable(::String)*                                     | :heavy_minus_sign:                                        | The account_id or phone number of the message sender      | +34820398402                                              |