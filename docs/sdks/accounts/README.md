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
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::StackoneDeleteAccountRequest.new(
  id="<ID>",
)
    
res = s.accounts.delete_account(id="string")

if ! res.linked_account.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(Operations::StackoneDeleteAccountResponse)](../../models/operations/stackonedeleteaccountresponse.md)**


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


req = Operations::StackoneGetAccountRequest.new(
  id="<ID>",
)
    
res = s.accounts.get_account(id="string")

if ! res.linked_account.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(Operations::StackoneGetAccountResponse)](../../models/operations/stackonegetaccountresponse.md)**


## get_account_meta_info

Get meta information of the account

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::StackoneGetAccountMetaInfoRequest.new(
  id="<ID>",
)
    
res = s.accounts.get_account_meta_info(id="string")

if ! res.linked_account_meta.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(Operations::StackoneGetAccountMetaInfoResponse)](../../models/operations/stackonegetaccountmetainforesponse.md)**


## list_linked_accounts

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


req = Operations::StackoneListLinkedAccountsRequest.new()
    
res = s.accounts.list_linked_accounts(origin_owner_id="string", provider="string")

if ! res.linked_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                           | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `origin_owner_id`                                   | *String*                                            | :heavy_minus_sign:                                  | The origin owner identifier of the results to fetch |
| `provider`                                          | *String*                                            | :heavy_minus_sign:                                  | The provider of the results to fetch                |


### Response

**[T.nilable(Operations::StackoneListLinkedAccountsResponse)](../../models/operations/stackonelistlinkedaccountsresponse.md)**


## update_account

Update Account

### Example Usage

```ruby
require_relative stackone_client


s = StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::StackoneUpdateAccountRequest.new(
  patch_account_dto=Shared::PatchAccountDto.new(),
  id="<ID>",
)
    
res = s.accounts.update_account(patch_account_dto=Shared::PatchAccountDto.new(), id="string")

if ! res.linked_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `patch_account_dto`                                               | [Shared::PatchAccountDto](../../models/shared/patchaccountdto.md) | :heavy_check_mark:                                                | N/A                                                               |
| `id`                                                              | *String*                                                          | :heavy_check_mark:                                                | N/A                                                               |


### Response

**[T.nilable(Operations::StackoneUpdateAccountResponse)](../../models/operations/stackoneupdateaccountresponse.md)**
