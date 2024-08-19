# Marketing


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

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.create_content_block(marketing_create_content_blocks_request_dto=::StackOne::Shared::MarketingCreateContentBlocksRequestDto.new(
    passthrough: {
      "Bike": "<value>",
    },
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_content_blocks_request_dto`                                                                               | [::StackOne::Shared::MarketingCreateContentBlocksRequestDto](../../models/shared/marketingcreatecontentblocksrequestdto.md) | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `x_account_id`                                                                                                              | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | The account identifier                                                                                                      |


### Response

**[T.nilable(::StackOne::Operations::MarketingCreateContentBlockResponse)](../../models/operations/marketingcreatecontentblockresponse.md)**


## create_email_template

Create Email Templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.create_email_template(marketing_create_email_template_request_dto=::StackOne::Shared::MarketingCreateEmailTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::EmailMessages.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::MessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "Non": "<value>",
    },
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_email_template_request_dto`                                                                               | [::StackOne::Shared::MarketingCreateEmailTemplateRequestDto](../../models/shared/marketingcreateemailtemplaterequestdto.md) | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `x_account_id`                                                                                                              | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | The account identifier                                                                                                      |


### Response

**[T.nilable(::StackOne::Operations::MarketingCreateEmailTemplateResponse)](../../models/operations/marketingcreateemailtemplateresponse.md)**


## create_in_app_template

Create In-App Template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.create_in_app_template(marketing_create_in_app_template_request_dto=::StackOne::Shared::MarketingCreateInAppTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::InAppMessages.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::InAppMessagesMessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "Qatar": "<value>",
    },
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_in_app_template_request_dto`                                                                              | [::StackOne::Shared::MarketingCreateInAppTemplateRequestDto](../../models/shared/marketingcreateinapptemplaterequestdto.md) | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `x_account_id`                                                                                                              | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | The account identifier                                                                                                      |


### Response

**[T.nilable(::StackOne::Operations::MarketingCreateInAppTemplateResponse)](../../models/operations/marketingcreateinapptemplateresponse.md)**


## ~~create_omni_channel_template~~

Create Omni-Channel Template

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.create_omni_channel_template(marketing_create_template_request_dto=::StackOne::Shared::MarketingCreateTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::Message.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::MessageMessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "Cargo": "<value>",
    },
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `marketing_create_template_request_dto`                                                                           | [::StackOne::Shared::MarketingCreateTemplateRequestDto](../../models/shared/marketingcreatetemplaterequestdto.md) | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `x_account_id`                                                                                                    | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | The account identifier                                                                                            |


### Response

**[T.nilable(::StackOne::Operations::MarketingCreateOmniChannelTemplateResponse)](../../models/operations/marketingcreateomnichanneltemplateresponse.md)**


## create_push_template

Create Push Template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.create_push_template(marketing_create_push_template_request_dto=::StackOne::Shared::MarketingCreatePushTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::PushMessages.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::PushMessagesMessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "turban": "<value>",
    },
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_push_template_request_dto`                                                                              | [::StackOne::Shared::MarketingCreatePushTemplateRequestDto](../../models/shared/marketingcreatepushtemplaterequestdto.md) | :heavy_check_mark:                                                                                                        | N/A                                                                                                                       |
| `x_account_id`                                                                                                            | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | The account identifier                                                                                                    |


### Response

**[T.nilable(::StackOne::Operations::MarketingCreatePushTemplateResponse)](../../models/operations/marketingcreatepushtemplateresponse.md)**


## create_sms_template

Create SMS Template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.create_sms_template(marketing_create_sms_template_request_dto=::StackOne::Shared::MarketingCreateSmsTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::SmsMessages.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::SmsMessagesMessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "City": "<value>",
    },
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_sms_template_request_dto`                                                                             | [::StackOne::Shared::MarketingCreateSmsTemplateRequestDto](../../models/shared/marketingcreatesmstemplaterequestdto.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `x_account_id`                                                                                                          | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The account identifier                                                                                                  |


### Response

**[T.nilable(::StackOne::Operations::MarketingCreateSmsTemplateResponse)](../../models/operations/marketingcreatesmstemplateresponse.md)**


## get_campaign

Get campaign

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingGetCampaignRequest.new(
  fields_: "id,remote_id,name,created_at,updated_at,description,schedule_type,status,channels,first_sent_at,last_sent_at,tags,messages",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.marketing.get_campaign(req)

if ! res.campaign_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::StackOne::Operations::MarketingGetCampaignRequest](../../models/operations/marketinggetcampaignrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::StackOne::Operations::MarketingGetCampaignResponse)](../../models/operations/marketinggetcampaignresponse.md)**


## get_content_block

Get Content Blocks

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingGetContentBlockRequest.new(
  fields_: "id,remote_id,name,type,content,status,tags,created_at,updated_at",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.marketing.get_content_block(req)

if ! res.content_blocks_paginated.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::StackOne::Operations::MarketingGetContentBlockRequest](../../models/operations/marketinggetcontentblockrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::StackOne::Operations::MarketingGetContentBlockResponse)](../../models/operations/marketinggetcontentblockresponse.md)**


## get_email_template

Get Email Templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingGetEmailTemplateRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.marketing.get_email_template(req)

if ! res.template_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::StackOne::Operations::MarketingGetEmailTemplateRequest](../../models/operations/marketinggetemailtemplaterequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(::StackOne::Operations::MarketingGetEmailTemplateResponse)](../../models/operations/marketinggetemailtemplateresponse.md)**


## get_in_app_template

Get In-App Template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingGetInAppTemplateRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.marketing.get_in_app_template(req)

if ! res.template_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::StackOne::Operations::MarketingGetInAppTemplateRequest](../../models/operations/marketinggetinapptemplaterequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(::StackOne::Operations::MarketingGetInAppTemplateResponse)](../../models/operations/marketinggetinapptemplateresponse.md)**


## ~~get_omni_channel_template~~

Get Omni-Channel Template

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingGetOmniChannelTemplateRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.marketing.get_omni_channel_template(req)

if ! res.template_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [::StackOne::Operations::MarketingGetOmniChannelTemplateRequest](../../models/operations/marketinggetomnichanneltemplaterequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |


### Response

**[T.nilable(::StackOne::Operations::MarketingGetOmniChannelTemplateResponse)](../../models/operations/marketinggetomnichanneltemplateresponse.md)**


## get_push_template

Get Push Template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingGetPushTemplateRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.marketing.get_push_template(req)

if ! res.template_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::StackOne::Operations::MarketingGetPushTemplateRequest](../../models/operations/marketinggetpushtemplaterequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::StackOne::Operations::MarketingGetPushTemplateResponse)](../../models/operations/marketinggetpushtemplateresponse.md)**


## get_sms_template

Get SMS Template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingGetSmsTemplateRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.marketing.get_sms_template(req)

if ! res.template_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::StackOne::Operations::MarketingGetSmsTemplateRequest](../../models/operations/marketinggetsmstemplaterequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |


### Response

**[T.nilable(::StackOne::Operations::MarketingGetSmsTemplateResponse)](../../models/operations/marketinggetsmstemplateresponse.md)**


## list_campaigns

List campaigns

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingListCampaignsRequest.new(
  fields_: "id,remote_id,name,created_at,updated_at,description,schedule_type,status,channels,first_sent_at,last_sent_at,tags,messages",
  filter: ::StackOne::Operations::MarketingListCampaignsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.marketing.list_campaigns(req)

if ! res.campaigns_paginated.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::StackOne::Operations::MarketingListCampaignsRequest](../../models/operations/marketinglistcampaignsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::StackOne::Operations::MarketingListCampaignsResponse)](../../models/operations/marketinglistcampaignsresponse.md)**


## list_content_blocks

List Content Blocks

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingListContentBlocksRequest.new(
  fields_: "id,remote_id,name,type,content,status,tags,created_at,updated_at",
  filter: ::StackOne::Operations::MarketingListContentBlocksQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.marketing.list_content_blocks(req)

if ! res.content_blocks_paginated.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::StackOne::Operations::MarketingListContentBlocksRequest](../../models/operations/marketinglistcontentblocksrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |


### Response

**[T.nilable(::StackOne::Operations::MarketingListContentBlocksResponse)](../../models/operations/marketinglistcontentblocksresponse.md)**


## list_email_templates

List Email Templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingListEmailTemplatesRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  filter: ::StackOne::Operations::MarketingListEmailTemplatesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.marketing.list_email_templates(req)

if ! res.templates_paginated.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::StackOne::Operations::MarketingListEmailTemplatesRequest](../../models/operations/marketinglistemailtemplatesrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |


### Response

**[T.nilable(::StackOne::Operations::MarketingListEmailTemplatesResponse)](../../models/operations/marketinglistemailtemplatesresponse.md)**


## list_in_app_templates

List In-App Templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingListInAppTemplatesRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  filter: ::StackOne::Operations::MarketingListInAppTemplatesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.marketing.list_in_app_templates(req)

if ! res.templates_paginated.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::StackOne::Operations::MarketingListInAppTemplatesRequest](../../models/operations/marketinglistinapptemplatesrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |


### Response

**[T.nilable(::StackOne::Operations::MarketingListInAppTemplatesResponse)](../../models/operations/marketinglistinapptemplatesresponse.md)**


## ~~list_omni_channel_templates~~

List Omni-Channel Templates

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingListOmniChannelTemplatesRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  filter: ::StackOne::Operations::MarketingListOmniChannelTemplatesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.marketing.list_omni_channel_templates(req)

if ! res.templates_paginated.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                               | Type                                                                                                                                    | Required                                                                                                                                | Description                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                               | [::StackOne::Operations::MarketingListOmniChannelTemplatesRequest](../../models/operations/marketinglistomnichanneltemplatesrequest.md) | :heavy_check_mark:                                                                                                                      | The request object to use for the request.                                                                                              |


### Response

**[T.nilable(::StackOne::Operations::MarketingListOmniChannelTemplatesResponse)](../../models/operations/marketinglistomnichanneltemplatesresponse.md)**


## list_push_templates

List Push Templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingListPushTemplatesRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  filter: ::StackOne::Operations::MarketingListPushTemplatesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.marketing.list_push_templates(req)

if ! res.templates_paginated.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::StackOne::Operations::MarketingListPushTemplatesRequest](../../models/operations/marketinglistpushtemplatesrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |


### Response

**[T.nilable(::StackOne::Operations::MarketingListPushTemplatesResponse)](../../models/operations/marketinglistpushtemplatesresponse.md)**


## list_sms_templates

List SMS Templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)


req = ::StackOne::Operations::MarketingListSmsTemplatesRequest.new(
  fields_: "id,remote_id,name,messages,created_at,updated_at,tags",
  filter: ::StackOne::Operations::MarketingListSmsTemplatesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.marketing.list_sms_templates(req)

if ! res.templates_paginated.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::StackOne::Operations::MarketingListSmsTemplatesRequest](../../models/operations/marketinglistsmstemplatesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(::StackOne::Operations::MarketingListSmsTemplatesResponse)](../../models/operations/marketinglistsmstemplatesresponse.md)**


## update_content_block

Update Content Block

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.update_content_block(marketing_create_content_blocks_request_dto=::StackOne::Shared::MarketingCreateContentBlocksRequestDto.new(
    passthrough: {
      "Pickup": "<value>",
    },
  ), id="<value>", x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_content_blocks_request_dto`                                                                               | [::StackOne::Shared::MarketingCreateContentBlocksRequestDto](../../models/shared/marketingcreatecontentblocksrequestdto.md) | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `x_account_id`                                                                                                              | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | The account identifier                                                                                                      |


### Response

**[T.nilable(::StackOne::Operations::MarketingUpdateContentBlockResponse)](../../models/operations/marketingupdatecontentblockresponse.md)**


## update_email_template

Update Email Templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.update_email_template(marketing_create_email_template_request_dto=::StackOne::Shared::MarketingCreateEmailTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::EmailMessages.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::MessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "strategize": "<value>",
    },
  ), id="<value>", x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_email_template_request_dto`                                                                               | [::StackOne::Shared::MarketingCreateEmailTemplateRequestDto](../../models/shared/marketingcreateemailtemplaterequestdto.md) | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `x_account_id`                                                                                                              | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | The account identifier                                                                                                      |


### Response

**[T.nilable(::StackOne::Operations::MarketingUpdateEmailTemplateResponse)](../../models/operations/marketingupdateemailtemplateresponse.md)**


## update_in_app_template

Update In-App Template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.update_in_app_template(marketing_create_in_app_template_request_dto=::StackOne::Shared::MarketingCreateInAppTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::InAppMessages.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::InAppMessagesMessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "Operative": "<value>",
    },
  ), id="<value>", x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_in_app_template_request_dto`                                                                              | [::StackOne::Shared::MarketingCreateInAppTemplateRequestDto](../../models/shared/marketingcreateinapptemplaterequestdto.md) | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | N/A                                                                                                                         |
| `x_account_id`                                                                                                              | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | The account identifier                                                                                                      |


### Response

**[T.nilable(::StackOne::Operations::MarketingUpdateInAppTemplateResponse)](../../models/operations/marketingupdateinapptemplateresponse.md)**


## ~~update_omni_channel_template~~

Update Omni-Channel Template

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.update_omni_channel_template(marketing_create_template_request_dto=::StackOne::Shared::MarketingCreateTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::Message.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::MessageMessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "Edina": "<value>",
    },
  ), id="<value>", x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `marketing_create_template_request_dto`                                                                           | [::StackOne::Shared::MarketingCreateTemplateRequestDto](../../models/shared/marketingcreatetemplaterequestdto.md) | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `x_account_id`                                                                                                    | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | The account identifier                                                                                            |


