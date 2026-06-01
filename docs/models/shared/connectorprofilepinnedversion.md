# ConnectorProfilePinnedVersion


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `connector_profile_id`                                               | *::String*                                                           | :heavy_check_mark:                                                   | The id of the connector profile this pinned version belongs to       |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | The timestamp when the pinned version was created                    |
| `owner`                                                              | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | The owner of the pinned connector version                            |
| `pinned_version`                                                     | *::String*                                                           | :heavy_check_mark:                                                   | The pinned connector version                                         |
| `updated_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | The timestamp when the pinned version was last updated               |