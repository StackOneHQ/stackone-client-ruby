# User


## Fields

| Field                                | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `created_at`                         | *T.nilable(::String)*                | :heavy_minus_sign:                   | The date the user was created        | 2021-07-21T14:00:00.000Z             |
| `email`                              | *T.nilable(::String)*                | :heavy_minus_sign:                   | The email of the user                | john.doe@company.com                 |
| `id`                                 | *T.nilable(::String)*                | :heavy_minus_sign:                   | The user ID                          | 16873                                |
| `name`                               | *T.nilable(::String)*                | :heavy_minus_sign:                   | The name of the user                 | John Doe                             |
| `phone_number`                       | *T.nilable(::String)*                | :heavy_minus_sign:                   | The phone number of the user         | 0123456789                           |
| `remote_id`                          | *T.nilable(::String)*                | :heavy_minus_sign:                   | Provider's unique identifier         | 8187e5da-dc77-475e-9949-af0f1fa4e4e3 |
| `updated_at`                         | *T.nilable(::String)*                | :heavy_minus_sign:                   | The date the user was last updated   | 2021-07-21T14:00:00.000Z             |