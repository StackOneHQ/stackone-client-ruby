# Ats


### Available Operations

* [create_application](#create_application) - Create Application
* [create_candidate](#create_candidate) - Create Candidate (early access)
* [create_candidate_note](#create_candidate_note) - Create Candidate Note
* [create_offer](#create_offer) - Creates an offer
* [get_application](#get_application) - Get Application
* [get_application_offer](#get_application_offer) - Get Application Offer
* [get_application_scorecard](#get_application_scorecard) - Get Application Scorecard
* [get_candidate](#get_candidate) - Get Candidate
* [get_candidate_note](#get_candidate_note) - Get Candidate Note
* [get_department](#get_department) - Get Department
* [get_interview](#get_interview) - Get Interview
* [get_interview_stage](#get_interview_stage) - Get Interview Stage
* [get_job](#get_job) - Get Job
* [get_job_posting](#get_job_posting) - Get Job Posting
* [get_location](#get_location) - Get Location
* [get_offer](#get_offer) - Get Offer
* [get_rejected_reason](#get_rejected_reason) - Get Rejected Reason
* [get_user](#get_user) - Get User
* [list_application_scorecards](#list_application_scorecards) - List Application Scorecards
* [list_applications](#list_applications) - List Applications
* [list_applications_offers](#list_applications_offers) - List Application Offers
* [list_candidate_notes](#list_candidate_notes) - List Candidate Notes
* [list_candidates](#list_candidates) - List Candidates
* [list_departments](#list_departments) - List Departments
* [list_interview_stages](#list_interview_stages) - List Interview Stages
* [list_interviews](#list_interviews) - List Interviews
* [list_job_postings](#list_job_postings) - List Job Postings
* [list_jobs](#list_jobs) - List Jobs
* [list_locations](#list_locations) - List locations
* [list_offers](#list_offers) - List Offers
* [list_rejected_reasons](#list_rejected_reasons) - List Rejected Reasons
* [list_users](#list_users) - List Users
* [update_application](#update_application) - Update Application
* [update_candidate](#update_candidate) - Update Candidate (early access)

## create_application

Create Application

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.create_application(ats_create_application_request_dto=Shared::AtsCreateApplicationRequestDto.new(
    application_status=Shared::AtsCreateApplicationRequestDtoApplicationStatus.new(
      source_value="Hired",
      value=Shared::AtsCreateApplicationRequestDtoValue::HIRED,
    ),
    attachments=[
      Shared::ApplicationAttachment.new(
        content="Base64 encoded content",
        content_type=Shared::ContentType.new(
          source_value="Text",
          value=Shared::ApplicationAttachmentValue::TEXT,
        ),
        file_name="resume.pdf",
        type=[
          Shared::AttachmentType.new(
            source_value="Resume",
            value=Shared::Value::RESUME,
          ),
        ],
        url="http://example.com/resume.pdf",
      ),
    ],
    candidate=Shared::AtsCreateApplicationRequestDtoCandidate.new(
      email="john.doe@example.com",
      first_name="John",
      last_name="Doe",
    ),
    candidate_id="e3cb75bf-aa84-466e-a6c1-b8322b257a48",
    job_id="4071538b-3cac-4fbf-ac76-f78ed250ffdd",
    location_ids=[
      "string",
    ],
    questionnaires=[
      Shared::Questionnaire.new(
        answers=[
          Shared::Answer.new(
            id="answer_1",
            type=Shared::Type.new(
              source_value="Short Text",
              value=Shared::AnswerValue::SHORT_TEXT,
            ),
            values=[
              "string",
            ],
          ),
        ],
        id="questionnaire_1",
      ),
    ],
  ), x_account_id="string")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `ats_create_application_request_dto`                                                            | [Shared::AtsCreateApplicationRequestDto](../../models/shared/atscreateapplicationrequestdto.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `x_account_id`                                                                                  | *String*                                                                                        | :heavy_check_mark:                                                                              | The account identifier                                                                          |


### Response

**[T.nilable(Operations::AtsCreateApplicationResponse)](../../models/operations/atscreateapplicationresponse.md)**


## create_candidate

Create Candidate (early access)

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.create_candidate(ats_create_candidate_request_dto=Shared::AtsCreateCandidateRequestDto.new(
    application_ids=[
      "string",
    ],
    company="Company Inc.",
    emails=[
      Shared::CandidateEmail.new(
        type="personal",
        value="sestier.romain123@gmail.com",
      ),
    ],
    first_name="Romain",
    last_name="Sestier",
    name="Romain Sestier",
    phone="+16178294093",
    title="Software Engineer",
  ), x_account_id="string")

if ! res.candidate_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `ats_create_candidate_request_dto`                                                          | [Shared::AtsCreateCandidateRequestDto](../../models/shared/atscreatecandidaterequestdto.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `x_account_id`                                                                              | *String*                                                                                    | :heavy_check_mark:                                                                          | The account identifier                                                                      |


### Response

**[T.nilable(Operations::AtsCreateCandidateResponse)](../../models/operations/atscreatecandidateresponse.md)**


## create_candidate_note

Create Candidate Note

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.create_candidate_note(ats_create_notes_request_dto=Shared::AtsCreateNotesRequestDto.new(
    author_id="1234567890",
    content=[
      Shared::NoteContentApiModel.new(
        body="This candidate seems like a good fit for the role",
      ),
    ],
    visibility=Shared::Visibility.new(
      source_value="Public",
      value=Shared::AtsCreateNotesRequestDtoValue::PUBLIC,
    ),
  ), id="string", x_account_id="string")

if ! res.create_candidate_note_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `ats_create_notes_request_dto`                                                      | [Shared::AtsCreateNotesRequestDto](../../models/shared/atscreatenotesrequestdto.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `id`                                                                                | *String*                                                                            | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `x_account_id`                                                                      | *String*                                                                            | :heavy_check_mark:                                                                  | The account identifier                                                              |


### Response

**[T.nilable(Operations::AtsCreateCandidateNoteResponse)](../../models/operations/atscreatecandidatenoteresponse.md)**


## create_offer

Creates an offer

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.create_offer(ats_create_offer_request_dto=Shared::AtsCreateOfferRequestDto.new(
    offer_history=[
      Shared::OfferHistory.new(
        created_at=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        start_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        updated_at=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      ),
    ],
    offer_status=Shared::OfferStatus.new(
      source_value="Pending",
      value=Shared::AtsCreateOfferRequestDtoValue::PENDING,
    ),
    start_date=DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  ), x_account_id="string")

if ! res.create_offer_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `ats_create_offer_request_dto`                                                      | [Shared::AtsCreateOfferRequestDto](../../models/shared/atscreateofferrequestdto.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `x_account_id`                                                                      | *String*                                                                            | :heavy_check_mark:                                                                  | The account identifier                                                              |


### Response

**[T.nilable(Operations::AtsCreateOfferResponse)](../../models/operations/atscreateofferresponse.md)**


## get_application

Get Application

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetApplicationRequest.new(
  id="<ID>",
  proxy=Operations::Proxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_application(req)

if ! res.application_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::AtsGetApplicationRequest](../../models/operations/atsgetapplicationrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::AtsGetApplicationResponse)](../../models/operations/atsgetapplicationresponse.md)**


## get_application_offer

Get Application Offer

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetApplicationOfferRequest.new(
  id="<ID>",
  proxy=Operations::QueryParamProxy.new(),
  sub_resource_id="string",
  x_account_id="string",
)
    
res = s.ats.get_application_offer(req)

if ! res.offers_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::AtsGetApplicationOfferRequest](../../models/operations/atsgetapplicationofferrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::AtsGetApplicationOfferResponse)](../../models/operations/atsgetapplicationofferresponse.md)**


## get_application_scorecard

Get Application Scorecard

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetApplicationScorecardRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetApplicationScorecardQueryParamProxy.new(),
  sub_resource_id="string",
  x_account_id="string",
)
    
res = s.ats.get_application_scorecard(req)

if ! res.offers_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Operations::AtsGetApplicationScorecardRequest](../../models/operations/atsgetapplicationscorecardrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(Operations::AtsGetApplicationScorecardResponse)](../../models/operations/atsgetapplicationscorecardresponse.md)**


## get_candidate

Get Candidate

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetCandidateRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetCandidateQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_candidate(req)

if ! res.candidate_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::AtsGetCandidateRequest](../../models/operations/atsgetcandidaterequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::AtsGetCandidateResponse)](../../models/operations/atsgetcandidateresponse.md)**


## get_candidate_note

Get Candidate Note

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetCandidateNoteRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetCandidateNoteQueryParamProxy.new(),
  sub_resource_id="string",
  x_account_id="string",
)
    
res = s.ats.get_candidate_note(req)

if ! res.note_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::AtsGetCandidateNoteRequest](../../models/operations/atsgetcandidatenoterequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::AtsGetCandidateNoteResponse)](../../models/operations/atsgetcandidatenoteresponse.md)**


## get_department

Get Department

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetDepartmentRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetDepartmentQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_department(req)

if ! res.department_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::AtsGetDepartmentRequest](../../models/operations/atsgetdepartmentrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::AtsGetDepartmentResponse)](../../models/operations/atsgetdepartmentresponse.md)**


## get_interview

Get Interview

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetInterviewRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetInterviewQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_interview(req)

if ! res.interviews_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::AtsGetInterviewRequest](../../models/operations/atsgetinterviewrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::AtsGetInterviewResponse)](../../models/operations/atsgetinterviewresponse.md)**


## get_interview_stage

Get Interview Stage

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetInterviewStageRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetInterviewStageQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_interview_stage(req)

if ! res.interview_stage_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Operations::AtsGetInterviewStageRequest](../../models/operations/atsgetinterviewstagerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(Operations::AtsGetInterviewStageResponse)](../../models/operations/atsgetinterviewstageresponse.md)**


## get_job

Get Job

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetJobRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetJobQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_job(req)

if ! res.job_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `request`                                                                   | [Operations::AtsGetJobRequest](../../models/operations/atsgetjobrequest.md) | :heavy_check_mark:                                                          | The request object to use for the request.                                  |


### Response

**[T.nilable(Operations::AtsGetJobResponse)](../../models/operations/atsgetjobresponse.md)**


## get_job_posting

Get Job Posting

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetJobPostingRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetJobPostingQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_job_posting(req)

if ! res.job_posting_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::AtsGetJobPostingRequest](../../models/operations/atsgetjobpostingrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::AtsGetJobPostingResponse)](../../models/operations/atsgetjobpostingresponse.md)**


## get_location

Get Location

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetLocationRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetLocationQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_location(req)

if ! res.ats_location_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::AtsGetLocationRequest](../../models/operations/atsgetlocationrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::AtsGetLocationResponse)](../../models/operations/atsgetlocationresponse.md)**


## get_offer

Get Offer

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetOfferRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetOfferQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_offer(req)

if ! res.offers_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Operations::AtsGetOfferRequest](../../models/operations/atsgetofferrequest.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |


### Response

**[T.nilable(Operations::AtsGetOfferResponse)](../../models/operations/atsgetofferresponse.md)**


## get_rejected_reason

Get Rejected Reason

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetRejectedReasonRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetRejectedReasonQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_rejected_reason(req)

if ! res.rejected_reason_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Operations::AtsGetRejectedReasonRequest](../../models/operations/atsgetrejectedreasonrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(Operations::AtsGetRejectedReasonResponse)](../../models/operations/atsgetrejectedreasonresponse.md)**


## get_user

Get User

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsGetUserRequest.new(
  id="<ID>",
  proxy=Operations::AtsGetUserQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.get_user(req)

if ! res.user_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `request`                                                                     | [Operations::AtsGetUserRequest](../../models/operations/atsgetuserrequest.md) | :heavy_check_mark:                                                            | The request object to use for the request.                                    |


### Response

**[T.nilable(Operations::AtsGetUserResponse)](../../models/operations/atsgetuserresponse.md)**


## list_application_scorecards

List Application Scorecards

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListApplicationScorecardsRequest.new(
  id="<ID>",
  proxy=Operations::AtsListApplicationScorecardsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_application_scorecards(req)

if ! res.scorecards_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Operations::AtsListApplicationScorecardsRequest](../../models/operations/atslistapplicationscorecardsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(Operations::AtsListApplicationScorecardsResponse)](../../models/operations/atslistapplicationscorecardsresponse.md)**


## list_applications

List Applications

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListApplicationsRequest.new(
  proxy=Operations::AtsListApplicationsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_applications(req)

if ! res.applications_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::AtsListApplicationsRequest](../../models/operations/atslistapplicationsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::AtsListApplicationsResponse)](../../models/operations/atslistapplicationsresponse.md)**


## list_applications_offers

List Application Offers

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListApplicationsOffersRequest.new(
  id="<ID>",
  proxy=Operations::AtsListApplicationsOffersQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_applications_offers(req)

if ! res.offers_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Operations::AtsListApplicationsOffersRequest](../../models/operations/atslistapplicationsoffersrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(Operations::AtsListApplicationsOffersResponse)](../../models/operations/atslistapplicationsoffersresponse.md)**


## list_candidate_notes

List Candidate Notes

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListCandidateNotesRequest.new(
  id="<ID>",
  proxy=Operations::AtsListCandidateNotesQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_candidate_notes(req)

if ! res.notes_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Operations::AtsListCandidateNotesRequest](../../models/operations/atslistcandidatenotesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(Operations::AtsListCandidateNotesResponse)](../../models/operations/atslistcandidatenotesresponse.md)**


## list_candidates

List Candidates

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListCandidatesRequest.new(
  proxy=Operations::AtsListCandidatesQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_candidates(req)

if ! res.candidates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::AtsListCandidatesRequest](../../models/operations/atslistcandidatesrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::AtsListCandidatesResponse)](../../models/operations/atslistcandidatesresponse.md)**


## list_departments

List Departments

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListDepartmentsRequest.new(
  proxy=Operations::AtsListDepartmentsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_departments(req)

if ! res.departments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Operations::AtsListDepartmentsRequest](../../models/operations/atslistdepartmentsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(Operations::AtsListDepartmentsResponse)](../../models/operations/atslistdepartmentsresponse.md)**


## list_interview_stages

List Interview Stages

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListInterviewStagesRequest.new(
  proxy=Operations::AtsListInterviewStagesQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_interview_stages(req)

if ! res.interview_stages_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::AtsListInterviewStagesRequest](../../models/operations/atslistinterviewstagesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::AtsListInterviewStagesResponse)](../../models/operations/atslistinterviewstagesresponse.md)**


## list_interviews

List Interviews

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListInterviewsRequest.new(
  proxy=Operations::AtsListInterviewsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_interviews(req)

if ! res.interviews_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::AtsListInterviewsRequest](../../models/operations/atslistinterviewsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::AtsListInterviewsResponse)](../../models/operations/atslistinterviewsresponse.md)**


## list_job_postings

List Job Postings

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListJobPostingsRequest.new(
  proxy=Operations::AtsListJobPostingsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_job_postings(req)

if ! res.job_postings_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Operations::AtsListJobPostingsRequest](../../models/operations/atslistjobpostingsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(Operations::AtsListJobPostingsResponse)](../../models/operations/atslistjobpostingsresponse.md)**


## list_jobs

List Jobs

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListJobsRequest.new(
  proxy=Operations::AtsListJobsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_jobs(req)

if ! res.jobs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Operations::AtsListJobsRequest](../../models/operations/atslistjobsrequest.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |


### Response

**[T.nilable(Operations::AtsListJobsResponse)](../../models/operations/atslistjobsresponse.md)**


## list_locations

List locations

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListLocationsRequest.new(
  proxy=Operations::AtsListLocationsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_locations(req)

if ! res.ats_locations_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::AtsListLocationsRequest](../../models/operations/atslistlocationsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::AtsListLocationsResponse)](../../models/operations/atslistlocationsresponse.md)**


## list_offers

List Offers

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListOffersRequest.new(
  proxy=Operations::AtsListOffersQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_offers(req)

if ! res.offers_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Operations::AtsListOffersRequest](../../models/operations/atslistoffersrequest.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |


### Response

**[T.nilable(Operations::AtsListOffersResponse)](../../models/operations/atslistoffersresponse.md)**


## list_rejected_reasons

List Rejected Reasons

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListRejectedReasonsRequest.new(
  proxy=Operations::AtsListRejectedReasonsQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_rejected_reasons(req)

if ! res.rejected_reasons_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::AtsListRejectedReasonsRequest](../../models/operations/atslistrejectedreasonsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::AtsListRejectedReasonsResponse)](../../models/operations/atslistrejectedreasonsresponse.md)**


## list_users

List Users

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)


req = Operations::AtsListUsersRequest.new(
  proxy=Operations::AtsListUsersQueryParamProxy.new(),
  x_account_id="string",
)
    
res = s.ats.list_users(req)

if ! res.users_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Operations::AtsListUsersRequest](../../models/operations/atslistusersrequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |


### Response

**[T.nilable(Operations::AtsListUsersResponse)](../../models/operations/atslistusersresponse.md)**


## update_application

Update Application

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.update_application(ats_update_application_request_dto=Shared::AtsUpdateApplicationRequestDto.new(
    application_status=Shared::AtsUpdateApplicationRequestDtoApplicationStatus.new(
      source_value="Hired",
      value=Shared::AtsUpdateApplicationRequestDtoValue::HIRED,
    ),
    attachments=[
      Shared::ApplicationAttachment.new(
        content="Base64 encoded content",
        content_type=Shared::ContentType.new(
          source_value="Text",
          value=Shared::ApplicationAttachmentValue::TEXT,
        ),
        file_name="resume.pdf",
        type=[
          Shared::AttachmentType.new(
            source_value="Resume",
            value=Shared::Value::RESUME,
          ),
        ],
        url="http://example.com/resume.pdf",
      ),
    ],
    candidate=Shared::AtsUpdateApplicationRequestDtoCandidate.new(
      email="john.doe@example.com",
      first_name="John",
      last_name="Doe",
    ),
    candidate_id="e3cb75bf-aa84-466e-a6c1-b8322b257a48",
    id="eebbaa75-7adf-4f7e-be4c-def6a12840f2",
    job_id="4071538b-3cac-4fbf-ac76-f78ed250ffdd",
    location_ids=[
      "string",
    ],
    questionnaires=[
      Shared::Questionnaire.new(
        answers=[
          Shared::Answer.new(
            id="answer_1",
            type=Shared::Type.new(
              source_value="Short Text",
              value=Shared::AnswerValue::SHORT_TEXT,
            ),
            values=[
              "string",
            ],
          ),
        ],
        id="questionnaire_1",
      ),
    ],
  ), id="string", x_account_id="string")

if ! res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `ats_update_application_request_dto`                                                            | [Shared::AtsUpdateApplicationRequestDto](../../models/shared/atsupdateapplicationrequestdto.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `id`                                                                                            | *String*                                                                                        | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `x_account_id`                                                                                  | *String*                                                                                        | :heavy_check_mark:                                                                              | The account identifier                                                                          |


### Response

**[T.nilable(Operations::AtsUpdateApplicationResponse)](../../models/operations/atsupdateapplicationresponse.md)**


## update_candidate

Update Candidate (early access)

### Example Usage

```ruby
require_relative stackone_client


s = ::StackOne::StackOne.new
s.config_security(
  security=Shared::Security.new(
    password="<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.update_candidate(ats_update_candidates_request_dto=Shared::AtsUpdateCandidatesRequestDto.new(
    application_ids=[
      "string",
    ],
    company="Company Inc.",
    emails=[
      Shared::CandidateEmail.new(
        type="personal",
        value="sestier.romain123@gmail.com",
      ),
    ],
    first_name="Romain",
    id="eebbaa75-7adf-4f7e-be4c-def6a12840f2",
    last_name="Sestier",
    name="Romain Sestier",
    phone="+16178294093",
    title="Software Engineer",
  ), id="string", x_account_id="string")

if ! res.candidate_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `ats_update_candidates_request_dto`                                                           | [Shared::AtsUpdateCandidatesRequestDto](../../models/shared/atsupdatecandidatesrequestdto.md) | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `id`                                                                                          | *String*                                                                                      | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `x_account_id`                                                                                | *String*                                                                                      | :heavy_check_mark:                                                                            | The account identifier                                                                        |


### Response

**[T.nilable(Operations::AtsUpdateCandidateResponse)](../../models/operations/atsupdatecandidateresponse.md)**

