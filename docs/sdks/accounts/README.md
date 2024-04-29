# Accounts


### Available Operations

* [delete_account](#delete_account) - Delete Account
* [get_account](#get_account) - Get Account
* [get_account_meta_info](#get_account_meta_info) - Get meta information of the account
* [list_linked_accounts](#list_linked_accounts) - List Accounts
* [update_account](#update_account) - Update Account

## delete_account

Delete Account

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.accounts.delete_account(id="<value>")

if ! res.linked_account.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::StackOne::Operations::StackoneDeleteAccountResponse)](../../models/operations/stackonedeleteaccountresponse.md)**


## get_account

Get Account

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.accounts.get_account(id="<value>")

if ! res.linked_account.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::StackOne::Operations::StackoneGetAccountResponse)](../../models/operations/stackonegetaccountresponse.md)**


## get_account_meta_info

Get meta information of the account

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.accounts.get_account_meta_info(id="<value>")

if ! res.linked_account_meta.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(::StackOne::Operations::StackoneGetAccountMetaInfoResponse)](../../models/operations/stackonegetaccountmetainforesponse.md)**


## list_linked_accounts

List Accounts

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::StackoneListLinkedAccountsRequest.new()
    
res = s.accounts.list_linked_accounts(req)

if ! res.linked_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::StackOne::Operations::StackoneListLinkedAccountsRequest](../../models/operations/stackonelistlinkedaccountsrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |


### Response

**[T.nilable(::StackOne::Operations::StackoneListLinkedAccountsResponse)](../../models/operations/stackonelistlinkedaccountsresponse.md)**


## update_account

Update Account

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.accounts.update_account(patch_account_dto=::StackOne::Shared::PatchAccountDto.new(), id="<value>")

if ! res.linked_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `patch_account_dto`                                                           | [::StackOne::Shared::PatchAccountDto](../../models/shared/patchaccountdto.md) | :heavy_check_mark:                                                            | N/A                                                                           |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | N/A                                                                           |


### Response

**[T.nilable(::StackOne::Operations::StackoneUpdateAccountResponse)](../../models/operations/stackoneupdateaccountresponse.md)**

