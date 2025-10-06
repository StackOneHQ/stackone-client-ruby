# Marketing
(*marketing*)

## Overview

### Available Operations

* [create_content_block](#create_content_block) - Create Content Block
* [create_email_template](#create_email_template) - Create Email Templates
* [create_in_app_template](#create_in_app_template) - Create In-App Template
* [~~create_omni_channel_template~~](#create_omni_channel_template) - Create Omni-Channel Template :warning: **Deprecated**
* [create_push_template](#create_push_template) - Create Push Template
* [create_sms_template](#create_sms_template) - Create SMS Template
* [get_campaign](#get_campaign) - Get campaign
* [get_content_block](#get_content_block) - Get Content Blocks
* [get_email_template](#get_email_template) - Get Email Templates
* [get_in_app_template](#get_in_app_template) - Get In-App Template
* [~~get_omni_channel_template~~](#get_omni_channel_template) - Get Omni-Channel Template :warning: **Deprecated**
* [get_push_template](#get_push_template) - Get Push Template
* [get_sms_template](#get_sms_template) - Get SMS Template
* [list_campaigns](#list_campaigns) - List campaigns
* [list_content_blocks](#list_content_blocks) - List Content Blocks
* [list_email_templates](#list_email_templates) - List Email Templates
* [list_in_app_templates](#list_in_app_templates) - List In-App Templates
* [~~list_omni_channel_templates~~](#list_omni_channel_templates) - List Omni-Channel Templates :warning: **Deprecated**
* [list_push_templates](#list_push_templates) - List Push Templates
* [list_sms_templates](#list_sms_templates) - List SMS Templates
* [update_content_block](#update_content_block) - Update Content Block
* [update_email_template](#update_email_template) - Update Email Templates
* [update_in_app_template](#update_in_app_template) - Update In-App Template
* [~~update_omni_channel_template~~](#update_omni_channel_template) - Update Omni-Channel Template :warning: **Deprecated**
* [update_push_template](#update_push_template) - Update Push Template
* [update_sms_template](#update_sms_template) - Update SMS Template

## create_content_block

Create Content Block

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_create_content_block" method="post" path="/unified/marketing/content_blocks" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.create_content_block(marketing_create_content_blocks_request_dto: Models::Shared::MarketingCreateContentBlocksRequestDto.new(
  passthrough: {
    "other_known_names": 'John Doe',
  },
  type: Models::Shared::MarketingCreateContentBlocksRequestDtoType.new(
    source_value: 'text',
    value: Models::Shared::MarketingCreateContentBlocksRequestDtoValue::HTML,
  ),
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_content_blocks_request_dto`                                                                           | [Models::Shared::MarketingCreateContentBlocksRequestDto](../../models/shared/marketingcreatecontentblocksrequestdto.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `x_account_id`                                                                                                          | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The account identifier                                                                                                  |

### Response

**[T.nilable(Models::Operations::MarketingCreateContentBlockResponse)](../../models/operations/marketingcreatecontentblockresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_email_template

Create Email Templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_create_email_template" method="post" path="/unified/marketing/templates/email" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.create_email_template(marketing_create_email_template_request_dto: Models::Shared::MarketingCreateEmailTemplateRequestDto.new(
  messages: [
    Models::Shared::EmailMessages.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: nil,
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_email_template_request_dto`                                                                           | [Models::Shared::MarketingCreateEmailTemplateRequestDto](../../models/shared/marketingcreateemailtemplaterequestdto.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `x_account_id`                                                                                                          | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The account identifier                                                                                                  |

### Response

**[T.nilable(Models::Operations::MarketingCreateEmailTemplateResponse)](../../models/operations/marketingcreateemailtemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_in_app_template

Create In-App Template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_create_in_app_template" method="post" path="/unified/marketing/templates/in_app" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.create_in_app_template(marketing_create_in_app_template_request_dto: Models::Shared::MarketingCreateInAppTemplateRequestDto.new(
  messages: [
    Models::Shared::InAppMessages.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: Models::Shared::InAppMessagesMessageType.new(
        source_value: 'Email',
        value: Models::Shared::InAppMessagesValue::EMAIL,
      ),
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_in_app_template_request_dto`                                                                          | [Models::Shared::MarketingCreateInAppTemplateRequestDto](../../models/shared/marketingcreateinapptemplaterequestdto.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `x_account_id`                                                                                                          | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The account identifier                                                                                                  |

### Response

**[T.nilable(Models::Operations::MarketingCreateInAppTemplateResponse)](../../models/operations/marketingcreateinapptemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## ~~create_omni_channel_template~~

Create Omni-Channel Template

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_create_omni_channel_template" method="post" path="/unified/marketing/templates/omni_channel" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.create_omni_channel_template(marketing_create_template_request_dto: Models::Shared::MarketingCreateTemplateRequestDto.new(
  messages: [
    Models::Shared::CreateMessage.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: Models::Shared::MessageType.new(
        source_value: 'Email',
        value: Models::Shared::CreateMessageValue::EMAIL,
      ),
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `marketing_create_template_request_dto`                                                                       | [Models::Shared::MarketingCreateTemplateRequestDto](../../models/shared/marketingcreatetemplaterequestdto.md) | :heavy_check_mark:                                                                                            | N/A                                                                                                           |
| `x_account_id`                                                                                                | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | The account identifier                                                                                        |

### Response

**[T.nilable(Models::Operations::MarketingCreateOmniChannelTemplateResponse)](../../models/operations/marketingcreateomnichanneltemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_push_template

Create Push Template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_create_push_template" method="post" path="/unified/marketing/templates/push" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.create_push_template(marketing_create_push_template_request_dto: Models::Shared::MarketingCreatePushTemplateRequestDto.new(
  messages: [
    Models::Shared::PushMessages.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: Models::Shared::PushMessagesMessageType.new(
        source_value: 'Email',
        value: Models::Shared::PushMessagesValue::EMAIL,
      ),
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_push_template_request_dto`                                                                          | [Models::Shared::MarketingCreatePushTemplateRequestDto](../../models/shared/marketingcreatepushtemplaterequestdto.md) | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `x_account_id`                                                                                                        | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | The account identifier                                                                                                |

### Response

**[T.nilable(Models::Operations::MarketingCreatePushTemplateResponse)](../../models/operations/marketingcreatepushtemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## create_sms_template

Create SMS Template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_create_sms_template" method="post" path="/unified/marketing/templates/sms" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.create_sms_template(marketing_create_sms_template_request_dto: Models::Shared::MarketingCreateSmsTemplateRequestDto.new(
  messages: [
    Models::Shared::SmsMessages.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: Models::Shared::SmsMessagesMessageType.new(
        source_value: 'Email',
        value: Models::Shared::SmsMessagesValue::EMAIL,
      ),
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_sms_template_request_dto`                                                                         | [Models::Shared::MarketingCreateSmsTemplateRequestDto](../../models/shared/marketingcreatesmstemplaterequestdto.md) | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |
| `x_account_id`                                                                                                      | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | The account identifier                                                                                              |

### Response

**[T.nilable(Models::Operations::MarketingCreateSmsTemplateResponse)](../../models/operations/marketingcreatesmstemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_campaign

Get campaign

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_get_campaign" method="get" path="/unified/marketing/campaigns/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingGetCampaignRequest.new(
  fields_: 'id,remote_id,name,created_at,updated_at,description,schedule_type,status,channels,first_sent_at,last_sent_at,tags,messages,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.marketing.get_campaign(request: req)

unless res.campaign_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::MarketingGetCampaignRequest](../../models/operations/marketinggetcampaignrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::MarketingGetCampaignResponse)](../../models/operations/marketinggetcampaignresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_content_block

Get Content Blocks

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_get_content_block" method="get" path="/unified/marketing/content_blocks/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingGetContentBlockRequest.new(
  fields_: 'id,remote_id,name,type,content,status,tags,created_at,updated_at,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.marketing.get_content_block(request: req)

unless res.content_block_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::MarketingGetContentBlockRequest](../../models/operations/marketinggetcontentblockrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::MarketingGetContentBlockResponse)](../../models/operations/marketinggetcontentblockresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_email_template

Get Email Templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_get_email_template" method="get" path="/unified/marketing/templates/email/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingGetEmailTemplateRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.marketing.get_email_template(request: req)

unless res.email_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::MarketingGetEmailTemplateRequest](../../models/operations/marketinggetemailtemplaterequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::MarketingGetEmailTemplateResponse)](../../models/operations/marketinggetemailtemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_in_app_template

Get In-App Template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_get_in_app_template" method="get" path="/unified/marketing/templates/in_app/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingGetInAppTemplateRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.marketing.get_in_app_template(request: req)

unless res.in_app_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::MarketingGetInAppTemplateRequest](../../models/operations/marketinggetinapptemplaterequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::MarketingGetInAppTemplateResponse)](../../models/operations/marketinggetinapptemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## ~~get_omni_channel_template~~

Get Omni-Channel Template

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_get_omni_channel_template" method="get" path="/unified/marketing/templates/omni_channel/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingGetOmniChannelTemplateRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.marketing.get_omni_channel_template(request: req)

unless res.template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::MarketingGetOmniChannelTemplateRequest](../../models/operations/marketinggetomnichanneltemplaterequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::MarketingGetOmniChannelTemplateResponse)](../../models/operations/marketinggetomnichanneltemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_push_template

Get Push Template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_get_push_template" method="get" path="/unified/marketing/templates/push/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingGetPushTemplateRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.marketing.get_push_template(request: req)

unless res.push_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::MarketingGetPushTemplateRequest](../../models/operations/marketinggetpushtemplaterequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::MarketingGetPushTemplateResponse)](../../models/operations/marketinggetpushtemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_sms_template

Get SMS Template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_get_sms_template" method="get" path="/unified/marketing/templates/sms/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingGetSmsTemplateRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  id: '<id>',
  x_account_id: '<id>',
)

res = s.marketing.get_sms_template(request: req)

unless res.sms_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::MarketingGetSmsTemplateRequest](../../models/operations/marketinggetsmstemplaterequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::MarketingGetSmsTemplateResponse)](../../models/operations/marketinggetsmstemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_campaigns

List campaigns

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_list_campaigns" method="get" path="/unified/marketing/campaigns" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingListCampaignsRequest.new(
  fields_: 'id,remote_id,name,created_at,updated_at,description,schedule_type,status,channels,first_sent_at,last_sent_at,tags,messages,unified_custom_fields',
  filter: Models::Operations::MarketingListCampaignsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.marketing.list_campaigns(request: req)

unless res.campaigns_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::MarketingListCampaignsRequest](../../models/operations/marketinglistcampaignsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::MarketingListCampaignsResponse)](../../models/operations/marketinglistcampaignsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_content_blocks

List Content Blocks

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_list_content_blocks" method="get" path="/unified/marketing/content_blocks" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingListContentBlocksRequest.new(
  fields_: 'id,remote_id,name,type,content,status,tags,created_at,updated_at,unified_custom_fields',
  filter: Models::Operations::MarketingListContentBlocksQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.marketing.list_content_blocks(request: req)

unless res.content_blocks_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::MarketingListContentBlocksRequest](../../models/operations/marketinglistcontentblocksrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::MarketingListContentBlocksResponse)](../../models/operations/marketinglistcontentblocksresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_email_templates

List Email Templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_list_email_templates" method="get" path="/unified/marketing/templates/email" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingListEmailTemplatesRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  filter: Models::Operations::MarketingListEmailTemplatesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.marketing.list_email_templates(request: req)

unless res.email_templates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::MarketingListEmailTemplatesRequest](../../models/operations/marketinglistemailtemplatesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::MarketingListEmailTemplatesResponse)](../../models/operations/marketinglistemailtemplatesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_in_app_templates

List In-App Templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_list_in_app_templates" method="get" path="/unified/marketing/templates/in_app" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingListInAppTemplatesRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  filter: nil,
  x_account_id: '<id>',
)

res = s.marketing.list_in_app_templates(request: req)

unless res.in_app_templates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::MarketingListInAppTemplatesRequest](../../models/operations/marketinglistinapptemplatesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::MarketingListInAppTemplatesResponse)](../../models/operations/marketinglistinapptemplatesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## ~~list_omni_channel_templates~~

List Omni-Channel Templates

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_list_omni_channel_templates" method="get" path="/unified/marketing/templates/omni_channel" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingListOmniChannelTemplatesRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  filter: Models::Operations::MarketingListOmniChannelTemplatesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.marketing.list_omni_channel_templates(request: req)

unless res.templates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [Models::Operations::MarketingListOmniChannelTemplatesRequest](../../models/operations/marketinglistomnichanneltemplatesrequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |

### Response

**[T.nilable(Models::Operations::MarketingListOmniChannelTemplatesResponse)](../../models/operations/marketinglistomnichanneltemplatesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_push_templates

List Push Templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_list_push_templates" method="get" path="/unified/marketing/templates/push" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingListPushTemplatesRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  filter: Models::Operations::MarketingListPushTemplatesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.marketing.list_push_templates(request: req)

unless res.push_templates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::MarketingListPushTemplatesRequest](../../models/operations/marketinglistpushtemplatesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::MarketingListPushTemplatesResponse)](../../models/operations/marketinglistpushtemplatesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_sms_templates

List SMS Templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_list_sms_templates" method="get" path="/unified/marketing/templates/sms" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

req = Models::Operations::MarketingListSmsTemplatesRequest.new(
  fields_: 'id,remote_id,name,messages,created_at,updated_at,tags,unified_custom_fields',
  filter: Models::Operations::MarketingListSmsTemplatesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: '<id>',
)

res = s.marketing.list_sms_templates(request: req)

unless res.sms_templates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::MarketingListSmsTemplatesRequest](../../models/operations/marketinglistsmstemplatesrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::MarketingListSmsTemplatesResponse)](../../models/operations/marketinglistsmstemplatesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_content_block

Update Content Block

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_update_content_block" method="patch" path="/unified/marketing/content_blocks/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.update_content_block(marketing_create_content_blocks_request_dto: Models::Shared::MarketingCreateContentBlocksRequestDto.new(
  passthrough: {
    "other_known_names": 'John Doe',
  },
  type: Models::Shared::MarketingCreateContentBlocksRequestDtoType.new(
    source_value: 'text',
    value: Models::Shared::MarketingCreateContentBlocksRequestDtoValue::HTML,
  ),
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_content_blocks_request_dto`                                                                           | [Models::Shared::MarketingCreateContentBlocksRequestDto](../../models/shared/marketingcreatecontentblocksrequestdto.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `id`                                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `x_account_id`                                                                                                          | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The account identifier                                                                                                  |

### Response

**[T.nilable(Models::Operations::MarketingUpdateContentBlockResponse)](../../models/operations/marketingupdatecontentblockresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_email_template

Update Email Templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_update_email_template" method="patch" path="/unified/marketing/templates/email/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.update_email_template(marketing_create_email_template_request_dto: Models::Shared::MarketingCreateEmailTemplateRequestDto.new(
  messages: [
    Models::Shared::EmailMessages.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: Models::Shared::EmailMessagesMessageType.new(
        source_value: 'Email',
        value: Models::Shared::EmailMessagesValue::EMAIL,
      ),
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_email_template_request_dto`                                                                           | [Models::Shared::MarketingCreateEmailTemplateRequestDto](../../models/shared/marketingcreateemailtemplaterequestdto.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `id`                                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `x_account_id`                                                                                                          | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The account identifier                                                                                                  |

### Response

**[T.nilable(Models::Operations::MarketingUpdateEmailTemplateResponse)](../../models/operations/marketingupdateemailtemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_in_app_template

Update In-App Template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_update_in_app_template" method="patch" path="/unified/marketing/templates/in_app/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.update_in_app_template(marketing_create_in_app_template_request_dto: Models::Shared::MarketingCreateInAppTemplateRequestDto.new(
  messages: [
    Models::Shared::InAppMessages.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: Models::Shared::InAppMessagesMessageType.new(
        source_value: 'Email',
        value: Models::Shared::InAppMessagesValue::EMAIL,
      ),
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_in_app_template_request_dto`                                                                          | [Models::Shared::MarketingCreateInAppTemplateRequestDto](../../models/shared/marketingcreateinapptemplaterequestdto.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `id`                                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `x_account_id`                                                                                                          | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The account identifier                                                                                                  |

### Response

**[T.nilable(Models::Operations::MarketingUpdateInAppTemplateResponse)](../../models/operations/marketingupdateinapptemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## ~~update_omni_channel_template~~

Update Omni-Channel Template

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_update_omni_channel_template" method="patch" path="/unified/marketing/templates/omni_channel/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.update_omni_channel_template(marketing_create_template_request_dto: Models::Shared::MarketingCreateTemplateRequestDto.new(
  messages: [
    Models::Shared::CreateMessage.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: Models::Shared::MessageType.new(
        source_value: 'Email',
        value: Models::Shared::CreateMessageValue::EMAIL,
      ),
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `marketing_create_template_request_dto`                                                                       | [Models::Shared::MarketingCreateTemplateRequestDto](../../models/shared/marketingcreatetemplaterequestdto.md) | :heavy_check_mark:                                                                                            | N/A                                                                                                           |
| `id`                                                                                                          | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | N/A                                                                                                           |
| `x_account_id`                                                                                                | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | The account identifier                                                                                        |

### Response

**[T.nilable(Models::Operations::MarketingUpdateOmniChannelTemplateResponse)](../../models/operations/marketingupdateomnichanneltemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_push_template

Update Push Template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_update_push_template" method="patch" path="/unified/marketing/templates/push/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.update_push_template(marketing_create_push_template_request_dto: Models::Shared::MarketingCreatePushTemplateRequestDto.new(
  messages: [
    Models::Shared::PushMessages.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: Models::Shared::PushMessagesMessageType.new(
        source_value: 'Email',
        value: Models::Shared::PushMessagesValue::EMAIL,
      ),
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_push_template_request_dto`                                                                          | [Models::Shared::MarketingCreatePushTemplateRequestDto](../../models/shared/marketingcreatepushtemplaterequestdto.md) | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | N/A                                                                                                                   |
| `x_account_id`                                                                                                        | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | The account identifier                                                                                                |

### Response

**[T.nilable(Models::Operations::MarketingUpdatePushTemplateResponse)](../../models/operations/marketingupdatepushtemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## update_sms_template

Update SMS Template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="marketing_update_sms_template" method="patch" path="/unified/marketing/templates/sms/{id}" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: '',
        username: '',
      ),
    )

res = s.marketing.update_sms_template(marketing_create_sms_template_request_dto: Models::Shared::MarketingCreateSmsTemplateRequestDto.new(
  messages: [
    Models::Shared::SmsMessages.new(
      id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
      message_type: Models::Shared::SmsMessagesMessageType.new(
        source_value: 'Email',
        value: Models::Shared::SmsMessagesValue::EMAIL,
      ),
      remote_id: '8187e5da-dc77-475e-9949-af0f1fa4e4e3',
    ),
  ],
  passthrough: {
    "other_known_names": 'John Doe',
  },
), id: '<id>', x_account_id: '<id>')

unless res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_sms_template_request_dto`                                                                         | [Models::Shared::MarketingCreateSmsTemplateRequestDto](../../models/shared/marketingcreatesmstemplaterequestdto.md) | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | N/A                                                                                                                 |
| `x_account_id`                                                                                                      | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | The account identifier                                                                                              |

### Response

**[T.nilable(Models::Operations::MarketingUpdateSmsTemplateResponse)](../../models/operations/marketingupdatesmstemplateresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::PreconditionFailedResponse  | 412                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |