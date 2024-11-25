# BackgroundCheckOrderCandidate


## Fields

| Field                                                                                 | Type                                                                                  | Required                                                                              | Description                                                                           | Example                                                                               |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `emails`                                                                              | T::Array<[::StackOne::Shared::CandidateEmail](../../models/shared/candidateemail.md)> | :heavy_minus_sign:                                                                    | List of candidate emails                                                              |                                                                                       |
| `first_name`                                                                          | *T.nilable(::String)*                                                                 | :heavy_minus_sign:                                                                    | Candidate first name                                                                  | Romain                                                                                |
| `id`                                                                                  | *T.nilable(::String)*                                                                 | :heavy_minus_sign:                                                                    | Unique identifier                                                                     | 8187e5da-dc77-475e-9949-af0f1fa4e4e3                                                  |
| `last_name`                                                                           | *T.nilable(::String)*                                                                 | :heavy_minus_sign:                                                                    | Candidate last name                                                                   | Sestier                                                                               |
| `passthrough`                                                                         | T::Hash[Symbol, *::Object*]                                                           | :heavy_minus_sign:                                                                    | Value to pass through to the provider                                                 | {<br/>"other_known_names": "John Doe"<br/>}                                           |
| `profile_url`                                                                         | *T.nilable(::String)*                                                                 | :heavy_minus_sign:                                                                    | Candidate profile url                                                                 | https://exmaple.com/candidate?id=xyz                                                  |