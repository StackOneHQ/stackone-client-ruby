# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Job < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Code of the job
      field :code, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('code') } }
      # Confidential status of the job
      field :confidential, T.nilable(::StackOne::Shared::JobConfidential), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('confidential'), 'decoder': Utils.enum_from_string(::StackOne::Shared::JobConfidential, true) } }
      # Date of creation
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The job custom fields
      field :custom_fields, T.nilable(T::Array[::StackOne::Shared::JobCustomFields]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('custom_fields') } }
      # Department ids of the job
      field :department_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('department_ids') } }
      # Hiring team for the job.
      field :hiring_team, T.nilable(T::Array[::StackOne::Shared::JobHiringTeam]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hiring_team') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Interview stages for the job.
      field :interview_stages, T.nilable(T::Array[::StackOne::Shared::InterviewStage]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_stages') } }
      # Status of the job
      field :job_status, T.nilable(::StackOne::Shared::JobStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_status') } }
      # Location ids of the job
      field :location_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('location_ids') } }
      # Provider's department ids of the job
      field :remote_department_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_department_ids') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Provider's location ids of the job
      field :remote_location_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_location_ids') } }
      # Status of the job
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :status, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status') } }
      # Title of the job
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }
      # Date of last update
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(code: T.nilable(::String), confidential: T.nilable(::StackOne::Shared::JobConfidential), created_at: T.nilable(::DateTime), custom_fields: T.nilable(T::Array[::StackOne::Shared::JobCustomFields]), department_ids: T.nilable(T::Array[::String]), hiring_team: T.nilable(T::Array[::StackOne::Shared::JobHiringTeam]), id: T.nilable(::String), interview_stages: T.nilable(T::Array[::StackOne::Shared::InterviewStage]), job_status: T.nilable(::StackOne::Shared::JobStatus), location_ids: T.nilable(T::Array[::String]), remote_department_ids: T.nilable(T::Array[::String]), remote_id: T.nilable(::String), remote_location_ids: T.nilable(T::Array[::String]), status: T.nilable(::String), title: T.nilable(::String), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime)).void }
      def initialize(code: nil, confidential: nil, created_at: nil, custom_fields: nil, department_ids: nil, hiring_team: nil, id: nil, interview_stages: nil, job_status: nil, location_ids: nil, remote_department_ids: nil, remote_id: nil, remote_location_ids: nil, status: nil, title: nil, unified_custom_fields: nil, updated_at: nil)
        @code = code
        @confidential = confidential
        @created_at = created_at
        @custom_fields = custom_fields
        @department_ids = department_ids
        @hiring_team = hiring_team
        @id = id
        @interview_stages = interview_stages
        @job_status = job_status
        @location_ids = location_ids
        @remote_department_ids = remote_department_ids
        @remote_id = remote_id
        @remote_location_ids = remote_location_ids
        @status = status
        @title = title
        @unified_custom_fields = unified_custom_fields
        @updated_at = updated_at
      end
    end
  end
end
