# Marketing


### Available Operations

* [create_email_template](#create_email_template) - Create email template
* [create_omni_channel_template](#create_omni_channel_template) - Create omni-channel template
* [create_push_template](#create_push_template) - Create push template
* [get_campaign](#get_campaign) - Get campaign
* [get_email_template](#get_email_template) - Get email template
* [get_omni_channel_template](#get_omni_channel_template) - Get omni-channel template
* [get_push_template](#get_push_template) - Get push template
* [list_campaigns](#list_campaigns) - List campaigns
* [list_email_templates](#list_email_templates) - List email templates
* [list_omni_channel_templates](#list_omni_channel_templates) - List omni-channel templates
* [list_push_templates](#list_push_templates) - List push templates
* [update_email_template](#update_email_template) - Update email template
* [update_omni_channel_template](#update_omni_channel_template) - Update omni-channel template
* [update_push_template](#update_push_template) - Update push template

## create_email_template

Create email template

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingCreateEmailTemplateRequest.new(
  marketing_create_email_template_request_dto=Shared::MarketingCreateEmailTemplateRequestDto.new(
    messages=[
      Shared::EmailMessages.new(
        message_content=Shared::MessageContent.new(
          body="string",
          from="string",
          subject="string",
        ),
        message_type=Shared::MessageType.new(
          source_value="string",
          value=Shared::EmailMessagesValue::APP_PUSH,
        ),
      ),
    ],
    tags=[
      "string",
    ],
  ),
  x_account_id="string",
)
    
res = s.marketing.create_email_template(marketing_create_email_template_request_dto=Shared::MarketingCreateEmailTemplateRequestDto.new(
    messages=[
      Shared::EmailMessages.new(
        message_content=Shared::MessageContent.new(
          body="string",
          from="string",
          subject="string",
        ),
        message_type=Shared::MessageType.new(
          source_value="string",
          value=Shared::EmailMessagesValue::UNMAPPED_VALUE,
        ),
      ),
    ],
    tags=[
      "string",
    ],
  ), x_account_id="string")

if ! res.create_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `marketing_create_email_template_request_dto`                                                                   | [Shared::MarketingCreateEmailTemplateRequestDto](../../models/shared/marketingcreateemailtemplaterequestdto.md) | :heavy_check_mark:                                                                                              | N/A                                                                                                             |
| `x_account_id`                                                                                                  | *String*                                                                                                        | :heavy_check_mark:                                                                                              | The account identifier                                                                                          |


### Response

**[T.nilable(Operations::MarketingCreateEmailTemplateResponse)](../../models/operations/marketingcreateemailtemplateresponse.md)**


## create_omni_channel_template

Create omni-channel template

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingCreateOmniChannelTemplateRequest.new(
  marketing_create_template_request_dto=Shared::MarketingCreateTemplateRequestDto.new(
    messages=[
      Shared::Message.new(
        id="<ID>",
        message_content="string",
        message_type=Shared::MessageMessageType::UNKNOWN,
        name="string",
      ),
    ],
    tags=[
      "string",
    ],
  ),
  x_account_id="string",
)
    
res = s.marketing.create_omni_channel_template(marketing_create_template_request_dto=Shared::MarketingCreateTemplateRequestDto.new(
    messages=[
      Shared::Message.new(
        id="<ID>",
        message_content="string",
        message_type=Shared::MessageMessageType::EMAIL,
        name="string",
      ),
    ],
    tags=[
      "string",
    ],
  ), x_account_id="string")

if ! res.create_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `marketing_create_template_request_dto`                                                               | [Shared::MarketingCreateTemplateRequestDto](../../models/shared/marketingcreatetemplaterequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *String*                                                                                              | :heavy_check_mark:                                                                                    | The account identifier                                                                                |


### Response

**[T.nilable(Operations::MarketingCreateOmniChannelTemplateResponse)](../../models/operations/marketingcreateomnichanneltemplateresponse.md)**


## create_push_template

Create push template

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingCreatePushTemplateRequest.new(
  marketing_create_push_template_request_dto=Shared::MarketingCreatePushTemplateRequestDto.new(
    messages=[
      Shared::PushMessages.new(
        message_content=Shared::PushMessagesMessageContent.new(
          body="string",
        ),
        message_type=Shared::PushMessagesMessageType.new(
          source_value="string",
          value=Shared::PushMessagesValue::UNMAPPED_VALUE,
        ),
      ),
    ],
    tags=[
      "string",
    ],
  ),
  x_account_id="string",
)
    
res = s.marketing.create_push_template(marketing_create_push_template_request_dto=Shared::MarketingCreatePushTemplateRequestDto.new(
    messages=[
      Shared::PushMessages.new(
        message_content=Shared::PushMessagesMessageContent.new(
          body="string",
        ),
        message_type=Shared::PushMessagesMessageType.new(
          source_value="string",
          value=Shared::PushMessagesValue::UNMAPPED_VALUE,
        ),
      ),
    ],
    tags=[
      "string",
    ],
  ), x_account_id="string")

if ! res.create_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `marketing_create_push_template_request_dto`                                                                  | [Shared::MarketingCreatePushTemplateRequestDto](../../models/shared/marketingcreatepushtemplaterequestdto.md) | :heavy_check_mark:                                                                                            | N/A                                                                                                           |
| `x_account_id`                                                                                                | *String*                                                                                                      | :heavy_check_mark:                                                                                            | The account identifier                                                                                        |


### Response

**[T.nilable(Operations::MarketingCreatePushTemplateResponse)](../../models/operations/marketingcreatepushtemplateresponse.md)**


## get_campaign

Get campaign

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingGetCampaignRequest.new(
  id="<ID>",
  proxy={
    "Computer": "string",
  },
  x_account_id="string",
)
    
res = s.marketing.get_campaign(req)

if ! res.campaign_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Operations::MarketingGetCampaignRequest](../../models/operations/marketinggetcampaignrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(Operations::MarketingGetCampaignResponse)](../../models/operations/marketinggetcampaignresponse.md)**


## get_email_template

Get email template

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingGetEmailTemplateRequest.new(
  id="<ID>",
  proxy={
    "Regional": "string",
  },
  x_account_id="string",
)
    
res = s.marketing.get_email_template(req)

if ! res.template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Operations::MarketingGetEmailTemplateRequest](../../models/operations/marketinggetemailtemplaterequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(Operations::MarketingGetEmailTemplateResponse)](../../models/operations/marketinggetemailtemplateresponse.md)**


## get_omni_channel_template

Get omni-channel template

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingGetOmniChannelTemplateRequest.new(
  id="<ID>",
  proxy={
    "Southwest": "string",
  },
  x_account_id="string",
)
    
res = s.marketing.get_omni_channel_template(req)

if ! res.template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Operations::MarketingGetOmniChannelTemplateRequest](../../models/operations/marketinggetomnichanneltemplaterequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(Operations::MarketingGetOmniChannelTemplateResponse)](../../models/operations/marketinggetomnichanneltemplateresponse.md)**


## get_push_template

Get push template

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingGetPushTemplateRequest.new(
  id="<ID>",
  proxy={
    "withdrawal": "string",
  },
  x_account_id="string",
)
    
res = s.marketing.get_push_template(req)

if ! res.template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Operations::MarketingGetPushTemplateRequest](../../models/operations/marketinggetpushtemplaterequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |


### Response

**[T.nilable(Operations::MarketingGetPushTemplateResponse)](../../models/operations/marketinggetpushtemplateresponse.md)**


## list_campaigns

List campaigns

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingListCampaignsRequest.new(
  proxy={
    "West": "string",
  },
  x_account_id="string",
)
    
res = s.marketing.list_campaigns(req)

if ! res.campaigns_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::MarketingListCampaignsRequest](../../models/operations/marketinglistcampaignsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::MarketingListCampaignsResponse)](../../models/operations/marketinglistcampaignsresponse.md)**


## list_email_templates

List email templates

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingListEmailTemplatesRequest.new(
  proxy={
    "deposit": "string",
  },
  x_account_id="string",
)
    
res = s.marketing.list_email_templates(req)

if ! res.templates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Operations::MarketingListEmailTemplatesRequest](../../models/operations/marketinglistemailtemplatesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |


### Response

**[T.nilable(Operations::MarketingListEmailTemplatesResponse)](../../models/operations/marketinglistemailtemplatesresponse.md)**


## list_omni_channel_templates

List omni-channel templates

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingListOmniChannelTemplatesRequest.new(
  proxy={
    "Shoes": "string",
  },
  x_account_id="string",
)
    
res = s.marketing.list_omni_channel_templates(req)

if ! res.templates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Operations::MarketingListOmniChannelTemplatesRequest](../../models/operations/marketinglistomnichanneltemplatesrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |


### Response

**[T.nilable(Operations::MarketingListOmniChannelTemplatesResponse)](../../models/operations/marketinglistomnichanneltemplatesresponse.md)**


## list_push_templates

List push templates

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingListPushTemplatesRequest.new(
  proxy={
    "considering": "string",
  },
  x_account_id="string",
)
    
res = s.marketing.list_push_templates(req)

if ! res.templates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Operations::MarketingListPushTemplatesRequest](../../models/operations/marketinglistpushtemplatesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(Operations::MarketingListPushTemplatesResponse)](../../models/operations/marketinglistpushtemplatesresponse.md)**


## update_email_template

Update email template

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingUpdateEmailTemplateRequest.new(
  marketing_create_email_template_request_dto=Shared::MarketingCreateEmailTemplateRequestDto.new(
    messages=[
      Shared::EmailMessages.new(
        message_content=Shared::MessageContent.new(
          body="string",
          from="string",
          subject="string",
        ),
        message_type=Shared::MessageType.new(
          source_value="string",
          value=Shared::EmailMessagesValue::WEB_PUSH,
        ),
      ),
    ],
    tags=[
      "string",
    ],
  ),
  id="<ID>",
  x_account_id="string",
)
    
res = s.marketing.update_email_template(marketing_create_email_template_request_dto=Shared::MarketingCreateEmailTemplateRequestDto.new(
    messages=[
      Shared::EmailMessages.new(
        message_content=Shared::MessageContent.new(
          body="string",
          from="string",
          subject="string",
        ),
        message_type=Shared::MessageType.new(
          source_value="string",
          value=Shared::EmailMessagesValue::IOS_PUSH,
        ),
      ),
    ],
    tags=[
      "string",
    ],
  ), id="string", x_account_id="string")

if ! res.create_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `marketing_create_email_template_request_dto`                                                                   | [Shared::MarketingCreateEmailTemplateRequestDto](../../models/shared/marketingcreateemailtemplaterequestdto.md) | :heavy_check_mark:                                                                                              | N/A                                                                                                             |
| `id`                                                                                                            | *String*                                                                                                        | :heavy_check_mark:                                                                                              | N/A                                                                                                             |
| `x_account_id`                                                                                                  | *String*                                                                                                        | :heavy_check_mark:                                                                                              | The account identifier                                                                                          |


### Response

**[T.nilable(Operations::MarketingUpdateEmailTemplateResponse)](../../models/operations/marketingupdateemailtemplateresponse.md)**


## update_omni_channel_template

Update omni-channel template

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingUpdateOmniChannelTemplateRequest.new(
  marketing_create_template_request_dto=Shared::MarketingCreateTemplateRequestDto.new(
    messages=[
      Shared::Message.new(
        id="<ID>",
        message_content="string",
        message_type=Shared::MessageMessageType::EMAIL,
        name="string",
      ),
    ],
    tags=[
      "string",
    ],
  ),
  id="<ID>",
  x_account_id="string",
)
    
res = s.marketing.update_omni_channel_template(marketing_create_template_request_dto=Shared::MarketingCreateTemplateRequestDto.new(
    messages=[
      Shared::Message.new(
        id="<ID>",
        message_content="string",
        message_type=Shared::MessageMessageType::WEB_PUSH,
        name="string",
      ),
    ],
    tags=[
      "string",
    ],
  ), id="string", x_account_id="string")

if ! res.create_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `marketing_create_template_request_dto`                                                               | [Shared::MarketingCreateTemplateRequestDto](../../models/shared/marketingcreatetemplaterequestdto.md) | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `id`                                                                                                  | *String*                                                                                              | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `x_account_id`                                                                                        | *String*                                                                                              | :heavy_check_mark:                                                                                    | The account identifier                                                                                |


### Response

**[T.nilable(Operations::MarketingUpdateOmniChannelTemplateResponse)](../../models/operations/marketingupdateomnichanneltemplateresponse.md)**


## update_push_template

Update push template

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::MarketingUpdatePushTemplateRequest.new(
  marketing_create_push_template_request_dto=Shared::MarketingCreatePushTemplateRequestDto.new(
    messages=[
      Shared::PushMessages.new(
        message_content=Shared::PushMessagesMessageContent.new(
          body="string",
        ),
        message_type=Shared::PushMessagesMessageType.new(
          source_value="string",
          value=Shared::PushMessagesValue::UNKNOWN,
        ),
      ),
    ],
    tags=[
      "string",
    ],
  ),
  id="<ID>",
  x_account_id="string",
)
    
res = s.marketing.update_push_template(marketing_create_push_template_request_dto=Shared::MarketingCreatePushTemplateRequestDto.new(
    messages=[
      Shared::PushMessages.new(
        message_content=Shared::PushMessagesMessageContent.new(
          body="string",
        ),
        message_type=Shared::PushMessagesMessageType.new(
          source_value="string",
          value=Shared::PushMessagesValue::UNKNOWN,
        ),
      ),
    ],
    tags=[
      "string",
    ],
  ), id="string", x_account_id="string")

if ! res.create_template_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `marketing_create_push_template_request_dto`                                                                  | [Shared::MarketingCreatePushTemplateRequestDto](../../models/shared/marketingcreatepushtemplaterequestdto.md) | :heavy_check_mark:                                                                                            | N/A                                                                                                           |
| `id`                                                                                                          | *String*                                                                                                      | :heavy_check_mark:                                                                                            | N/A                                                                                                           |
| `x_account_id`                                                                                                | *String*                                                                                                      | :heavy_check_mark:                                                                                            | The account identifier                                                                                        |


### Response

**[T.nilable(Operations::MarketingUpdatePushTemplateResponse)](../../models/operations/marketingupdatepushtemplateresponse.md)**

