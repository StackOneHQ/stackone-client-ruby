<!-- Start SDK Example Usage [usage] -->
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
<!-- End SDK Example Usage [usage] -->