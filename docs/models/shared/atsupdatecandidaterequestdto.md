# AtsUpdateCandidateRequestDto


## Fields

| Field                                                                                                                                           | Type                                                                                                                                            | Required                                                                                                                                        | Description                                                                                                                                     | Example                                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `application_ids`                                                                                                                               | T::Array<*::String*>                                                                                                                            | :heavy_minus_sign:                                                                                                                              | List of candidate application IDs                                                                                                               | [<br/>"123e4567-e89b-12d3-a456-426614174000",<br/>"523e1234-e89b-fdd2-a456-762545121101"<br/>]                                                  |
| `company`                                                                                                                                       | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | Candidate company                                                                                                                               | Company Inc.                                                                                                                                    |
| `country`                                                                                                                                       | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | Candidate country                                                                                                                               | United States                                                                                                                                   |
| `email`                                                                                                                                         | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | Candidate email                                                                                                                                 | sestier.romain123@gmail.com                                                                                                                     |
| `emails`                                                                                                                                        | T::Array<[::StackOne::Shared::CandidateEmail](../../models/shared/candidateemail.md)>                                                           | :heavy_minus_sign:                                                                                                                              | List of candidate emails                                                                                                                        |                                                                                                                                                 |
| `first_name`                                                                                                                                    | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | Candidate first name                                                                                                                            | Romain                                                                                                                                          |
| `hired_at`                                                                                                                                      | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                                                            | :heavy_minus_sign:                                                                                                                              | Candidate hired date                                                                                                                            | 2021-01-01T01:01:01.000Z                                                                                                                        |
| `id`                                                                                                                                            | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | Unique identifier                                                                                                                               | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                                                            |
| `last_name`                                                                                                                                     | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | Candidate last name                                                                                                                             | Sestier                                                                                                                                         |
| `name`                                                                                                                                          | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | Candidate name                                                                                                                                  | Romain Sestier                                                                                                                                  |
| ~~`phone`~~                                                                                                                                     | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | : warning: ** DEPRECATED **: This will be removed in a future release, please migrate away from it as soon as possible.<br/><br/>Candidate phone number | +16178294093                                                                                                                                    |
| `phone_numbers`                                                                                                                                 | T::Array<[::StackOne::Shared::PhoneNumber](../../models/shared/phonenumber.md)>                                                                 | :heavy_minus_sign:                                                                                                                              | List of candidate phone numbers including the type of the number when available                                                                 |                                                                                                                                                 |
| `remote_id`                                                                                                                                     | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | Provider's unique identifier                                                                                                                    | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                                                                            |
| `social_links`                                                                                                                                  | T::Array<[::StackOne::Shared::SocialLink](../../models/shared/sociallink.md)>                                                                   | :heavy_minus_sign:                                                                                                                              | List of candidate social links                                                                                                                  |                                                                                                                                                 |
| `title`                                                                                                                                         | *T.nilable(::String)*                                                                                                                           | :heavy_minus_sign:                                                                                                                              | Candidate title                                                                                                                                 | Software Engineer                                                                                                                               |