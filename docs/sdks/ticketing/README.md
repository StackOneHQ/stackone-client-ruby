# Ticketing
(*ticketing*)

## Overview

### Available Operations

* [create_ticket](#create_ticket) - Create Ticket
* [download_ticketing_attachment](#download_ticketing_attachment) - Download Attachment
* [get_attachment](#get_attachment) - Get Attachment
* [get_comment](#get_comment) - Get Comment
* [get_project](#get_project) - Get Project
* [get_project_component](#get_project_component) - Get Project Component
* [get_ticket](#get_ticket) - Get Ticket
* [get_ticket_type](#get_ticket_type) - Get Ticket Type
* [get_user](#get_user) - Get User
* [list_attachments](#list_attachments) - List Attachments
* [list_comments](#list_comments) - List Comments
* [list_project_components](#list_project_components) - List Project Components
* [list_project_ticket_types](#list_project_ticket_types) - List Project Ticket Types
* [list_projects](#list_projects) - List Projects
* [list_ticket_statuses](#list_ticket_statuses) - List Ticket Statuses
* [list_ticket_types](#list_ticket_types) - List Ticket Types
* [list_tickets](#list_tickets) - List Tickets
* [list_users](#list_users) - List Users
* [update_ticket](#update_ticket) - Update Ticket

## create_ticket

Create a new ticket record.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.ticketing.create_ticket(ticketing_ticket_create_request_dto=Models::Shared::TicketingTicketCreateRequestDto.new(
  assignees: [
    "user-001",
    "user-002",
  ],
  component_ids: "[\"component-001\",\"component-002\"]",
  content: [
    Models::Shared::TicketingContent.new(
      html: "<p>This is some content</p>",
      plain: "This is some content",
    ),
  ],
  creator_id: "user-001",
  organization_id: "organization-001",
  parent_id: "ticket-002",
  priority: Models::Shared::TicketingTicketCreateRequestDtoPriority.new(
    id: "001",
    source_value: "Normal",
    value: Models::Shared::TicketingTicketCreateRequestDtoValue::MEDIUM,
  ),
  project_id: "project-001",
  reporters: [
    "user-001",
    "user-002",
  ],
  tags: [
    "tag-001",
    "tag-002",
  ],
  title: "System outage in production environment",
  type: "ticket-type-001",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
), x_account_id="<id>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `ticketing_ticket_create_request_dto`                                                                     | [Models::Shared::TicketingTicketCreateRequestDto](../../models/shared/ticketingticketcreaterequestdto.md) | :heavy_check_mark:                                                                                        | N/A                                                                                                       |
| `x_account_id`                                                                                            | *::String*                                                                                                | :heavy_check_mark:                                                                                        | The account identifier                                                                                    |

### Response

**[T.nilable(Models::Operations::TicketingCreateTicketResponse)](../../models/operations/ticketingcreateticketresponse.md)**



## download_ticketing_attachment

Download the attachment file from a ticket.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingDownloadTicketingAttachmentRequest.new(
  export_format: "text/plain",
  format: "base64",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.download_ticketing_attachment(req)

if ! res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                 | [Models::Operations::TicketingDownloadTicketingAttachmentRequest](../../models/operations/ticketingdownloadticketingattachmentrequest.md) | :heavy_check_mark:                                                                                                                        | The request object to use for the request.                                                                                                |

### Response

**[T.nilable(Models::Operations::TicketingDownloadTicketingAttachmentResponse)](../../models/operations/ticketingdownloadticketingattachmentresponse.md)**



## get_attachment

Retrieve the details of a single attachment for a ticket.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingGetAttachmentRequest.new(
  fields_: "id,remote_id,ticket_id,remote_ticket_id,user_id,remote_user_id,file_name,file_format,file_url,size,created_at,updated_at",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.get_attachment(req)

if ! res.ticketing_attachment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::TicketingGetAttachmentRequest](../../models/operations/ticketinggetattachmentrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::TicketingGetAttachmentResponse)](../../models/operations/ticketinggetattachmentresponse.md)**



## get_comment

Retrieve a single comment by its identifier for a ticket.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingGetCommentRequest.new(
  fields_: "id,remote_id,ticket_id,remote_ticket_id,content,user_id,remote_user_id,internal,created_at,updated_at",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.get_comment(req)

if ! res.ticketing_comment_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::TicketingGetCommentRequest](../../models/operations/ticketinggetcommentrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::TicketingGetCommentResponse)](../../models/operations/ticketinggetcommentresponse.md)**



## get_project

Retrieve a single project by its identifier.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingGetProjectRequest.new(
  fields_: "id,remote_id,organization_id,remote_organization_id,name,description,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.get_project(req)

if ! res.ticketing_project_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::TicketingGetProjectRequest](../../models/operations/ticketinggetprojectrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::TicketingGetProjectResponse)](../../models/operations/ticketinggetprojectresponse.md)**



## get_project_component

Retrieve a single project component by its identifier.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingGetProjectComponentRequest.new(
  fields_: "id,remote_id,organization_id,remote_organization_id,project_id,remote_project_id,name,description,created_at,updated_at",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.get_project_component(req)

if ! res.ticketing_component_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::TicketingGetProjectComponentRequest](../../models/operations/ticketinggetprojectcomponentrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::TicketingGetProjectComponentResponse)](../../models/operations/ticketinggetprojectcomponentresponse.md)**



## get_ticket

Retrieve a single ticket by its identifier.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingGetTicketRequest.new(
  fields_: "id,remote_id,type,ticket_number,title,creator_id,remote_creator_id,reporters,assignees,content,parent_id,remote_parent_id,closed_at,ticket_url,status,priority,tags,projects,components,organization,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.get_ticket(req)

if ! res.ticketing_ticket_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::TicketingGetTicketRequest](../../models/operations/ticketinggetticketrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::TicketingGetTicketResponse)](../../models/operations/ticketinggetticketresponse.md)**



## get_ticket_type

Retrieve a single ticket type by its identifier.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingGetTicketTypeRequest.new(
  fields_: "id,remote_id,name,project_id,remote_project_id",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.get_ticket_type(req)

if ! res.ticketing_ticket_type_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::TicketingGetTicketTypeRequest](../../models/operations/ticketinggettickettyperequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::TicketingGetTicketTypeResponse)](../../models/operations/ticketinggettickettyperesponse.md)**



## get_user

Retrieve a single user by their identifier.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingGetUserRequest.new(
  fields_: "id,remote_id,type,name,primary_email,primary_phone,username,active,first_name,last_name,customer_account_reference,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.get_user(req)

if ! res.ticketing_user_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::TicketingGetUserRequest](../../models/operations/ticketinggetuserrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::TicketingGetUserResponse)](../../models/operations/ticketinggetuserresponse.md)**



## list_attachments

Retrieve a paginated list of attachment details for a ticket.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingListAttachmentsRequest.new(
  fields_: "id,remote_id,ticket_id,remote_ticket_id,user_id,remote_user_id,file_name,file_format,file_url,size,created_at,updated_at",
  filter: Models::Operations::TicketingListAttachmentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.list_attachments(req)

if ! res.ticketing_attachments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::TicketingListAttachmentsRequest](../../models/operations/ticketinglistattachmentsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::TicketingListAttachmentsResponse)](../../models/operations/ticketinglistattachmentsresponse.md)**



## list_comments

Retrieve a paginated list of comments for a ticket.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingListCommentsRequest.new(
  fields_: "id,remote_id,ticket_id,remote_ticket_id,content,user_id,remote_user_id,internal,created_at,updated_at",
  filter: Models::Operations::TicketingListCommentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.list_comments(req)

if ! res.ticketing_comments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::TicketingListCommentsRequest](../../models/operations/ticketinglistcommentsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::TicketingListCommentsResponse)](../../models/operations/ticketinglistcommentsresponse.md)**



## list_project_components

Retrieve a paginated list of project components.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingListProjectComponentsRequest.new(
  fields_: "id,remote_id,organization_id,remote_organization_id,project_id,remote_project_id,name,description,created_at,updated_at",
  filter: Models::Operations::TicketingListProjectComponentsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.list_project_components(req)

if ! res.ticketing_components_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::TicketingListProjectComponentsRequest](../../models/operations/ticketinglistprojectcomponentsrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::TicketingListProjectComponentsResponse)](../../models/operations/ticketinglistprojectcomponentsresponse.md)**



## list_project_ticket_types

Retrieve a paginated list of ticket types for a project.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingListProjectTicketTypesRequest.new(
  fields_: "id,remote_id,name,project_id,remote_project_id",
  filter: Models::Operations::TicketingListProjectTicketTypesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.list_project_ticket_types(req)

if ! res.ticketing_ticket_type_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::TicketingListProjectTicketTypesRequest](../../models/operations/ticketinglistprojecttickettypesrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::TicketingListProjectTicketTypesResponse)](../../models/operations/ticketinglistprojecttickettypesresponse.md)**



## list_projects

Retrieve a paginated list of projects.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingListProjectsRequest.new(
  fields_: "id,remote_id,organization_id,remote_organization_id,name,description,created_at,updated_at",
  filter: Models::Operations::TicketingListProjectsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.ticketing.list_projects(req)

if ! res.ticketing_projects_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::TicketingListProjectsRequest](../../models/operations/ticketinglistprojectsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::TicketingListProjectsResponse)](../../models/operations/ticketinglistprojectsresponse.md)**



## list_ticket_statuses

Retrieve a paginated list of statuses for a ticket.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingListTicketStatusesRequest.new(
  filter: Models::Operations::TicketingListTicketStatusesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.ticketing.list_ticket_statuses(req)

if ! res.ticketing_ticket_statuses_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::TicketingListTicketStatusesRequest](../../models/operations/ticketinglistticketstatusesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::TicketingListTicketStatusesResponse)](../../models/operations/ticketinglistticketstatusesresponse.md)**



## list_ticket_types

Retrieve a paginated list of all ticket types.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingListTicketTypesRequest.new(
  fields_: "id,remote_id,name,project_id,remote_project_id",
  filter: Models::Operations::TicketingListTicketTypesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.ticketing.list_ticket_types(req)

if ! res.ticketing_ticket_type_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::TicketingListTicketTypesRequest](../../models/operations/ticketinglisttickettypesrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::TicketingListTicketTypesResponse)](../../models/operations/ticketinglisttickettypesresponse.md)**



## list_tickets

Retrieve a paginated list of tickets.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingListTicketsRequest.new(
  fields_: "id,remote_id,type,ticket_number,title,creator_id,remote_creator_id,reporters,assignees,content,parent_id,remote_parent_id,closed_at,ticket_url,status,priority,tags,projects,components,organization,created_at,updated_at",
  filter: Models::Operations::TicketingListTicketsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.ticketing.list_tickets(req)

if ! res.ticketing_tickets_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::TicketingListTicketsRequest](../../models/operations/ticketinglistticketsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::TicketingListTicketsResponse)](../../models/operations/ticketinglistticketsresponse.md)**



## list_users

Retrieve a paginated list of users.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::TicketingListUsersRequest.new(
  fields_: "id,remote_id,type,name,primary_email,primary_phone,username,active,first_name,last_name,customer_account_reference,created_at,updated_at",
  filter: Models::Operations::TicketingListUsersQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.ticketing.list_users(req)

if ! res.ticketing_users_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::TicketingListUsersRequest](../../models/operations/ticketinglistusersrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::TicketingListUsersResponse)](../../models/operations/ticketinglistusersresponse.md)**



## update_ticket

Update an existing ticket record by its identifier.

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.ticketing.update_ticket(ticketing_ticket_update_request_dto=Models::Shared::TicketingTicketUpdateRequestDto.new(
  assignees: [
    "user-001",
    "user-002",
  ],
  component_ids: "[\"component-001\",\"component-002\"]",
  content: [
    Models::Shared::TicketingContent.new(
      html: "<p>This is some content</p>",
      plain: "This is some content",
    ),
  ],
  parent_id: "ticket-002",
  priority: Models::Shared::TicketingTicketUpdateRequestDtoPriority.new(
    id: "001",
    source_value: "Normal",
    value: Models::Shared::TicketingTicketUpdateRequestDtoValue::MEDIUM,
  ),
  project_id: "project-001",
  reporters: [
    "user-001",
    "user-002",
  ],
  status: Models::Shared::TicketingTicketUpdateRequestDtoStatus.new(
    id: "001",
    name: "Backlog",
    type: Models::Shared::TicketingTicketUpdateRequestDtoType.new(
      source_value: "New",
      value: Models::Shared::TicketingTicketUpdateRequestDtoSchemasValue::TO_DO,
    ),
  ),
  tags: [
    "tag-001",
    "tag-002",
  ],
  title: "System outage in production environment",
  unified_custom_fields: {
    "my_project_custom_field_1": "REF-1236",
    "my_project_custom_field_2": "some other value",
  },
), id="<id>", x_account_id="<id>")

if ! res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `ticketing_ticket_update_request_dto`                                                                     | [Models::Shared::TicketingTicketUpdateRequestDto](../../models/shared/ticketingticketupdaterequestdto.md) | :heavy_check_mark:                                                                                        | N/A                                                                                                       |
| `id`                                                                                                      | *::String*                                                                                                | :heavy_check_mark:                                                                                        | N/A                                                                                                       |
| `x_account_id`                                                                                            | *::String*                                                                                                | :heavy_check_mark:                                                                                        | The account identifier                                                                                    |

### Response

**[T.nilable(Models::Operations::TicketingUpdateTicketResponse)](../../models/operations/ticketingupdateticketresponse.md)**

