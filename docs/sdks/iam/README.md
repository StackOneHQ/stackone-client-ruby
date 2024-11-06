# Iam
(*iam*)

## Overview

### Available Operations

* [get_group](#get_group) - Get Group
* [get_policy](#get_policy) - Get Policy
* [get_role](#get_role) - Get Role
* [get_user](#get_user) - Get User
* [list_groups](#list_groups) - List Groups
* [list_policies](#list_policies) - List Policies
* [list_roles](#list_roles) - List Roles
* [list_users](#list_users) - List Users

## get_group

Get Group

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


req = ::StackOne::Operations::IamGetGroupRequest.new(
  expand: "roles",
  fields_: "id,remote_id,parent_id,remote_parent_id,name,description,roles,type,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.iam.get_group(req)

if ! res.iam_group_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::StackOne::Operations::IamGetGroupRequest](../../models/operations/iamgetgrouprequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(::StackOne::Operations::IamGetGroupResponse)](../../models/operations/iamgetgroupresponse.md)**



## get_policy

Get Policy

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


req = ::StackOne::Operations::IamGetPolicyRequest.new(
  expand: "permissions",
  fields_: "id,remote_id,name,permissions,description,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.iam.get_policy(req)

if ! res.iam_policy_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::IamGetPolicyRequest](../../models/operations/iamgetpolicyrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::StackOne::Operations::IamGetPolicyResponse)](../../models/operations/iamgetpolicyresponse.md)**



## get_role

Get Role

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


req = ::StackOne::Operations::IamGetRoleRequest.new(
  expand: "policies",
  fields_: "id,remote_id,name,type,policies,description,created_at,updated_at",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.iam.get_role(req)

if ! res.iam_role_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::StackOne::Operations::IamGetRoleRequest](../../models/operations/iamgetrolerequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(::StackOne::Operations::IamGetRoleResponse)](../../models/operations/iamgetroleresponse.md)**



## get_user

Get User

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


req = ::StackOne::Operations::IamGetUserRequest.new(
  expand: "roles,groups",
  fields_: "id,remote_id,first_name,last_name,name,primary_email_address,username,roles,groups,status,avatar,is_bot_user,last_active_at,last_login_at,created_at,updated_at,multi_factor_enabled",
  id: "<id>",
  x_account_id: "<id>",
)
    
res = s.iam.get_user(req)

if ! res.iam_user_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::StackOne::Operations::IamGetUserRequest](../../models/operations/iamgetuserrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(::StackOne::Operations::IamGetUserResponse)](../../models/operations/iamgetuserresponse.md)**



## list_groups

List Groups

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


req = ::StackOne::Operations::IamListGroupsRequest.new(
  expand: "roles",
  fields_: "id,remote_id,parent_id,remote_parent_id,name,description,roles,type,created_at,updated_at",
  filter: ::StackOne::Operations::IamListGroupsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.iam.list_groups(req)

if ! res.iam_groups_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::StackOne::Operations::IamListGroupsRequest](../../models/operations/iamlistgroupsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(::StackOne::Operations::IamListGroupsResponse)](../../models/operations/iamlistgroupsresponse.md)**



## list_policies

List Policies

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


req = ::StackOne::Operations::IamListPoliciesRequest.new(
  expand: "permissions",
  fields_: "id,remote_id,name,permissions,description,created_at,updated_at",
  filter: ::StackOne::Operations::IamListPoliciesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.iam.list_policies(req)

if ! res.iam_policies_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::StackOne::Operations::IamListPoliciesRequest](../../models/operations/iamlistpoliciesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(::StackOne::Operations::IamListPoliciesResponse)](../../models/operations/iamlistpoliciesresponse.md)**



## list_roles

List Roles

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


req = ::StackOne::Operations::IamListRolesRequest.new(
  expand: "policies",
  fields_: "id,remote_id,name,type,policies,description,created_at,updated_at",
  filter: ::StackOne::Operations::IamListRolesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.iam.list_roles(req)

if ! res.iam_roles_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::IamListRolesRequest](../../models/operations/iamlistrolesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::StackOne::Operations::IamListRolesResponse)](../../models/operations/iamlistrolesresponse.md)**



## list_users

List Users

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


req = ::StackOne::Operations::IamListUsersRequest.new(
  expand: "roles,groups",
  fields_: "id,remote_id,first_name,last_name,name,primary_email_address,username,roles,groups,status,avatar,is_bot_user,last_active_at,last_login_at,created_at,updated_at,multi_factor_enabled",
  filter: ::StackOne::Operations::IamListUsersQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<id>",
)
    
res = s.iam.list_users(req)

if ! res.iam_users_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::IamListUsersRequest](../../models/operations/iamlistusersrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(::StackOne::Operations::IamListUsersResponse)](../../models/operations/iamlistusersresponse.md)**

