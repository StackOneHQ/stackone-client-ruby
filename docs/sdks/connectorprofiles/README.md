# ConnectorProfiles

## Overview

View and manage connector profiles for the project.

### Available Operations

* [delete_connector_profile_pinned_version](#delete_connector_profile_pinned_version) - Delete Connector Profile Pinned Version
* [get_connector_profile_pinned_version](#get_connector_profile_pinned_version) - Get Connector Profile Pinned Version
* [list_connector_profile_versions](#list_connector_profile_versions) - List Connector Profile Versions
* [list_connector_profiles](#list_connector_profiles) - List Connector Profiles
* [upsert_connector_profile_pinned_version](#upsert_connector_profile_pinned_version) - Upsert Connector Profile Pinned Version

## delete_connector_profile_pinned_version

Remove the pinned connector version for the given connector profile.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_delete_connector_profile_pinned_version" method="delete" path="/connector_profiles/{connectorProfileId}/pinned_version" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.connector_profiles.delete_connector_profile_pinned_version(connector_profile_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connector_profile_id` | *::String*             | :heavy_check_mark:     | N/A                    |

### Response

**[T.nilable(Models::Operations::StackoneDeleteConnectorProfilePinnedVersionResponse)](../../models/operations/stackonedeleteconnectorprofilepinnedversionresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## get_connector_profile_pinned_version

Get the pinned connector version for the given connector profile.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_get_connector_profile_pinned_version" method="get" path="/connector_profiles/{connectorProfileId}/pinned_version" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.connector_profiles.get_connector_profile_pinned_version(connector_profile_id: '<id>')

unless res.connector_profile_pinned_version.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connector_profile_id` | *::String*             | :heavy_check_mark:     | N/A                    |

### Response

**[T.nilable(Models::Operations::StackoneGetConnectorProfilePinnedVersionResponse)](../../models/operations/stackonegetconnectorprofilepinnedversionresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_connector_profile_versions

List the connector versions available for the given connector profile, indicating which one is currently pinned.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_connector_profile_versions" method="get" path="/connector_profiles/{connectorProfileId}/versions" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.connector_profiles.list_connector_profile_versions(connector_profile_id: '<id>')

unless res.connector_profile_versions.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connector_profile_id` | *::String*             | :heavy_check_mark:     | N/A                    |

### Response

**[T.nilable(Models::Operations::StackoneListConnectorProfileVersionsResponse)](../../models/operations/stackonelistconnectorprofileversionsresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## list_connector_profiles

List the connector profiles available to the project.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_list_connector_profiles" method="get" path="/connector_profiles" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.connector_profiles.list_connector_profiles(connector_key: 'salesforce', enabled: true, page_size: 25.0)

unless res.connector_profiles_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                        | Type                                             | Required                                         | Description                                      | Example                                          |
| ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| `connector_key`                                  | *T.nilable(::String)*                            | :heavy_minus_sign:                               | Filter connector profiles by connector key       | salesforce                                       |
| `enabled`                                        | *T.nilable(T::Boolean)*                          | :heavy_minus_sign:                               | Filter connector profiles by their enabled state | true                                             |
| `page`                                           | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | The page number of the results to fetch          |                                                  |
| `page_size`                                      | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | The number of results per page                   |                                                  |

### Response

**[T.nilable(Models::Operations::StackoneListConnectorProfilesResponse)](../../models/operations/stackonelistconnectorprofilesresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |

## upsert_connector_profile_pinned_version

Create or update the pinned connector version for the given connector profile.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="stackone_upsert_connector_profile_pinned_version" method="put" path="/connector_profiles/{connectorProfileId}/pinned_version" -->
```ruby
require 'stackone_client'

Models = ::StackOne::Models
s = ::StackOne::StackOne.new(
  security: Models::Shared::Security.new(
    password: '',
    username: ''
  )
)
res = s.connector_profiles.upsert_connector_profile_pinned_version(upsert_connector_profile_pinned_version: Models::Shared::UpsertConnectorProfilePinnedVersion.new(
  pinned_version: '<value>'
), connector_profile_id: '<id>')

unless res.connector_profile_pinned_version.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `upsert_connector_profile_pinned_version`                                                                         | [Models::Shared::UpsertConnectorProfilePinnedVersion](../../models/shared/upsertconnectorprofilepinnedversion.md) | :heavy_check_mark:                                                                                                | N/A                                                                                                               |
| `connector_profile_id`                                                                                            | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | N/A                                                                                                               |

### Response

**[T.nilable(Models::Operations::StackoneUpsertConnectorProfilePinnedVersionResponse)](../../models/operations/stackoneupsertconnectorprofilepinnedversionresponse.md)**

### Errors

| Error Type                                  | Status Code                                 | Content Type                                |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| Models::Errors::BadRequestResponse          | 400                                         | application/json                            |
| Models::Errors::UnauthorizedResponse        | 401                                         | application/json                            |
| Models::Errors::ForbiddenResponse           | 403                                         | application/json                            |
| Models::Errors::NotFoundResponse            | 404                                         | application/json                            |
| Models::Errors::RequestTimedOutResponse     | 408                                         | application/json                            |
| Models::Errors::ConflictResponse            | 409                                         | application/json                            |
| Models::Errors::UnprocessableEntityResponse | 422                                         | application/json                            |
| Models::Errors::TooManyRequestsResponse     | 429                                         | application/json                            |
| Models::Errors::InternalServerErrorResponse | 500                                         | application/json                            |
| Models::Errors::NotImplementedResponse      | 501                                         | application/json                            |
| Models::Errors::BadGatewayResponse          | 502                                         | application/json                            |
| Errors::APIError                            | 4XX, 5XX                                    | \*/\*                                       |