### Response

**[T.nilable(::StackOne::Operations::MarketingUpdateOmniChannelTemplateResponse)](../../models/operations/marketingupdateomnichanneltemplateresponse.md)**


## update_push_template

Update Push Template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.update_push_template(marketing_create_push_template_request_dto=::StackOne::Shared::MarketingCreatePushTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::PushMessages.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::PushMessagesMessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "tightly": "<value>",
    },
  ), id="<value>", x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_push_template_request_dto`                                                                              | [::StackOne::Shared::MarketingCreatePushTemplateRequestDto](../../models/shared/marketingcreatepushtemplaterequestdto.md) | :heavy_check_mark:                                                                                                        | N/A                                                                                                                       |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | N/A                                                                                                                       |
| `x_account_id`                                                                                                            | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | The account identifier                                                                                                    |


### Response

**[T.nilable(::StackOne::Operations::MarketingUpdatePushTemplateResponse)](../../models/operations/marketingupdatepushtemplateresponse.md)**


## update_sms_template

Update SMS Template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "",
    username: "",
  )
)

    
res = s.marketing.update_sms_template(marketing_create_sms_template_request_dto=::StackOne::Shared::MarketingCreateSmsTemplateRequestDto.new(
    messages: [
      ::StackOne::Shared::SmsMessages.new(
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        message_type: ::StackOne::Shared::SmsMessagesMessageType.new(
          source_value: "Email",
        ),
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    passthrough: {
      "Bronze": "<value>",
    },
  ), id="<value>", x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `marketing_create_sms_template_request_dto`                                                                             | [::StackOne::Shared::MarketingCreateSmsTemplateRequestDto](../../models/shared/marketingcreatesmstemplaterequestdto.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `id`                                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `x_account_id`                                                                                                          | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The account identifier                                                                                                  |


### Response

**[T.nilable(::StackOne::Operations::MarketingUpdateSmsTemplateResponse)](../../models/operations/marketingupdatesmstemplateresponse.md)**

