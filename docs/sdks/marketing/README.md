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
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.marketing.create_email_template(marketing_create_email_template_request_dto=::StackOne::Shared::MarketingCreateEmailTemplateRequestDto.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ), x_account_id="<value>")

if ! res.create_template_result.nil?
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


## create_omni_channel_template

Create omni-channel template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.marketing.create_omni_channel_template(marketing_create_template_request_dto=::StackOne::Shared::MarketingCreateTemplateRequestDto.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ), x_account_id="<value>")

if ! res.create_template_result.nil?
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

Create push template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.marketing.create_push_template(marketing_create_push_template_request_dto=::StackOne::Shared::MarketingCreatePushTemplateRequestDto.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ), x_account_id="<value>")

if ! res.create_template_result.nil?
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


## get_campaign

Get campaign

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::MarketingGetCampaignRequest.new(
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


## get_email_template

Get email template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::MarketingGetEmailTemplateRequest.new(
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


## get_omni_channel_template

Get omni-channel template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::MarketingGetOmniChannelTemplateRequest.new(
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

Get push template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::MarketingGetPushTemplateRequest.new(
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


## list_campaigns

List campaigns

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::MarketingListCampaignsRequest.new(
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


## list_email_templates

List email templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::MarketingListEmailTemplatesRequest.new(
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


## list_omni_channel_templates

List omni-channel templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::MarketingListOmniChannelTemplatesRequest.new(
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

List push templates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::MarketingListPushTemplatesRequest.new(
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


## update_email_template

Update email template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.marketing.update_email_template(marketing_create_email_template_request_dto=::StackOne::Shared::MarketingCreateEmailTemplateRequestDto.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ), id="<value>", x_account_id="<value>")

if ! res.create_template_result.nil?
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


## update_omni_channel_template

Update omni-channel template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.marketing.update_omni_channel_template(marketing_create_template_request_dto=::StackOne::Shared::MarketingCreateTemplateRequestDto.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ), id="<value>", x_account_id="<value>")

if ! res.create_template_result.nil?
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

Update push template

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.marketing.update_push_template(marketing_create_push_template_request_dto=::StackOne::Shared::MarketingCreatePushTemplateRequestDto.new(
    id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
  ), id="<value>", x_account_id="<value>")

if ! res.create_template_result.nil?
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

