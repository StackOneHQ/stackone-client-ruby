# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Interview < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :application_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_id') } }
      # Interview created date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Interview end date
      field :end_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :interview_parts, T.nilable(T::Array[::StackOne::Shared::InterviewPart]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_parts') } }

      field :interview_stage, T.nilable(::StackOne::Shared::InterviewInterviewStage), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_stage') } }

      field :interview_stage_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_stage_id') } }

      field :interview_status, T.nilable(::StackOne::Shared::InterviewStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_status') } }

      field :interviewer_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interviewer_ids') } }

      field :interviewers, T.nilable(T::Array[::StackOne::Shared::Interviewer]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interviewers') } }

      field :meeting_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('meeting_url') } }
      # Interview start date
      field :start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Interview updated date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(id: ::String, application_id: T.nilable(::String), created_at: T.nilable(::DateTime), end_at: T.nilable(::DateTime), interview_parts: T.nilable(T::Array[::StackOne::Shared::InterviewPart]), interview_stage: T.nilable(::StackOne::Shared::InterviewInterviewStage), interview_stage_id: T.nilable(::String), interview_status: T.nilable(::StackOne::Shared::InterviewStatus), interviewer_ids: T.nilable(T::Array[::String]), interviewers: T.nilable(T::Array[::StackOne::Shared::Interviewer]), meeting_url: T.nilable(::String), start_at: T.nilable(::DateTime), updated_at: T.nilable(::DateTime)).void }
      def initialize(id: nil, application_id: nil, created_at: nil, end_at: nil, interview_parts: nil, interview_stage: nil, interview_stage_id: nil, interview_status: nil, interviewer_ids: nil, interviewers: nil, meeting_url: nil, start_at: nil, updated_at: nil)
        @id = id
        @application_id = application_id
        @created_at = created_at
        @end_at = end_at
        @interview_parts = interview_parts
        @interview_stage = interview_stage
        @interview_stage_id = interview_stage_id
        @interview_status = interview_status
        @interviewer_ids = interviewer_ids
        @interviewers = interviewers
        @meeting_url = meeting_url
        @start_at = start_at
        @updated_at = updated_at
      end
    end
  end
end
