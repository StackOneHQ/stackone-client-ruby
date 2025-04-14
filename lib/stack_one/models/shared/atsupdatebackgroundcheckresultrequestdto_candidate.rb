# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class AtsUpdateBackgroundCheckResultRequestDtoCandidate
        extend T::Sig
        include Crystalline::MetadataFields

        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # Candidate profile url
        field :profile_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('profile_url') } }


        sig { params(id: T.nilable(::String), profile_url: T.nilable(::String)).void }
        def initialize(id: nil, profile_url: nil)
          @id = id
          @profile_url = profile_url
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          return false unless @profile_url == other.profile_url
          true
        end
      end
    end
  end
end
