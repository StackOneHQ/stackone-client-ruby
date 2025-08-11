# Messaging
(*messaging*)

## Overview

### Available Operations

* [create_conversation](#create_conversation) - Create Conversation
* [download_messaging_attachment](#download_messaging_attachment) - Download Attachment
* [get_attachment](#get_attachment) - Get Attachment
* [get_conversation](#get_conversation) - Get Conversation
* [get_message](#get_message) - Get Message
* [get_user](#get_user) - Get User
* [list_attachments](#list_attachments) - List Attachments
* [list_conversation_messages](#list_conversation_messages) - List Conversation Messages
* [list_conversations](#list_conversations) - List Conversations
* [list_users](#list_users) - List Users
* [send_message](#send_message) - Send Message

## create_conversation

Create Conversation

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.messaging.create_conversation(messaging_create_conversation_request_dto=Models::Shared::MessagingCreateConversationRequestDto.new(
  name: "Project Discussion",
  participants: [
    "c28xIQ1",
    "c28xIQ2",
  ],
  private: true,
), x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `messaging_create_conversation_request_dto`                                                                           | [Models::Shared::MessagingCreateConversationRequestDto](../../models/shared/messagingcreateconversationrequestdto.md) | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `x_account_id`                                                                                                        | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | The account identifier                                                                                                |

### Response

**[T.nilable(Models::Operations::MessagingCreateConversationResponse)](../../models/operations/messagingcreateconversationresponse.md)**



## download_messaging_attachment

Download Attachment

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::MessagingDownloadMessagingAttachmentRequest.new(
  export_format: "text/plain",
  format: "base64",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.messaging.download_messaging_attachment(req)

if ! res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                 | [Models::Operations::MessagingDownloadMessagingAttachmentRequest](../../models/operations/messagingdownloadmessagingattachmentrequest.md) | :heavy_check_mark:                                                                                                                        | The request object to use for the request.                                                                                                |

### Response

**[T.nilable(Models::Operations::MessagingDownloadMessagingAttachmentResponse)](../../models/operations/messagingdownloadmessagingattachmentresponse.md)**



## get_attachment

Get Attachment

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::MessagingGetAttachmentRequest.new(
  fields_: "id,remote_id,file_name,file_size,file_type",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.messaging.get_attachment(req)

if ! res.messaging_attachment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::MessagingGetAttachmentRequest](../../models/operations/messaginggetattachmentrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::MessagingGetAttachmentResponse)](../../models/operations/messaginggetattachmentresponse.md)**



## get_conversation

Get Conversation

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::MessagingGetConversationRequest.new(
  fields_: "id,remote_id,participants,name,private,created_at,last_message_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.messaging.get_conversation(req)

if ! res.messaging_conversation_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::MessagingGetConversationRequest](../../models/operations/messaginggetconversationrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::MessagingGetConversationResponse)](../../models/operations/messaginggetconversationresponse.md)**



## get_message

Get Message

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::MessagingGetMessageRequest.new(
  fields_: "id,remote_id,content,parent_message_id,remote_parent_message_id,attachments,author,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.messaging.get_message(req)

if ! res.messaging_message_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::MessagingGetMessageRequest](../../models/operations/messaginggetmessagerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::MessagingGetMessageResponse)](../../models/operations/messaginggetmessageresponse.md)**



## get_user

Get User

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::MessagingGetUserRequest.new(
  fields_: "id,remote_id,email,username,name,first_name,last_name,bot,active",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.messaging.get_user(req)

if ! res.messaging_user_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::MessagingGetUserRequest](../../models/operations/messaginggetuserrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::MessagingGetUserResponse)](../../models/operations/messaginggetuserresponse.md)**



## list_attachments

List Attachments

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::MessagingListAttachmentsRequest.new(
  fields_: "id,remote_id,file_name,file_size,file_type",
  filter: Models::Operations::MessagingListAttachmentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.messaging.list_attachments(req)

if ! res.messaging_attachments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::MessagingListAttachmentsRequest](../../models/operations/messaginglistattachmentsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::MessagingListAttachmentsResponse)](../../models/operations/messaginglistattachmentsresponse.md)**



## list_conversation_messages

List Conversation Messages

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::MessagingListConversationMessagesRequest.new(
  fields_: "id,remote_id,content,parent_message_id,remote_parent_message_id,attachments,author,created_at,updated_at",
  filter: Models::Operations::MessagingListConversationMessagesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.messaging.list_conversation_messages(req)

if ! res.messaging_messages_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [Models::Operations::MessagingListConversationMessagesRequest](../../models/operations/messaginglistconversationmessagesrequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |

### Response

**[T.nilable(Models::Operations::MessagingListConversationMessagesResponse)](../../models/operations/messaginglistconversationmessagesresponse.md)**



## list_conversations

List Conversations

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::MessagingListConversationsRequest.new(
  fields_: "id,remote_id,participants,name,private,created_at,last_message_at",
  filter: Models::Operations::MessagingListConversationsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.messaging.list_conversations(req)

if ! res.messaging_conversations_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::MessagingListConversationsRequest](../../models/operations/messaginglistconversationsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::MessagingListConversationsResponse)](../../models/operations/messaginglistconversationsresponse.md)**



## list_users

List Users

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::MessagingListUsersRequest.new(
  fields_: "id,remote_id,email,username,name,first_name,last_name,bot,active",
  filter: Models::Operations::MessagingListUsersQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.messaging.list_users(req)

if ! res.messaging_users_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::MessagingListUsersRequest](../../models/operations/messaginglistusersrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::MessagingListUsersResponse)](../../models/operations/messaginglistusersresponse.md)**



## send_message

Send Message

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.messaging.send_message(messaging_message_send_request_dto=Models::Shared::MessagingMessageSendRequestDto.new(
  content: "Hello, world!",
  recipient: "c28xyrc55866bvuv",
  sender: "+34820398402",
), x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `messaging_message_send_request_dto`                                                                    | [Models::Shared::MessagingMessageSendRequestDto](../../models/shared/messagingmessagesendrequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |

### Response

**[T.nilable(Models::Operations::MessagingSendMessageResponse)](../../models/operations/messagingsendmessageresponse.md)**

