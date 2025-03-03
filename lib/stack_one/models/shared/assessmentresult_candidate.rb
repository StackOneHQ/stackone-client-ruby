# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AssessmentResultCandidate < ::Crystalline::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Candidate profile url
      field :profile_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('profile_url') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


      sig { params(id: T.nilable(::String), profile_url: T.nilable(::String), remote_id: T.nilable(::String)).void }
      def initialize(id: nil, profile_url: nil, remote_id: nil)
        @id = id
        @profile_url = profile_url
        @remote_id = remote_id
      end
    end
  end
end
