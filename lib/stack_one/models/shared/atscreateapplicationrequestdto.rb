# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AtsCreateApplicationRequestDto < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :application_status, T.nilable(::StackOne::Shared::AtsCreateApplicationRequestDtoApplicationStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_status') } }

      field :candidate, T.nilable(::StackOne::Shared::AtsCreateApplicationRequestDtoCandidate), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('candidate') } }
      # Unique identifier of the candidate
      field :candidate_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('candidate_id') } }
      # Unique identifier of the job
      field :job_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_id') } }
      # Unique identifier of the location
      field :location_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('location_id') } }
      # Questionnaires associated with the application
      field :questionnaires, T.nilable(T::Array[::StackOne::Shared::Questionnaire]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('questionnaires') } }


      sig { params(application_status: T.nilable(::StackOne::Shared::AtsCreateApplicationRequestDtoApplicationStatus), candidate: T.nilable(::StackOne::Shared::AtsCreateApplicationRequestDtoCandidate), candidate_id: T.nilable(::String), job_id: T.nilable(::String), location_id: T.nilable(::String), questionnaires: T.nilable(T::Array[::StackOne::Shared::Questionnaire])).void }
      def initialize(application_status: nil, candidate: nil, candidate_id: nil, job_id: nil, location_id: nil, questionnaires: nil)
        @application_status = application_status
        @candidate = candidate
        @candidate_id = candidate_id
        @job_id = job_id
        @location_id = location_id
        @questionnaires = questionnaires
      end
    end
  end
end
