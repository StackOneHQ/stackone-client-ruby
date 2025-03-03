# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class InterviewPart < ::Crystalline::FieldAugmented
      extend T::Sig

      # Interview part created date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The specific interview part's end date
      field :end_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The user (interviewer) IDs taking part in this specific interview.
      field :interviewer_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interviewer_ids') } }
      # The video meeting provider used for the interview.
      field :meeting_provider, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('meeting_provider') } }
      # The meeting URL for the interview - this may be populated using the underlying location if the location string extracted is a valid url.
      field :meeting_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('meeting_url') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Provider's user (interviewer) IDs taking part in this specific interview.
      field :remote_interviewer_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_interviewer_ids') } }
      # The specific interview part's start date
      field :start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The title of interview, usually corresponding to the title of an associated calendar event
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }

      field :type, T.nilable(::StackOne::Shared::InterviewPartType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
      # Interview part updated date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(::DateTime), end_at: T.nilable(::DateTime), id: T.nilable(::String), interviewer_ids: T.nilable(T::Array[::String]), meeting_provider: T.nilable(::String), meeting_url: T.nilable(::String), remote_id: T.nilable(::String), remote_interviewer_ids: T.nilable(T::Array[::String]), start_at: T.nilable(::DateTime), title: T.nilable(::String), type: T.nilable(::StackOne::Shared::InterviewPartType), updated_at: T.nilable(::DateTime)).void }
      def initialize(created_at: nil, end_at: nil, id: nil, interviewer_ids: nil, meeting_provider: nil, meeting_url: nil, remote_id: nil, remote_interviewer_ids: nil, start_at: nil, title: nil, type: nil, updated_at: nil)
        @created_at = created_at
        @end_at = end_at
        @id = id
        @interviewer_ids = interviewer_ids
        @meeting_provider = meeting_provider
        @meeting_url = meeting_url
        @remote_id = remote_id
        @remote_interviewer_ids = remote_interviewer_ids
        @start_at = start_at
        @title = title
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
