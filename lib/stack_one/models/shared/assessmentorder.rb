# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AssessmentOrder < ::Crystalline::FieldAugmented
      extend T::Sig


      field :application, T.nilable(::StackOne::Shared::AssessmentOrderApplication), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application') } }

      field :candidate, T.nilable(::StackOne::Shared::AssessmentOrderCandidate), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('candidate') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :job, T.nilable(::StackOne::Shared::AssessmentOrderJob), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job') } }

      field :package, T.nilable(::StackOne::Shared::AssessmentOrderPackage), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('package') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }

      field :requester, T.nilable(::StackOne::Shared::Requester), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('requester') } }
      # Results update url
      field :results_update_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('results_update_url') } }


      sig { params(application: T.nilable(::StackOne::Shared::AssessmentOrderApplication), candidate: T.nilable(::StackOne::Shared::AssessmentOrderCandidate), id: T.nilable(::String), job: T.nilable(::StackOne::Shared::AssessmentOrderJob), package: T.nilable(::StackOne::Shared::AssessmentOrderPackage), remote_id: T.nilable(::String), requester: T.nilable(::StackOne::Shared::Requester), results_update_url: T.nilable(::String)).void }
      def initialize(application: nil, candidate: nil, id: nil, job: nil, package: nil, remote_id: nil, requester: nil, results_update_url: nil)
        @application = application
        @candidate = candidate
        @id = id
        @job = job
        @package = package
        @remote_id = remote_id
        @requester = requester
        @results_update_url = results_update_url
      end
    end
  end
end
