# Accounts
(*accounts*)

## Overview

Customer or business accounts.

### Available Operations

* [delete_account](#delete_account) - Delete Account
* [get_account](#get_account) - Get Account
* [get_account_meta_info](#get_account_meta_info) - Get Account Meta Information
* [list_linked_accounts](#list_linked_accounts) - List Accounts
* [update_account](#update_account) - Update Account

## delete_account

Delete Account

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.accounts.delete_account(id="<id>")

if ! res.linked_account.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneDeleteAccountResponse)](../../models/operations/stackonedeleteaccountresponse.md)**



## get_account

Get Account

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.accounts.get_account(id="<id>")

if ! res.linked_account.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetAccountResponse)](../../models/operations/stackonegetaccountresponse.md)**



## get_account_meta_info

Get Account Meta Information

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.accounts.get_account_meta_info(id="<id>")

if ! res.linked_account_meta.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::StackoneGetAccountMetaInfoResponse)](../../models/operations/stackonegetaccountmetainforesponse.md)**



## list_linked_accounts

List Accounts

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::StackoneListLinkedAccountsRequest.new()

res = s.accounts.list_linked_accounts(req)

if ! res.linked_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::StackoneListLinkedAccountsRequest](../../models/operations/stackonelistlinkedaccountsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::StackoneListLinkedAccountsResponse)](../../models/operations/stackonelistlinkedaccountsresponse.md)**



## update_account

Update Account

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.accounts.update_account(patch_account_external_dto=Models::Shared::PatchAccountExternalDto.new(
  type: Models::Shared::PatchAccountExternalDtoType::TEST,
), id="<id>")

if ! res.linked_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `patch_account_external_dto`                                                              | [Models::Shared::PatchAccountExternalDto](../../models/shared/patchaccountexternaldto.md) | :heavy_check_mark:                                                                        | N/A                                                                                       |
| `id`                                                                                      | *::String*                                                                                | :heavy_check_mark:                                                                        | N/A                                                                                       |

### Response

**[T.nilable(Models::Operations::StackoneUpdateAccountResponse)](../../models/operations/stackoneupdateaccountresponse.md)**

