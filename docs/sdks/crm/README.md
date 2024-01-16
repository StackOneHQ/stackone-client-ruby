# Crm


### Available Operations

* [create_contact](#create_contact) - Creates a new Contact
* [get_account](#get_account) - Get Account
* [get_contact](#get_contact) - Get Contact
* [get_list](#get_list) - Get List
* [list_accounts](#list_accounts) - List Accounts
* [list_contacts](#list_contacts) - List Contacts
* [list_lists](#list_lists) - Get all Lists
* [update_contact](#update_contact) - Update Contact (early access)

## create_contact

Creates a new Contact

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::CrmCreateContactRequest.new(
  crm_create_contact_request_dto=Shared::CrmCreateContactRequestDto.new(
    account_ids=[
      "string",
    ],
    company_name="Apple Inc.",
    deal_ids=[
      "string",
    ],
    emails=[
      "string",
    ],
    first_name="Steve",
    last_name="Wozniak",
    phone_numbers=[
      "string",
    ],
  ),
  x_account_id="string",
)
    
res = s.crm.create_contact(crm_create_contact_request_dto=Shared::CrmCreateContactRequestDto.new(
    account_ids=[
      "string",
    ],
    company_name="Apple Inc.",
    deal_ids=[
      "string",
    ],
    emails=[
      "string",
    ],
    first_name="Steve",
    last_name="Wozniak",
    phone_numbers=[
      "string",
    ],
  ), x_account_id="string")

if ! res.contact_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `crm_create_contact_request_dto`                                                        | [Shared::CrmCreateContactRequestDto](../../models/shared/crmcreatecontactrequestdto.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `x_account_id`                                                                          | *String*                                                                                | :heavy_check_mark:                                                                      | The account identifier                                                                  |


### Response

**[T.nilable(Operations::CrmCreateContactResponse)](../../models/operations/crmcreatecontactresponse.md)**


## get_account

Get Account

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::CrmGetAccountRequest.new(
  id="<ID>",
  proxy={
    "Bennie": "string",
  },
  x_account_id="string",
)
    
res = s.crm.get_account(req)

if ! res.account_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Operations::CrmGetAccountRequest](../../models/operations/crmgetaccountrequest.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |


### Response

**[T.nilable(Operations::CrmGetAccountResponse)](../../models/operations/crmgetaccountresponse.md)**


## get_contact

Get Contact

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::CrmGetContactRequest.new(
  id="<ID>",
  proxy={
    "whereas": "string",
  },
  x_account_id="string",
)
    
res = s.crm.get_contact(req)

if ! res.contact_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Operations::CrmGetContactRequest](../../models/operations/crmgetcontactrequest.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |


### Response

**[T.nilable(Operations::CrmGetContactResponse)](../../models/operations/crmgetcontactresponse.md)**


## get_list

Get List

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::CrmGetListRequest.new(
  id="<ID>",
  proxy={
    "Investment": "string",
  },
  x_account_id="string",
)
    
res = s.crm.get_list(req)

if ! res.list_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `request`                                                                     | [Operations::CrmGetListRequest](../../models/operations/crmgetlistrequest.md) | :heavy_check_mark:                                                            | The request object to use for the request.                                    |


### Response

**[T.nilable(Operations::CrmGetListResponse)](../../models/operations/crmgetlistresponse.md)**


## list_accounts

List Accounts

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::CrmListAccountsRequest.new(
  proxy={
    "Iron": "string",
  },
  x_account_id="string",
)
    
res = s.crm.list_accounts(req)

if ! res.accounts_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::CrmListAccountsRequest](../../models/operations/crmlistaccountsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::CrmListAccountsResponse)](../../models/operations/crmlistaccountsresponse.md)**


## list_contacts

List Contacts

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::CrmListContactsRequest.new(
  proxy={
    "PNG": "string",
  },
  x_account_id="string",
)
    
res = s.crm.list_contacts(req)

if ! res.contacts_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::CrmListContactsRequest](../../models/operations/crmlistcontactsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::CrmListContactsResponse)](../../models/operations/crmlistcontactsresponse.md)**


## list_lists

Get all Lists

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::CrmListListsRequest.new(
  proxy={
    "hacking": "string",
  },
  x_account_id="string",
)
    
res = s.crm.list_lists(req)

if ! res.lists_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Operations::CrmListListsRequest](../../models/operations/crmlistlistsrequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |


### Response

**[T.nilable(Operations::CrmListListsResponse)](../../models/operations/crmlistlistsresponse.md)**


## update_contact

Update Contact (early access)

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::CrmUpdateContactRequest.new(
  crm_create_contact_request_dto=Shared::CrmCreateContactRequestDto.new(
    account_ids=[
      "string",
    ],
    company_name="Apple Inc.",
    deal_ids=[
      "string",
    ],
    emails=[
      "string",
    ],
    first_name="Steve",
    last_name="Wozniak",
    phone_numbers=[
      "string",
    ],
  ),
  id="<ID>",
  x_account_id="string",
)
    
res = s.crm.update_contact(crm_create_contact_request_dto=Shared::CrmCreateContactRequestDto.new(
    account_ids=[
      "string",
    ],
    company_name="Apple Inc.",
    deal_ids=[
      "string",
    ],
    emails=[
      "string",
    ],
    first_name="Steve",
    last_name="Wozniak",
    phone_numbers=[
      "string",
    ],
  ), id="string", x_account_id="string")

if ! res.contact_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `crm_create_contact_request_dto`                                                        | [Shared::CrmCreateContactRequestDto](../../models/shared/crmcreatecontactrequestdto.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `id`                                                                                    | *String*                                                                                | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `x_account_id`                                                                          | *String*                                                                                | :heavy_check_mark:                                                                      | The account identifier                                                                  |


### Response

**[T.nilable(Operations::CrmUpdateContactResponse)](../../models/operations/crmupdatecontactresponse.md)**

