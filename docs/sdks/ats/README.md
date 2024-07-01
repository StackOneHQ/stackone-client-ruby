# Ats


### Available Operations

* [create_application](#create_application) - Create Application
* [create_candidate](#create_candidate) - Create Candidate
* [create_candidate_note](#create_candidate_note) - Create Candidate Note
* [create_offer](#create_offer) - Creates an offer
* [download_application_document](#download_application_document) - Download Application Document
* [get_application](#get_application) - Get Application
* [get_application_document](#get_application_document) - Get Application Document
* [get_application_offer](#get_application_offer) - Get Application Offer
* [get_application_scorecard](#get_application_scorecard) - Get Application Scorecard
* [get_assessments_package](#get_assessments_package) - Get Assessments Package
* [get_candidate](#get_candidate) - Get Candidate
* [get_candidate_note](#get_candidate_note) - Get Candidate Note
* [get_department](#get_department) - Get Department
* [get_interview](#get_interview) - Get Interview
* [get_interview_stage](#get_interview_stage) - Get Interview Stage
* [get_job](#get_job) - Get Job
* [get_job_posting](#get_job_posting) - Get Job Posting
* [get_list](#get_list) - Get List
* [get_location](#get_location) - Get Location
* [get_offer](#get_offer) - Get Offer
* [get_rejected_reason](#get_rejected_reason) - Get Rejected Reason
* [get_user](#get_user) - Get User
* [list_application_documents](#list_application_documents) - List Application Documents
* [list_application_scorecards](#list_application_scorecards) - List Application Scorecards
* [list_applications](#list_applications) - List Applications
* [list_applications_offers](#list_applications_offers) - List Application Offers
* [list_assessments_packages](#list_assessments_packages) - List Assessments Packages
* [list_candidate_notes](#list_candidate_notes) - List Candidate Notes
* [list_candidates](#list_candidates) - List Candidates
* [list_departments](#list_departments) - List Departments
* [list_interview_stages](#list_interview_stages) - List Interview Stages
* [list_interviews](#list_interviews) - List Interviews
* [list_job_postings](#list_job_postings) - List Job Postings
* [list_jobs](#list_jobs) - List Jobs
* [list_lists](#list_lists) - Get all Lists
* [list_locations](#list_locations) - List locations
* [list_offers](#list_offers) - List Offers
* [list_rejected_reasons](#list_rejected_reasons) - List Rejected Reasons
* [list_users](#list_users) - List Users
* [update_application](#update_application) - Update an Application
* [update_candidate](#update_candidate) - Update Candidate
* [upload_application_document](#upload_application_document) - Upload Application Document

## create_application

Create Application

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.create_application(ats_create_application_request_dto=::StackOne::Shared::AtsCreateApplicationRequestDto.new(
    application_status: ::StackOne::Shared::AtsCreateApplicationRequestDtoApplicationStatus.new(
      source_value: "Hired",
      value: ::StackOne::Shared::AtsCreateApplicationRequestDtoValue::HIRED,
    ),
    candidate: ::StackOne::Shared::AtsCreateApplicationRequestDtoCandidate.new(
      company: "Company Inc.",
      country: "United States",
      email: "sestier.romain123@gmail.com",
      first_name: "Romain",
      hired_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      last_name: "Sestier",
      name: "Romain Sestier",
      passthrough: {
        "synthesize": "<value>",
      },
      phone_number: "+1234567890",
      social_links: [
        ::StackOne::Shared::SocialLink.new(
          type: "linkedin",
          url: "https://www.linkedin.com/in/romainsestier/",
        ),
      ],
      title: "Software Engineer",
    ),
    candidate_id: "e3cb75bf-aa84-466e-a6c1-b8322b257a48",
    job_id: "4071538b-3cac-4fbf-ac76-f78ed250ffdd",
    location_id: "dd8d41d1-5eb8-4408-9c87-9ba44604eae4",
    passthrough: {
      "Global": "<value>",
    },
    questionnaires: [
      ::StackOne::Shared::Questionnaire.new(
        answers: [
          ::StackOne::Shared::Answer.new(
            id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
            remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
            type: ::StackOne::Shared::Type.new(
              source_value: "Short Text",
              value: ::StackOne::Shared::AnswerValue::SHORT_TEXT,
            ),
            values: [
              "<value>",
            ],
          ),
        ],
        id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
        remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      ),
    ],
    source: ::StackOne::Shared::AtsCreateApplicationRequestDtoSource.new(
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "LinkedIn",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    ),
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `ats_create_application_request_dto`                                                                        | [::StackOne::Shared::AtsCreateApplicationRequestDto](../../models/shared/atscreateapplicationrequestdto.md) | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `x_account_id`                                                                                              | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The account identifier                                                                                      |


### Response

**[T.nilable(::StackOne::Operations::AtsCreateApplicationResponse)](../../models/operations/atscreateapplicationresponse.md)**


## create_candidate

Create Candidate

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.create_candidate(ats_create_candidate_request_dto=::StackOne::Shared::AtsCreateCandidateRequestDto.new(
    company: "Company Inc.",
    country: "United States",
    email: "sestier.romain123@gmail.com",
    first_name: "Romain",
    hired_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    last_name: "Sestier",
    name: "Romain Sestier",
    passthrough: {
      "discrete": "<value>",
    },
    phone_number: "+1234567890",
    social_links: [
      ::StackOne::Shared::SocialLink.new(
        type: "linkedin",
        url: "https://www.linkedin.com/in/romainsestier/",
      ),
    ],
    title: "Software Engineer",
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `ats_create_candidate_request_dto`                                                                      | [::StackOne::Shared::AtsCreateCandidateRequestDto](../../models/shared/atscreatecandidaterequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |


### Response

**[T.nilable(::StackOne::Operations::AtsCreateCandidateResponse)](../../models/operations/atscreatecandidateresponse.md)**


## create_candidate_note

Create Candidate Note

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.create_candidate_note(ats_create_notes_request_dto=::StackOne::Shared::AtsCreateNotesRequestDto.new(
    author_id: "1234567890",
    content: [
      ::StackOne::Shared::NoteContentApiModel.new(
        body: "This candidate seems like a good fit for the role",
      ),
    ],
    passthrough: {
      "Freeway": "<value>",
    },
    visibility: ::StackOne::Shared::Visibility.new(
      source_value: "Public",
      value: ::StackOne::Shared::AtsCreateNotesRequestDtoValue::PUBLIC,
    ),
  ), id="<value>", x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `ats_create_notes_request_dto`                                                                  | [::StackOne::Shared::AtsCreateNotesRequestDto](../../models/shared/atscreatenotesrequestdto.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `id`                                                                                            | *::String*                                                                                      | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `x_account_id`                                                                                  | *::String*                                                                                      | :heavy_check_mark:                                                                              | The account identifier                                                                          |


### Response

**[T.nilable(::StackOne::Operations::AtsCreateCandidateNoteResponse)](../../models/operations/atscreatecandidatenoteresponse.md)**


## create_offer

Creates an offer

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.create_offer(ats_create_offer_request_dto=::StackOne::Shared::AtsCreateOfferRequestDto.new(
    offer_history: [
      ::StackOne::Shared::OfferHistory.new(
        created_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
        updated_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
      ),
    ],
    offer_status: ::StackOne::Shared::OfferStatus.new(
      source_value: "Pending",
      value: ::StackOne::Shared::AtsCreateOfferRequestDtoValue::PENDING,
    ),
    passthrough: {
      "quas": "<value>",
    },
    start_date: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
  ), x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `ats_create_offer_request_dto`                                                                  | [::StackOne::Shared::AtsCreateOfferRequestDto](../../models/shared/atscreateofferrequestdto.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `x_account_id`                                                                                  | *::String*                                                                                      | :heavy_check_mark:                                                                              | The account identifier                                                                          |


### Response

**[T.nilable(::StackOne::Operations::AtsCreateOfferResponse)](../../models/operations/atscreateofferresponse.md)**


## download_application_document

Download Application Document

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.download_application_document(id="<value>", sub_resource_id="<value>", x_account_id="<value>", format="base64")

if ! res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                          | Type                               | Required                           | Description                        | Example                            |
| ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- | ---------------------------------- |
| `id`                               | *::String*                         | :heavy_check_mark:                 | N/A                                |                                    |
| `sub_resource_id`                  | *::String*                         | :heavy_check_mark:                 | N/A                                |                                    |
| `x_account_id`                     | *::String*                         | :heavy_check_mark:                 | The account identifier             |                                    |
| `format`                           | *::String*                         | :heavy_minus_sign:                 | The format to download the file in | base64                             |


### Response

**[T.nilable(::StackOne::Operations::AtsDownloadApplicationDocumentResponse)](../../models/operations/atsdownloadapplicationdocumentresponse.md)**


## get_application

Get Application

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetApplicationRequest.new(
  expand: "documents",
  fields_: "id,remote_id,candidate_id,remote_candidate_id,job_id,remote_job_id,interview_stage,interview_stage_id,remote_interview_stage_id,rejected_reason,rejected_reason_id,remote_rejected_reason_id,rejected_reason_ids,remote_rejected_reason_ids,rejected_reasons,rejected_at,location_id,remote_location_id,location_ids,remote_location_ids,status,application_status,questionnaires,attachments,result_links,source,created_at,updated_at,documents,candidate",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_application(req)

if ! res.application_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::StackOne::Operations::AtsGetApplicationRequest](../../models/operations/atsgetapplicationrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::StackOne::Operations::AtsGetApplicationResponse)](../../models/operations/atsgetapplicationresponse.md)**


## get_application_document

Get Application Document

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetApplicationDocumentRequest.new(
  fields_: "id,remote_id,name,path,type,category,contents,created_at,updated_at,remote_url,file_format",
  id: "<id>",
  sub_resource_id: "<value>",
  x_account_id: "<value>",
)
    
res = s.ats.get_application_document(req)

if ! res.ats_document_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::StackOne::Operations::AtsGetApplicationDocumentRequest](../../models/operations/atsgetapplicationdocumentrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(::StackOne::Operations::AtsGetApplicationDocumentResponse)](../../models/operations/atsgetapplicationdocumentresponse.md)**


## get_application_offer

Get Application Offer

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetApplicationOfferRequest.new(
  fields_: "id,remote_id,application_id,remote_application_id,start_date,status,offer_status,salary,currency,created_at,updated_at,offer_history",
  id: "<id>",
  sub_resource_id: "<value>",
  x_account_id: "<value>",
)
    
res = s.ats.get_application_offer(req)

if ! res.offers_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::StackOne::Operations::AtsGetApplicationOfferRequest](../../models/operations/atsgetapplicationofferrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::StackOne::Operations::AtsGetApplicationOfferResponse)](../../models/operations/atsgetapplicationofferresponse.md)**


## get_application_scorecard

Get Application Scorecard

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetApplicationScorecardRequest.new(
  fields_: "id,remote_id,sections,label,candidate_id,remote_candidate_id,application_id,remote_application_id,interview_id,remote_interview_id,author_id,remote_author_id,overall_recommendation,created_at,updated_at",
  id: "<id>",
  sub_resource_id: "<value>",
  x_account_id: "<value>",
)
    
res = s.ats.get_application_scorecard(req)

if ! res.scorecards_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::StackOne::Operations::AtsGetApplicationScorecardRequest](../../models/operations/atsgetapplicationscorecardrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |


### Response

**[T.nilable(::StackOne::Operations::AtsGetApplicationScorecardResponse)](../../models/operations/atsgetapplicationscorecardresponse.md)**


## get_assessments_package

Get Assessments Package

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetAssessmentsPackageRequest.new(
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_assessments_package(req)

if ! res.assessments_packages_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::StackOne::Operations::AtsGetAssessmentsPackageRequest](../../models/operations/atsgetassessmentspackagerequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::StackOne::Operations::AtsGetAssessmentsPackageResponse)](../../models/operations/atsgetassessmentspackageresponse.md)**


## get_candidate

Get Candidate

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetCandidateRequest.new(
  fields_: "id,remote_id,name,first_name,last_name,email,emails,social_links,phone,phone_numbers,company,title,application_ids,remote_application_ids,hired_at,created_at,updated_at",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_candidate(req)

if ! res.candidate_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::StackOne::Operations::AtsGetCandidateRequest](../../models/operations/atsgetcandidaterequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(::StackOne::Operations::AtsGetCandidateResponse)](../../models/operations/atsgetcandidateresponse.md)**


## get_candidate_note

Get Candidate Note

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetCandidateNoteRequest.new(
  fields_: "id,remote_id,content,author_id,remote_author_id,visibility,created_at,updated_at,deleted_at",
  id: "<id>",
  sub_resource_id: "<value>",
  x_account_id: "<value>",
)
    
res = s.ats.get_candidate_note(req)

if ! res.note_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::StackOne::Operations::AtsGetCandidateNoteRequest](../../models/operations/atsgetcandidatenoterequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::StackOne::Operations::AtsGetCandidateNoteResponse)](../../models/operations/atsgetcandidatenoteresponse.md)**


## get_department

Get Department

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetDepartmentRequest.new(
  fields_: "id,remote_id,name",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_department(req)

if ! res.department_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::StackOne::Operations::AtsGetDepartmentRequest](../../models/operations/atsgetdepartmentrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(::StackOne::Operations::AtsGetDepartmentResponse)](../../models/operations/atsgetdepartmentresponse.md)**


## get_interview

Get Interview

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetInterviewRequest.new(
  fields_: "id,remote_id,application_id,remote_application_id,interview_stage_id,remote_interview_stage_id,interview_stage,status,interview_status,interviewer_ids,remote_interviewer_ids,interview_parts,interviewers,start_at,end_at,meeting_url,created_at,updated_at",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_interview(req)

if ! res.interviews_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::StackOne::Operations::AtsGetInterviewRequest](../../models/operations/atsgetinterviewrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(::StackOne::Operations::AtsGetInterviewResponse)](../../models/operations/atsgetinterviewresponse.md)**


## get_interview_stage

Get Interview Stage

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetInterviewStageRequest.new(
  fields_: "id,remote_id,name,order,created_at,updated_at",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_interview_stage(req)

if ! res.interview_stage_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::StackOne::Operations::AtsGetInterviewStageRequest](../../models/operations/atsgetinterviewstagerequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::StackOne::Operations::AtsGetInterviewStageResponse)](../../models/operations/atsgetinterviewstageresponse.md)**


## get_job

Get Job

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetJobRequest.new(
  expand: "job_postings,interview_stages",
  fields_: "id,remote_id,code,title,status,job_status,department_ids,remote_department_ids,location_ids,remote_location_ids,hiring_team,interview_stages,confidential,created_at,updated_at",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_job(req)

if ! res.job_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [::StackOne::Operations::AtsGetJobRequest](../../models/operations/atsgetjobrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(::StackOne::Operations::AtsGetJobResponse)](../../models/operations/atsgetjobresponse.md)**


## get_job_posting

Get Job Posting

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetJobPostingRequest.new(
  fields_: "id,remote_id,title,locations,internal,status,job_id,remote_job_id,content,compensation,employment_type,employment_contract_type,external_url,external_apply_url,questionnaires,updated_at,created_at",
  id: "<id>",
  include: "questionnaires",
  x_account_id: "<value>",
)
    
res = s.ats.get_job_posting(req)

if ! res.job_posting_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::StackOne::Operations::AtsGetJobPostingRequest](../../models/operations/atsgetjobpostingrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(::StackOne::Operations::AtsGetJobPostingResponse)](../../models/operations/atsgetjobpostingresponse.md)**


## get_list

Get List

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetListRequest.new(
  fields_: "id,remote_id,name,created_at,updated_at,items,type",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_list(req)

if ! res.list_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::StackOne::Operations::AtsGetListRequest](../../models/operations/atsgetlistrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::StackOne::Operations::AtsGetListResponse)](../../models/operations/atsgetlistresponse.md)**


## get_location

Get Location

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetLocationRequest.new(
  fields_: "id,remote_id,name",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_location(req)

if ! res.ats_location_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::StackOne::Operations::AtsGetLocationRequest](../../models/operations/atsgetlocationrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::StackOne::Operations::AtsGetLocationResponse)](../../models/operations/atsgetlocationresponse.md)**


## get_offer

Get Offer

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetOfferRequest.new(
  fields_: "id,remote_id,application_id,remote_application_id,start_date,status,offer_status,salary,currency,created_at,updated_at,offer_history",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_offer(req)

if ! res.offers_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::StackOne::Operations::AtsGetOfferRequest](../../models/operations/atsgetofferrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(::StackOne::Operations::AtsGetOfferResponse)](../../models/operations/atsgetofferresponse.md)**


## get_rejected_reason

Get Rejected Reason

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetRejectedReasonRequest.new(
  fields_: "id,remote_id,label,type,rejected_reason_type",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_rejected_reason(req)

if ! res.rejected_reason_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::StackOne::Operations::AtsGetRejectedReasonRequest](../../models/operations/atsgetrejectedreasonrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::StackOne::Operations::AtsGetRejectedReasonResponse)](../../models/operations/atsgetrejectedreasonresponse.md)**


## get_user

Get User

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsGetUserRequest.new(
  fields_: "id,remote_id,first_name,last_name,name,email",
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.get_user(req)

if ! res.user_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [::StackOne::Operations::AtsGetUserRequest](../../models/operations/atsgetuserrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(::StackOne::Operations::AtsGetUserResponse)](../../models/operations/atsgetuserresponse.md)**


## list_application_documents

List Application Documents

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListApplicationDocumentsRequest.new(
  fields_: "id,remote_id,name,path,type,category,contents,created_at,updated_at,remote_url,file_format",
  filter: ::StackOne::Operations::Filter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.list_application_documents(req)

if ! res.ats_documents_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::StackOne::Operations::AtsListApplicationDocumentsRequest](../../models/operations/atslistapplicationdocumentsrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |


### Response

**[T.nilable(::StackOne::Operations::AtsListApplicationDocumentsResponse)](../../models/operations/atslistapplicationdocumentsresponse.md)**


## list_application_scorecards

List Application Scorecards

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListApplicationScorecardsRequest.new(
  fields_: "id,remote_id,sections,label,candidate_id,remote_candidate_id,application_id,remote_application_id,interview_id,remote_interview_id,author_id,remote_author_id,overall_recommendation,created_at,updated_at",
  filter: ::StackOne::Operations::QueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.list_application_scorecards(req)

if ! res.scorecards_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [::StackOne::Operations::AtsListApplicationScorecardsRequest](../../models/operations/atslistapplicationscorecardsrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |


### Response

**[T.nilable(::StackOne::Operations::AtsListApplicationScorecardsResponse)](../../models/operations/atslistapplicationscorecardsresponse.md)**


## list_applications

List Applications

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListApplicationsRequest.new(
  expand: "documents",
  fields_: "id,remote_id,candidate_id,remote_candidate_id,job_id,remote_job_id,interview_stage,interview_stage_id,remote_interview_stage_id,rejected_reason,rejected_reason_id,remote_rejected_reason_id,rejected_reason_ids,remote_rejected_reason_ids,rejected_reasons,rejected_at,location_id,remote_location_id,location_ids,remote_location_ids,status,application_status,questionnaires,attachments,result_links,source,created_at,updated_at,documents,candidate",
  filter: ::StackOne::Operations::AtsListApplicationsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_applications(req)

if ! res.applications_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::StackOne::Operations::AtsListApplicationsRequest](../../models/operations/atslistapplicationsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::StackOne::Operations::AtsListApplicationsResponse)](../../models/operations/atslistapplicationsresponse.md)**


## list_applications_offers

List Application Offers

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListApplicationsOffersRequest.new(
  fields_: "id,remote_id,application_id,remote_application_id,start_date,status,offer_status,salary,currency,created_at,updated_at,offer_history",
  filter: ::StackOne::Operations::AtsListApplicationsOffersQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.list_applications_offers(req)

if ! res.offers_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::StackOne::Operations::AtsListApplicationsOffersRequest](../../models/operations/atslistapplicationsoffersrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(::StackOne::Operations::AtsListApplicationsOffersResponse)](../../models/operations/atslistapplicationsoffersresponse.md)**


## list_assessments_packages

List Assessments Packages

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListAssessmentsPackagesRequest.new(
  filter: ::StackOne::Operations::AtsListAssessmentsPackagesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_assessments_packages(req)

if ! res.assessments_packages_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::StackOne::Operations::AtsListAssessmentsPackagesRequest](../../models/operations/atslistassessmentspackagesrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |


### Response

**[T.nilable(::StackOne::Operations::AtsListAssessmentsPackagesResponse)](../../models/operations/atslistassessmentspackagesresponse.md)**


## list_candidate_notes

List Candidate Notes

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListCandidateNotesRequest.new(
  fields_: "id,remote_id,content,author_id,remote_author_id,visibility,created_at,updated_at,deleted_at",
  filter: ::StackOne::Operations::AtsListCandidateNotesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  id: "<id>",
  x_account_id: "<value>",
)
    
res = s.ats.list_candidate_notes(req)

if ! res.notes_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::StackOne::Operations::AtsListCandidateNotesRequest](../../models/operations/atslistcandidatenotesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |


### Response

**[T.nilable(::StackOne::Operations::AtsListCandidateNotesResponse)](../../models/operations/atslistcandidatenotesresponse.md)**


## list_candidates

List Candidates

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListCandidatesRequest.new(
  fields_: "id,remote_id,name,first_name,last_name,email,emails,social_links,phone,phone_numbers,company,title,application_ids,remote_application_ids,hired_at,created_at,updated_at",
  filter: ::StackOne::Operations::AtsListCandidatesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_candidates(req)

if ! res.candidates_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::StackOne::Operations::AtsListCandidatesRequest](../../models/operations/atslistcandidatesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::StackOne::Operations::AtsListCandidatesResponse)](../../models/operations/atslistcandidatesresponse.md)**


## list_departments

List Departments

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListDepartmentsRequest.new(
  fields_: "id,remote_id,name",
  filter: ::StackOne::Operations::AtsListDepartmentsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_departments(req)

if ! res.departments_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::StackOne::Operations::AtsListDepartmentsRequest](../../models/operations/atslistdepartmentsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |


### Response

**[T.nilable(::StackOne::Operations::AtsListDepartmentsResponse)](../../models/operations/atslistdepartmentsresponse.md)**


## list_interview_stages

List Interview Stages

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListInterviewStagesRequest.new(
  fields_: "id,remote_id,name,order,created_at,updated_at",
  filter: ::StackOne::Operations::AtsListInterviewStagesQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_interview_stages(req)

if ! res.interview_stages_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::StackOne::Operations::AtsListInterviewStagesRequest](../../models/operations/atslistinterviewstagesrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::StackOne::Operations::AtsListInterviewStagesResponse)](../../models/operations/atslistinterviewstagesresponse.md)**


## list_interviews

List Interviews

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListInterviewsRequest.new(
  fields_: "id,remote_id,application_id,remote_application_id,interview_stage_id,remote_interview_stage_id,interview_stage,status,interview_status,interviewer_ids,remote_interviewer_ids,interview_parts,interviewers,start_at,end_at,meeting_url,created_at,updated_at",
  filter: ::StackOne::Operations::AtsListInterviewsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_interviews(req)

if ! res.interviews_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::StackOne::Operations::AtsListInterviewsRequest](../../models/operations/atslistinterviewsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::StackOne::Operations::AtsListInterviewsResponse)](../../models/operations/atslistinterviewsresponse.md)**


## list_job_postings

List Job Postings

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListJobPostingsRequest.new(
  fields_: "id,remote_id,title,locations,internal,status,job_id,remote_job_id,content,compensation,employment_type,employment_contract_type,external_url,external_apply_url,questionnaires,updated_at,created_at",
  filter: ::StackOne::Operations::AtsListJobPostingsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  include: "questionnaires",
  x_account_id: "<value>",
)
    
res = s.ats.list_job_postings(req)

if ! res.job_postings_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::StackOne::Operations::AtsListJobPostingsRequest](../../models/operations/atslistjobpostingsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |


### Response

**[T.nilable(::StackOne::Operations::AtsListJobPostingsResponse)](../../models/operations/atslistjobpostingsresponse.md)**


## list_jobs

List Jobs

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListJobsRequest.new(
  expand: "job_postings,interview_stages",
  fields_: "id,remote_id,code,title,status,job_status,department_ids,remote_department_ids,location_ids,remote_location_ids,hiring_team,interview_stages,confidential,created_at,updated_at",
  filter: ::StackOne::Operations::AtsListJobsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_jobs(req)

if ! res.jobs_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::StackOne::Operations::AtsListJobsRequest](../../models/operations/atslistjobsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(::StackOne::Operations::AtsListJobsResponse)](../../models/operations/atslistjobsresponse.md)**


## list_lists

Get all Lists

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListListsRequest.new(
  fields_: "id,remote_id,name,created_at,updated_at,items,type",
  filter: ::StackOne::Operations::AtsListListsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_lists(req)

if ! res.lists_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::AtsListListsRequest](../../models/operations/atslistlistsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(::StackOne::Operations::AtsListListsResponse)](../../models/operations/atslistlistsresponse.md)**


## list_locations

List locations

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListLocationsRequest.new(
  fields_: "id,remote_id,name",
  filter: ::StackOne::Operations::AtsListLocationsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_locations(req)

if ! res.ats_locations_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::StackOne::Operations::AtsListLocationsRequest](../../models/operations/atslistlocationsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(::StackOne::Operations::AtsListLocationsResponse)](../../models/operations/atslistlocationsresponse.md)**


## list_offers

List Offers

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListOffersRequest.new(
  fields_: "id,remote_id,application_id,remote_application_id,start_date,status,offer_status,salary,currency,created_at,updated_at,offer_history",
  filter: ::StackOne::Operations::AtsListOffersQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_offers(req)

if ! res.offers_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::StackOne::Operations::AtsListOffersRequest](../../models/operations/atslistoffersrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(::StackOne::Operations::AtsListOffersResponse)](../../models/operations/atslistoffersresponse.md)**


## list_rejected_reasons

List Rejected Reasons

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListRejectedReasonsRequest.new(
  fields_: "id,remote_id,label,type,rejected_reason_type",
  filter: ::StackOne::Operations::AtsListRejectedReasonsQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_rejected_reasons(req)

if ! res.rejected_reasons_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::StackOne::Operations::AtsListRejectedReasonsRequest](../../models/operations/atslistrejectedreasonsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::StackOne::Operations::AtsListRejectedReasonsResponse)](../../models/operations/atslistrejectedreasonsresponse.md)**


## list_users

List Users

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)


req = ::StackOne::Operations::AtsListUsersRequest.new(
  fields_: "id,remote_id,first_name,last_name,name,email",
  filter: ::StackOne::Operations::AtsListUsersQueryParamFilter.new(
    updated_after: "2020-01-01T00:00:00.000Z",
  ),
  x_account_id: "<value>",
)
    
res = s.ats.list_users(req)

if ! res.users_paginated.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::StackOne::Operations::AtsListUsersRequest](../../models/operations/atslistusersrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(::StackOne::Operations::AtsListUsersResponse)](../../models/operations/atslistusersresponse.md)**


## update_application

Update an Application

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.update_application(ats_update_application_request_dto=::StackOne::Shared::AtsUpdateApplicationRequestDto.new(
    application_status: ::StackOne::Shared::AtsUpdateApplicationRequestDtoApplicationStatus.new(
      source_value: "Hired",
      value: ::StackOne::Shared::AtsUpdateApplicationRequestDtoValue::HIRED,
    ),
    interview_stage_id: "18bcbb1b-3cbc-4198-a999-460861d19480",
    passthrough: {
      "Licensed": "<value>",
    },
    rejected_reason_id: "f223d7f6-908b-48f0-9237-b201c307f609",
    source: ::StackOne::Shared::AtsUpdateApplicationRequestDtoSource.new(
      id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
      name: "LinkedIn",
      remote_id: "8187e5da-dc77-475e-9949-af0f1fa4e4e3",
    ),
  ), id="<value>", x_account_id="<value>")

if ! res.update_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `ats_update_application_request_dto`                                                                        | [::StackOne::Shared::AtsUpdateApplicationRequestDto](../../models/shared/atsupdateapplicationrequestdto.md) | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `id`                                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | N/A                                                                                                         |
| `x_account_id`                                                                                              | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | The account identifier                                                                                      |


### Response

**[T.nilable(::StackOne::Operations::AtsUpdateApplicationResponse)](../../models/operations/atsupdateapplicationresponse.md)**


## update_candidate

Update Candidate

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.update_candidate(ats_update_candidate_request_dto=::StackOne::Shared::AtsUpdateCandidateRequestDto.new(
    application_ids: [
      "<value>",
    ],
    company: "Company Inc.",
    country: "United States",
    email: "sestier.romain123@gmail.com",
    emails: [
      ::StackOne::Shared::CandidateEmail.new(
        type: "personal",
        value: "sestier.romain123@gmail.com",
      ),
    ],
    first_name: "Romain",
    hired_at: DateTime.iso8601('2021-01-01T01:01:01.000Z'),
    last_name: "Sestier",
    name: "Romain Sestier",
    passthrough: {
      "Extended": "<value>",
    },
    phone_numbers: [
      ::StackOne::Shared::PhoneNumber.new(
        phone: "+447700112233",
      ),
    ],
    social_links: [
      ::StackOne::Shared::SocialLink.new(
        type: "linkedin",
        url: "https://www.linkedin.com/in/romainsestier/",
      ),
    ],
    title: "Software Engineer",
  ), id="<value>", x_account_id="<value>")

if ! res.create_result.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `ats_update_candidate_request_dto`                                                                      | [::StackOne::Shared::AtsUpdateCandidateRequestDto](../../models/shared/atsupdatecandidaterequestdto.md) | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `id`                                                                                                    | *::String*                                                                                              | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `x_account_id`                                                                                          | *::String*                                                                                              | :heavy_check_mark:                                                                                      | The account identifier                                                                                  |


### Response

**[T.nilable(::StackOne::Operations::AtsUpdateCandidateResponse)](../../models/operations/atsupdatecandidateresponse.md)**


## upload_application_document

Upload Application Document

### Example Usage

```ruby
require 'stackone_client'


s = ::StackOne::StackOne.new
s.config_security(
  ::StackOne::Shared::Security.new(
    password: "<YOUR_PASSWORD_HERE>",
  )
)

    
res = s.ats.upload_application_document(unified_upload_request_dto=::StackOne::Shared::UnifiedUploadRequestDto.new(
    category: ::StackOne::Shared::UnifiedUploadRequestDtoCategory.new(
      source_value: "550e8400-e29b-41d4-a716-446655440000, CUSTOM_CATEGORY_NAME",
      value: "reports, resumes",
    ),
    confidential: ::StackOne::Shared::UnifiedUploadRequestDtoConfidential.new(
      source_value: "public",
      value: ::StackOne::Shared::UnifiedUploadRequestDtoValue::TRUE,
    ),
    content: "VGhpcyBpc24ndCByZWFsbHkgYSBzYW1wbGUgZmlsZSwgYnV0IG5vIG9uZSB3aWxsIGV2ZXIga25vdyE",
    file_format: ::StackOne::Shared::UnifiedUploadRequestDtoFileFormat.new(
      source_value: "abc",
      value: ::StackOne::Shared::UnifiedUploadRequestDtoSchemasValue::PDF,
    ),
    name: "weather-forecast",
    path: "/path/to/file",
  ), id="<value>", x_account_id="<value>")

if ! res.write_result_api_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `unified_upload_request_dto`                                                                  | [::StackOne::Shared::UnifiedUploadRequestDto](../../models/shared/unifieduploadrequestdto.md) | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `id`                                                                                          | *::String*                                                                                    | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `x_account_id`                                                                                | *::String*                                                                                    | :heavy_check_mark:                                                                            | The account identifier                                                                        |


### Response

**[T.nilable(::StackOne::Operations::AtsUploadApplicationDocumentResponse)](../../models/operations/atsuploadapplicationdocumentresponse.md)**

