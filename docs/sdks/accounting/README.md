# Accounting
(*accounting*)

## Overview

### Available Operations

* [batch_create_company_journals](#batch_create_company_journals) - Batch Create Journals
* [get_company](#get_company) - Get Company
* [get_company_account](#get_company_account) - Get Account
* [get_company_journal](#get_company_journal) - Get Journal
* [get_company_tax_rate](#get_company_tax_rate) - Get Tax Rate
* [list_companies](#list_companies) - List Companies
* [list_company_accounts](#list_company_accounts) - List Accounts
* [list_company_journals](#list_company_journals) - List Journals
* [list_company_tax_rates](#list_company_tax_rates) - List Tax Rates

## batch_create_company_journals

Batch Create Journals

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

res = s.accounting.batch_create_company_journals(accounting_journal_batch_create_request_dto=Models::Shared::AccountingJournalBatchCreateRequestDto.new(
  items: [
    Models::Shared::AccountingJournalCreateRequestDto.new(
      currency_code: Models::Shared::CurrencyCode.new(
        source_value: "USD",
        value: Models::Shared::AccountingJournalCreateRequestDtoValue::USD,
      ),
      exchange_rate: 1.0,
      lines: [
        Models::Shared::CreateJournalLine.new(
          account_id: "acc_123456789",
          amount: 10010.0,
          description: "Payment for office supplies",
          tax_amount: 10010.0,
          tax_rate_id: "tax_123456789",
        ),
      ],
      memo: "Monthly closing entries",
      reference: "JRN-2024-001",
      transaction_date: DateTime.iso8601('2024-03-20T10:00:00Z'),
    ),
  ],
), id="<id>", x_account_id="<id>")

if ! res.batch_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `accounting_journal_batch_create_request_dto`                                                                           | [Models::Shared::AccountingJournalBatchCreateRequestDto](../../models/shared/accountingjournalbatchcreaterequestdto.md) | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `id`                                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | N/A                                                                                                                     |
| `x_account_id`                                                                                                          | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | The account identifier                                                                                                  |

### Response

**[T.nilable(Models::Operations::AccountingBatchCreateCompanyJournalsResponse)](../../models/operations/accountingbatchcreatecompanyjournalsresponse.md)**



## get_company

Get Company

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::AccountingGetCompanyRequest.new(
  fields_: "id,remote_id,name,base_currency,fiscal_year_start_month,fiscal_year_start_day",
  id: "<id>",
  x_account_id: "<id>",
)

res = s.accounting.get_company(req)

if ! res.accounting_company_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::AccountingGetCompanyRequest](../../models/operations/accountinggetcompanyrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::AccountingGetCompanyResponse)](../../models/operations/accountinggetcompanyresponse.md)**



## get_company_account

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

req = Models::Operations::AccountingGetCompanyAccountRequest.new(
  fields_: "id,remote_id,company_id,remote_company_id,code,name,type,active",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.accounting.get_company_account(req)

if ! res.accounting_account_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::AccountingGetCompanyAccountRequest](../../models/operations/accountinggetcompanyaccountrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::AccountingGetCompanyAccountResponse)](../../models/operations/accountinggetcompanyaccountresponse.md)**



## get_company_journal

Get Journal

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::AccountingGetCompanyJournalRequest.new(
  fields_: "id,remote_id,company_id,remote_company_id,reference,memo,transaction_date,status,lines,created_at,updated_at,posted_at",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.accounting.get_company_journal(req)

if ! res.accounting_journal_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::AccountingGetCompanyJournalRequest](../../models/operations/accountinggetcompanyjournalrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::AccountingGetCompanyJournalResponse)](../../models/operations/accountinggetcompanyjournalresponse.md)**



## get_company_tax_rate

Get Tax Rate

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::AccountingGetCompanyTaxRateRequest.new(
  fields_: "id,remote_id,company_id,remote_company_id,name,code,rate,active",
  id: "<id>",
  sub_resource_id: "<id>",
  x_account_id: "<id>",
)

res = s.accounting.get_company_tax_rate(req)

if ! res.accounting_tax_rate_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::AccountingGetCompanyTaxRateRequest](../../models/operations/accountinggetcompanytaxraterequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::AccountingGetCompanyTaxRateResponse)](../../models/operations/accountinggetcompanytaxrateresponse.md)**



## list_companies

List Companies

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::AccountingListCompaniesRequest.new(
  fields_: "id,remote_id,name,base_currency,fiscal_year_start_month,fiscal_year_start_day",
  filter: Models::Operations::AccountingListCompaniesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  x_account_id: "<id>",
)

res = s.accounting.list_companies(req)

if ! res.accounting_companies_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::AccountingListCompaniesRequest](../../models/operations/accountinglistcompaniesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::AccountingListCompaniesResponse)](../../models/operations/accountinglistcompaniesresponse.md)**



## list_company_accounts

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

req = Models::Operations::AccountingListCompanyAccountsRequest.new(
  fields_: "id,remote_id,company_id,remote_company_id,code,name,type,active",
  filter: Models::Operations::AccountingListCompanyAccountsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.accounting.list_company_accounts(req)

if ! res.accounting_accounts_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::AccountingListCompanyAccountsRequest](../../models/operations/accountinglistcompanyaccountsrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::AccountingListCompanyAccountsResponse)](../../models/operations/accountinglistcompanyaccountsresponse.md)**



## list_company_journals

List Journals

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::AccountingListCompanyJournalsRequest.new(
  fields_: "id,remote_id,company_id,remote_company_id,reference,memo,transaction_date,status,lines,created_at,updated_at,posted_at",
  filter: Models::Operations::AccountingListCompanyJournalsQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.accounting.list_company_journals(req)

if ! res.accounting_journals_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::AccountingListCompanyJournalsRequest](../../models/operations/accountinglistcompanyjournalsrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::AccountingListCompanyJournalsResponse)](../../models/operations/accountinglistcompanyjournalsresponse.md)**



## list_company_tax_rates

List Tax Rates

### Example Usage

```ruby
require 'stackone_client'

s = ::StackOne::StackOne.new(
      security: Models::Shared::Security.new(
        password: "",
        username: "",
      ),
    )

req = Models::Operations::AccountingListCompanyTaxRatesRequest.new(
  fields_: "id,remote_id,company_id,remote_company_id,name,code,rate,active",
  filter: Models::Operations::AccountingListCompanyTaxRatesQueryParamFilter.new(
    updated_after: DateTime.iso8601('2020-01-01T00:00:00.000Z'),
  ),
  id: "<id>",
  x_account_id: "<id>",
)

res = s.accounting.list_company_tax_rates(req)

if ! res.accounting_tax_rates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::AccountingListCompanyTaxRatesRequest](../../models/operations/accountinglistcompanytaxratesrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::AccountingListCompanyTaxRatesResponse)](../../models/operations/accountinglistcompanytaxratesresponse.md)**

