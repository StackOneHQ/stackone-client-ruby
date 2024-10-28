# Crm

## Overview

### Available Operations

* [create_contact](#create_contact) - Creates a new Contact
* [get_account](#get_account) - Get Account
* [get_contact](#get_contact) - Get Contact
* [get_contact_custom_field_definition](#get_contact_custom_field_definition) - Get Contact Custom Field Definition
* [get_list](#get_list) - Get List
* [list_accounts](#list_accounts) - List Accounts
* [list_contact_custom_field_definitions](#list_contact_custom_field_definitions) - List Contact Custom Field Definitions
* [list_contacts](#list_contacts) - List Contacts
* [list_lists](#list_lists) - Get all Lists
* [update_contact](#update_contact) - Update Contact (early access)

## create_contact

Creates a new Contact

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

    
res = s.crm.create_contact(crm_create_contact_request_dto=::StackOne::Shared::CrmCreateContactRequestDto.new(
  account_ids: [
    "account-123",
    "account-456",
  ],
  company_name: "Apple Inc.",
  custom_fields: [
    ::StackOne::Shared::ContactsCustomFields.new(
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "Training Completion Status",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      remote_value_id: "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
      value: "Completed",
      value_id: "value_456",
    ),
  ],
  deal_ids: [
    "deal-001",
    "deal-002",
  ],
  emails: [
    "steve@apple.com",
  ],
  first_name: "Steve",
  last_name: "Wozniak",
  passthrough: {
    "other_known_names": "John Doe",
  },
  phone_numbers: [
    "123-456-7890",
  ],
), x_account_id="<id>")

if ! res.contact_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `crm_create_contact_request_dto`                                                                    | [::StackOne::Shared::CrmCreateContactRequestDto](../../models/shared/crmcreatecontactrequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(::StackOne::Operations::CrmCreateContactResponse)](../../models/operations/crmcreatecontactresponse.md)**



## get_account

Get Account

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


req = ::StackOne::Operations::CrmGetAccountRequest.new(
  fields_: "id,remote_id,owner_id,remote_owner_id,name,description,industries,annual_revenue,website,addresses,phone_numbers,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.crm.get_account(req)

if ! res.account_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::StackOne::Operations::CrmGetAccountRequest](../../models/operations/crmgetaccountrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(::StackOne::Operations::CrmGetAccountResponse)](../../models/operations/crmgetaccountresponse.md)**



## get_contact

Get Contact

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


req = ::StackOne::Operations::CrmGetContactRequest.new(
  fields_: "id,remote_id,first_name,last_name,company_name,emails,phone_numbers,deal_ids,remote_deal_ids,account_ids,remote_account_ids,custom_fields,created_at,updated_at",
  id: "<id>",
  include: "custom_fields",
  x_account_id: "<id>",
)
    
res = s.crm.get_contact(req)

if ! res.contact_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::StackOne::Operations::CrmGetContactRequest](../../models/operations/crmgetcontactrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(::StackOne::Operations::CrmGetContactResponse)](../../models/operations/crmgetcontactresponse.md)**



## get_contact_custom_field_definition

Get Contact Custom Field Definition

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


req = ::StackOne::Operations::CrmGetContactCustomFieldDefinitionRequest.new(
  fields_: "id,remote_id,name,description,type,options",
  filter: ::StackOne::Operations::CrmGetContactCustomFieldDefinitionQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.crm.get_contact_custom_field_definition(req)

if ! res.custom_field_definition_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                 | [::StackOne::Operations::CrmGetContactCustomFieldDefinitionRequest](../../models/operations/crmgetcontactcustomfielddefinitionrequest.md) | :heavy_check_mark:                                                                                                                        | The request object to use for the request.                                                                                                |

### Response

**[T.nilable(::StackOne::Operations::CrmGetContactCustomFieldDefinitionResponse)](../../models/operations/crmgetcontactcustomfielddefinitionresponse.md)**



## get_list

Get List

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


req = ::StackOne::Operations::CrmGetListRequest.new(
  fields_: "id,remote_id,name,created_at,updated_at,items,type",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.crm.get_list(req)

if ! res.list_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::StackOne::Operations::CrmGetListRequest](../../models/operations/crmgetlistrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(::StackOne::Operations::CrmGetListResponse)](../../models/operations/crmgetlistresponse.md)**



## list_accounts

List Accounts

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


req = ::StackOne::Operations::CrmListAccountsRequest.new(
  fields_: "id,remote_id,owner_id,remote_owner_id,name,description,industries,annual_revenue,website,addresses,phone_numbers,created_at,updated_at",
  filter: ::StackOne::Operations::CrmListAccountsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.crm.list_accounts(req)

if ! res.accounts_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::StackOne::Operations::CrmListAccountsRequest](../../models/operations/crmlistaccountsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(::StackOne::Operations::CrmListAccountsResponse)](../../models/operations/crmlistaccountsresponse.md)**



## list_contact_custom_field_definitions

List Contact Custom Field Definitions

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


req = ::StackOne::Operations::CrmListContactCustomFieldDefinitionsRequest.new(
  fields_: "id,remote_id,name,description,type,options",
  filter: ::StackOne::Operations::CrmListContactCustomFieldDefinitionsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.crm.list_contact_custom_field_definitions(req)

if ! res.custom_field_definitions_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                     | Type                                                                                                                                          | Required                                                                                                                                      | Description                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                     | [::StackOne::Operations::CrmListContactCustomFieldDefinitionsRequest](../../models/operations/crmlistcontactcustomfielddefinitionsrequest.md) | :heavy_check_mark:                                                                                                                            | The request object to use for the request.                                                                                                    |

### Response

**[T.nilable(::StackOne::Operations::CrmListContactCustomFieldDefinitionsResponse)](../../models/operations/crmlistcontactcustomfielddefinitionsresponse.md)**



## list_contacts

List Contacts

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


req = ::StackOne::Operations::CrmListContactsRequest.new(
  fields_: "id,remote_id,first_name,last_name,company_name,emails,phone_numbers,deal_ids,remote_deal_ids,account_ids,remote_account_ids,custom_fields,created_at,updated_at",
  filter: ::StackOne::Operations::CrmListContactsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  include: "custom_fields",
  x_account_id: "<id>",
)
    
res = s.crm.list_contacts(req)

if ! res.contacts_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::StackOne::Operations::CrmListContactsRequest](../../models/operations/crmlistcontactsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(::StackOne::Operations::CrmListContactsResponse)](../../models/operations/crmlistcontactsresponse.md)**



## list_lists

Get all Lists

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


req = ::StackOne::Operations::CrmListListsRequest.new(
  fields_: "id,remote_id,name,created_at,updated_at,items,type",
  filter: ::StackOne::Operations::CrmListListsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.crm.list_lists(req)

if ! res.lists_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::CrmListListsRequest](../../models/operations/crmlistlistsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::StackOne::Operations::CrmListListsResponse)](../../models/operations/crmlistlistsresponse.md)**



## update_contact

Update Contact (early access)

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

    
res = s.crm.update_contact(crm_create_contact_request_dto=::StackOne::Shared::CrmCreateContactRequestDto.new(
  account_ids: [
    "account-123",
    "account-456",
  ],
  company_name: "Apple Inc.",
  custom_fields: [
    ::StackOne::Shared::ContactsCustomFields.new(
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "Training Completion Status",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      remote_value_id: "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
      value: "Completed",
      value_id: "value_456",
    ),
  ],
  deal_ids: [
    "deal-001",
    "deal-002",
  ],
  emails: [
    "steve@apple.com",
  ],
  first_name: "Steve",
  last_name: "Wozniak",
  passthrough: {
    "other_known_names": "John Doe",
  },
  phone_numbers: [
    "123-456-7890",
  ],
), id="<id>", x_account_id="<id>")

if ! res.contact_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `crm_create_contact_request_dto`                                                                    | [::StackOne::Shared::CrmCreateContactRequestDto](../../models/shared/crmcreatecontactrequestdto.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `id`                                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | N/A                                                                                                 |
| `x_account_id`                                                                                      | *::String*                                                                                          | :heavy_check_mark:                                                                                  | The account identifier                                                                              |

### Response

**[T.nilable(::StackOne::Operations::CrmUpdateContactResponse)](../../models/operations/crmupdatecontactresponse.md)**

