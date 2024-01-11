# Job


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            | Example                                                                |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `code`                                                                 | *String*                                                               | :heavy_check_mark:                                                     | N/A                                                                    |                                                                        |
| `company_id`                                                           | *String*                                                               | :heavy_check_mark:                                                     | N/A                                                                    |                                                                        |
| `confidential`                                                         | [T.nilable(Shared::Confidential)](../../models/shared/confidential.md) | :heavy_minus_sign:                                                     | N/A                                                                    |                                                                        |
| `created_at`                                                           | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)   | :heavy_check_mark:                                                     | Date of creation                                                       | 2021-01-01T01:01:01.000Z                                               |
| `department_ids`                                                       | T::Array<*String*>                                                     | :heavy_check_mark:                                                     | N/A                                                                    |                                                                        |
| `hiring_team`                                                          | T::Array<[Shared::HiringTeam](../../models/shared/hiringteam.md)>      | :heavy_minus_sign:                                                     | N/A                                                                    |                                                                        |
| `id`                                                                   | *String*                                                               | :heavy_check_mark:                                                     | N/A                                                                    |                                                                        |
| `job_status`                                                           | [Shared::JobStatusEnum](../../models/shared/jobstatusenum.md)          | :heavy_check_mark:                                                     | N/A                                                                    |                                                                        |
| `location_ids`                                                         | T::Array<*String*>                                                     | :heavy_check_mark:                                                     | N/A                                                                    |                                                                        |
| `title`                                                                | *String*                                                               | :heavy_check_mark:                                                     | N/A                                                                    |                                                                        |
| `updated_at`                                                           | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)   | :heavy_check_mark:                                                     | Date of last update                                                    | 2021-01-01T01:01:01.000Z                                               |