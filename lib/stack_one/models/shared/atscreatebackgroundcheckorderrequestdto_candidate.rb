# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class AtsCreateBackgroundCheckOrderRequestDtoCandidate
        extend T::Sig
        include Crystalline::MetadataFields

        # List of candidate emails
        field :emails, T.nilable(T::Array[Models::Shared::CandidateEmail]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('emails') } }
        # Candidate first name
        field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # Candidate last name
        field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }
        # Value to pass through to the provider
        field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
        # Candidate profile url
        field :profile_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('profile_url') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


        sig { params(emails: T.nilable(T::Array[Models::Shared::CandidateEmail]), first_name: T.nilable(::String), id: T.nilable(::String), last_name: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), profile_url: T.nilable(::String), remote_id: T.nilable(::String)).void }
        def initialize(emails: nil, first_name: nil, id: nil, last_name: nil, passthrough: nil, profile_url: nil, remote_id: nil)
          @emails = emails
          @first_name = first_name
          @id = id
          @last_name = last_name
          @passthrough = passthrough
          @profile_url = profile_url
          @remote_id = remote_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @emails == other.emails
          return false unless @first_name == other.first_name
          return false unless @id == other.id
          return false unless @last_name == other.last_name
          return false unless @passthrough == other.passthrough
          return false unless @profile_url == other.profile_url
          return false unless @remote_id == other.remote_id
          true
        end
      end
    end
  end
end
