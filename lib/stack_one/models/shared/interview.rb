# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Interview < ::Crystalline::FieldAugmented
      extend T::Sig


      field :application_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_id') } }
      # Interview created date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Interview end date
      field :end_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :interview_parts, T.nilable(T::Array[::StackOne::Shared::InterviewPart]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_parts') } }

      field :interview_stage, T.nilable(::StackOne::Shared::InterviewInterviewStage), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_stage') } }

      field :interview_stage_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_stage_id') } }

      field :interview_status, T.nilable(::StackOne::Shared::InterviewStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_status') } }

      field :interviewer_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interviewer_ids') } }

      field :interviewers, T.nilable(T::Array[::StackOne::Shared::Interviewer]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interviewers') } }

      field :meeting_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('meeting_url') } }
      # Provider's unique identifier of the application
      field :remote_application_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_application_id') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Provider's unique identifier of the interview stage
      field :remote_interview_stage_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_interview_stage_id') } }
      # Provider's unique identifiers of the interviewers
      field :remote_interviewer_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_interviewer_ids') } }
      # Interview start date
      field :start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }
      # Interview updated date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(application_id: T.nilable(::String), created_at: T.nilable(::DateTime), end_at: T.nilable(::DateTime), id: T.nilable(::String), interview_parts: T.nilable(T::Array[::StackOne::Shared::InterviewPart]), interview_stage: T.nilable(::StackOne::Shared::InterviewInterviewStage), interview_stage_id: T.nilable(::String), interview_status: T.nilable(::StackOne::Shared::InterviewStatus), interviewer_ids: T.nilable(T::Array[::String]), interviewers: T.nilable(T::Array[::StackOne::Shared::Interviewer]), meeting_url: T.nilable(::String), remote_application_id: T.nilable(::String), remote_id: T.nilable(::String), remote_interview_stage_id: T.nilable(::String), remote_interviewer_ids: T.nilable(T::Array[::String]), start_at: T.nilable(::DateTime), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime)).void }
      def initialize(application_id: nil, created_at: nil, end_at: nil, id: nil, interview_parts: nil, interview_stage: nil, interview_stage_id: nil, interview_status: nil, interviewer_ids: nil, interviewers: nil, meeting_url: nil, remote_application_id: nil, remote_id: nil, remote_interview_stage_id: nil, remote_interviewer_ids: nil, start_at: nil, unified_custom_fields: nil, updated_at: nil)
        @application_id = application_id
        @created_at = created_at
        @end_at = end_at
        @id = id
        @interview_parts = interview_parts
        @interview_stage = interview_stage
        @interview_stage_id = interview_stage_id
        @interview_status = interview_status
        @interviewer_ids = interviewer_ids
        @interviewers = interviewers
        @meeting_url = meeting_url
        @remote_application_id = remote_application_id
        @remote_id = remote_id
        @remote_interview_stage_id = remote_interview_stage_id
        @remote_interviewer_ids = remote_interviewer_ids
        @start_at = start_at
        @unified_custom_fields = unified_custom_fields
        @updated_at = updated_at
      end
    end
  end
end
