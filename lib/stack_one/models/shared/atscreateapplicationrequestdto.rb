# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AtsCreateApplicationRequestDto < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :application_status, T.nilable(::StackOne::Shared::AtsCreateApplicationRequestDtoApplicationStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_status') } }
      # Candidate Properties. Provide this OR candidate_id, but not both. Providing this attempts to create a new candidate with the application.
      field :candidate, T.nilable(::StackOne::Shared::AtsCreateApplicationRequestDtoCandidate), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('candidate') } }
      # Unique identifier of the candidate. Provide this OR candidate, but not both.
      field :candidate_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('candidate_id') } }
      # Unique identifier of the job
      field :job_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_id') } }
      # Unique identifier of the location
      field :location_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('location_id') } }
      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
      # Questionnaires associated with the application
      field :questionnaires, T.nilable(T::Array[::StackOne::Shared::Questionnaire]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('questionnaires') } }
      # Source of the application
      field :source, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source') } }


      sig { params(application_status: T.nilable(::StackOne::Shared::AtsCreateApplicationRequestDtoApplicationStatus), candidate: T.nilable(::StackOne::Shared::AtsCreateApplicationRequestDtoCandidate), candidate_id: T.nilable(::String), job_id: T.nilable(::String), location_id: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), questionnaires: T.nilable(T::Array[::StackOne::Shared::Questionnaire]), source: T.nilable(::String)).void }
      def initialize(application_status: nil, candidate: nil, candidate_id: nil, job_id: nil, location_id: nil, passthrough: nil, questionnaires: nil, source: nil)
        @application_status = application_status
        @candidate = candidate
        @candidate_id = candidate_id
        @job_id = job_id
        @location_id = location_id
        @passthrough = passthrough
        @questionnaires = questionnaires
        @source = source
      end
    end
  end
end
