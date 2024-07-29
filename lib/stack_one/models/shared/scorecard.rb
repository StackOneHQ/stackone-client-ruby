# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Scorecard < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The application ID associated with the scorecard
      field :application_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_id') } }
      # The author ID of the scorecard
      field :author_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('author_id') } }
      # The candidate ID associated with the scorecard
      field :candidate_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('candidate_id') } }
      # The creation date of the scorecard
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The interview ID associated with the scorecard
      field :interview_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_id') } }
      # The label of the scorecard
      field :label, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('label') } }
      # The overall recommendation
      field :overall_recommendation, T.nilable(::StackOne::Shared::OverallRecommendation), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('overall_recommendation'), 'decoder': Utils.enum_from_string(::StackOne::Shared::OverallRecommendation, true) } }
      # Provider's unique identifier of the application
      field :remote_application_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_application_id') } }
      # Provider's unique identifier of the author
      field :remote_author_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_author_id') } }
      # Provider's unique identifier of the candidate
      field :remote_candidate_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_candidate_id') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Provider's unique identifier of the interview
      field :remote_interview_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_interview_id') } }
      # The sections in the scorecard
      field :sections, T.nilable(T::Array[::StackOne::Shared::ScorecardSection]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('sections') } }
      # The update date of the scorecard
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(application_id: T.nilable(::String), author_id: T.nilable(::String), candidate_id: T.nilable(::String), created_at: T.nilable(::DateTime), id: T.nilable(::String), interview_id: T.nilable(::String), label: T.nilable(::String), overall_recommendation: T.nilable(::StackOne::Shared::OverallRecommendation), remote_application_id: T.nilable(::String), remote_author_id: T.nilable(::String), remote_candidate_id: T.nilable(::String), remote_id: T.nilable(::String), remote_interview_id: T.nilable(::String), sections: T.nilable(T::Array[::StackOne::Shared::ScorecardSection]), updated_at: T.nilable(::DateTime)).void }
      def initialize(application_id: nil, author_id: nil, candidate_id: nil, created_at: nil, id: nil, interview_id: nil, label: nil, overall_recommendation: nil, remote_application_id: nil, remote_author_id: nil, remote_candidate_id: nil, remote_id: nil, remote_interview_id: nil, sections: nil, updated_at: nil)
        @application_id = application_id
        @author_id = author_id
        @candidate_id = candidate_id
        @created_at = created_at
        @id = id
        @interview_id = interview_id
        @label = label
        @overall_recommendation = overall_recommendation
        @remote_application_id = remote_application_id
        @remote_author_id = remote_author_id
        @remote_candidate_id = remote_candidate_id
        @remote_id = remote_id
        @remote_interview_id = remote_interview_id
        @sections = sections
        @updated_at = updated_at
      end
    end
  end
end
