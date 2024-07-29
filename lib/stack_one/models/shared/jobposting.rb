# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class JobPosting < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :compensation, T.nilable(T::Array[::StackOne::Shared::JobPostingCompensation]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('compensation') } }

      field :content, T.nilable(::StackOne::Shared::JobPostingContent), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content') } }
      # Date of creation
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :employment_contract_type, T.nilable(::StackOne::Shared::JobPostingEmploymentContractType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_contract_type') } }

      field :employment_type, T.nilable(::StackOne::Shared::JobPostingEmploymentType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_type') } }

      field :external_apply_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('external_apply_url') } }

      field :external_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('external_url') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :internal, T.nilable(::StackOne::Shared::Internal), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('internal'), 'decoder': Utils.enum_from_string(::StackOne::Shared::Internal, true) } }

      field :job_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_id') } }

      field :locations, T.nilable(T::Array[::StackOne::Shared::JobPostingLocation]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('locations') } }

      field :questionnaires, T.nilable(T::Array[::StackOne::Shared::JobPostingQuestionnaire]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('questionnaires') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Provider's unique identifier of the job posting
      field :remote_job_posting_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_job_posting_id') } }

      field :status, T.nilable(::StackOne::Shared::JobPostingStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }
      # Date of last update
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(compensation: T.nilable(T::Array[::StackOne::Shared::JobPostingCompensation]), content: T.nilable(::StackOne::Shared::JobPostingContent), created_at: T.nilable(::DateTime), employment_contract_type: T.nilable(::StackOne::Shared::JobPostingEmploymentContractType), employment_type: T.nilable(::StackOne::Shared::JobPostingEmploymentType), external_apply_url: T.nilable(::String), external_url: T.nilable(::String), id: T.nilable(::String), internal: T.nilable(::StackOne::Shared::Internal), job_id: T.nilable(::String), locations: T.nilable(T::Array[::StackOne::Shared::JobPostingLocation]), questionnaires: T.nilable(T::Array[::StackOne::Shared::JobPostingQuestionnaire]), remote_id: T.nilable(::String), remote_job_posting_id: T.nilable(::String), status: T.nilable(::StackOne::Shared::JobPostingStatus), title: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(compensation: nil, content: nil, created_at: nil, employment_contract_type: nil, employment_type: nil, external_apply_url: nil, external_url: nil, id: nil, internal: nil, job_id: nil, locations: nil, questionnaires: nil, remote_id: nil, remote_job_posting_id: nil, status: nil, title: nil, updated_at: nil)
        @compensation = compensation
        @content = content
        @created_at = created_at
        @employment_contract_type = employment_contract_type
        @employment_type = employment_type
        @external_apply_url = external_apply_url
        @external_url = external_url
        @id = id
        @internal = internal
        @job_id = job_id
        @locations = locations
        @questionnaires = questionnaires
        @remote_id = remote_id
        @remote_job_posting_id = remote_job_posting_id
        @status = status
        @title = title
        @updated_at = updated_at
      end
    end
  end
end
