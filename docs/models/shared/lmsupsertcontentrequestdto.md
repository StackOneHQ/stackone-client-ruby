# LmsUpsertContentRequestDto


## Fields

| Field                                                                                                                                                              | Type                                                                                                                                                               | Required                                                                                                                                                           | Description                                                                                                                                                        | Example                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `active`                                                                                                                                                           | *T.nilable(::Object)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | Whether the content is active and available for users.                                                                                                             | true                                                                                                                                                               |
| `categories`                                                                                                                                                       | T::Array<[::StackOne::Shared::CreateCategoriesApiModel](../../models/shared/createcategoriesapimodel.md)>                                                          | :heavy_minus_sign:                                                                                                                                                 | The categories associated with this content                                                                                                                        | [<br/>{<br/>"name": "Technology"<br/>}<br/>]                                                                                                                       |
| `content_type`                                                                                                                                                     | [T.nilable(::StackOne::Shared::LmsUpsertContentRequestDtoContentType)](../../models/shared/lmsupsertcontentrequestdtocontenttype.md)                               | :heavy_minus_sign:                                                                                                                                                 | The type of content                                                                                                                                                |                                                                                                                                                                    |
| `content_url`                                                                                                                                                      | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The external URL of the content                                                                                                                                    | https://www.youtube.com/watch?v=16873                                                                                                                              |
| `course_ids`                                                                                                                                                       | T::Array<*::String*>                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                 | The parent IDs associated with this content                                                                                                                        | [<br/>"16873-SOFTWARE-ENG-COURSE"<br/>]                                                                                                                            |
| `cover_url`                                                                                                                                                        | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The URL of the thumbnail image associated with the content.                                                                                                        | https://www.googledrive.com/?v=16873                                                                                                                               |
| `description`                                                                                                                                                      | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The description of the content                                                                                                                                     | This video acts as learning content for software engineers.                                                                                                        |
| `duration`                                                                                                                                                         | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The duration of the content following the ISO8601 standard. If duration_unit is applicable we will derive this from the smallest unit given in the duration string | P3Y6M4DT12H30M5S                                                                                                                                                   |
| `external_reference`                                                                                                                                               | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The external ID associated with this content                                                                                                                       | SOFTWARE-ENG-LV1-TRAINING-VIDEO-1                                                                                                                                  |
| `languages`                                                                                                                                                        | T::Array<[::StackOne::Shared::ContentLanguageEnum](../../models/shared/contentlanguageenum.md)>                                                                    | :heavy_minus_sign:                                                                                                                                                 | The languages associated with this content                                                                                                                         |                                                                                                                                                                    |
| `order`                                                                                                                                                            | *T.nilable(::Float)*                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                 | The order of the individual content within a content grouping. This is not applicable for pushing individual content.                                              | 1                                                                                                                                                                  |
| `title`                                                                                                                                                            | *T.nilable(::String)*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                 | The title of the content                                                                                                                                           | Software Engineer Lv 1                                                                                                                                             |