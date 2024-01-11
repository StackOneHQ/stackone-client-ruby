# AtsUpdateApplicationRequestDto


## Fields

| Field                                                                                                    | Type                                                                                                     | Required                                                                                                 | Description                                                                                              | Example                                                                                                  |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| `application_status`                                                                                     | [T.nilable(Shared::ApplicationStatusEnumApiModel)](../../models/shared/applicationstatusenumapimodel.md) | :heavy_minus_sign:                                                                                       | N/A                                                                                                      |                                                                                                          |
| `attachments`                                                                                            | T::Array<[Shared::ApplicationAttachment](../../models/shared/applicationattachment.md)>                  | :heavy_minus_sign:                                                                                       | N/A                                                                                                      |                                                                                                          |
| `candidate`                                                                                              | [T.nilable(Shared::ApplicationCandidate)](../../models/shared/applicationcandidate.md)                   | :heavy_minus_sign:                                                                                       | N/A                                                                                                      |                                                                                                          |
| `candidate_id`                                                                                           | *T.nilable(String)*                                                                                      | :heavy_minus_sign:                                                                                       | Unique identifier of the candidate                                                                       | e3cb75bf-aa84-466e-a6c1-b8322b257a48                                                                     |
| `id`                                                                                                     | *T.nilable(String)*                                                                                      | :heavy_minus_sign:                                                                                       | The ID of the application to update.                                                                     | eebbaa75-7adf-4f7e-be4c-def6a12840f2                                                                     |
| `job_id`                                                                                                 | *T.nilable(String)*                                                                                      | :heavy_minus_sign:                                                                                       | Unique identifier of the job                                                                             | 4071538b-3cac-4fbf-ac76-f78ed250ffdd                                                                     |
| `location_ids`                                                                                           | T::Array<*String*>                                                                                       | :heavy_minus_sign:                                                                                       | Unique identifiers of the locations                                                                      | ["dd8d41d1-5eb8-4408-9c87-9ba44604eae4"]                                                                 |
| `questionnaires`                                                                                         | T::Array<[Shared::Questionnaire](../../models/shared/questionnaire.md)>                                  | :heavy_minus_sign:                                                                                       | Questionnaires associated with the application                                                           | {"id":"right_to_work","answers":[{"id":"answer1","type":"text","values":["Yes"]}]}                       |