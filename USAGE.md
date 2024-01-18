<!-- Start SDK Example Usage [usage] -->
### List Employees

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::HrisListEmployeesRequest.new(
  proxy={
    "Electronic": "string",
  },
  x_account_id="string",
)
    
res = s.hris.list_employees(req)

if ! res.employees_paginated.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->