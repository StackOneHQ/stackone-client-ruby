# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # Candidate Properties. Provide this OR candidate_id, but not both. Providing this attempts to create a new candidate with the application.
    class AtsCreateApplicationRequestDtoCandidate < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Candidate company
      field :company, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('company') } }
      # Candidate country
      field :country, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }
      # Candidate email
      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('email') } }
      # Candidate first name
      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
      # Candidate hired date
      field :hired_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hired_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Candidate last name
      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }
      # Candidate name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
      # The candidate personal phone number
      field :phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_number') } }
      # List of candidate social links
      field :social_links, T.nilable(T::Array[::StackOne::Shared::SocialLink]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('social_links') } }
      # Candidate title
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }


      sig { params(company: T.nilable(::String), country: T.nilable(::String), email: T.nilable(::String), first_name: T.nilable(::String), hired_at: T.nilable(::DateTime), last_name: T.nilable(::String), name: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), phone_number: T.nilable(::String), social_links: T.nilable(T::Array[::StackOne::Shared::SocialLink]), title: T.nilable(::String)).void }
      def initialize(company: nil, country: nil, email: nil, first_name: nil, hired_at: nil, last_name: nil, name: nil, passthrough: nil, phone_number: nil, social_links: nil, title: nil)
        @company = company
        @country = country
        @email = email
        @first_name = first_name
        @hired_at = hired_at
        @last_name = last_name
        @name = name
        @passthrough = passthrough
        @phone_number = phone_number
        @social_links = social_links
        @title = title
      end
    end
  end
end
