# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AtsUpdateCandidateRequestDto < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # List of candidate application IDs
      field :application_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_ids') } }
      # Candidate company
      field :company, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('company') } }
      # Candidate country
      field :country, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }
      # Candidate email
      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('email') } }
      # List of candidate emails
      field :emails, T.nilable(T::Array[::StackOne::Shared::CandidateEmail]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('emails') } }
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
      # Candidate phone number
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :phone, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone') } }
      # List of candidate phone numbers including the type of the number when available
      field :phone_numbers, T.nilable(T::Array[::StackOne::Shared::PhoneNumber]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_numbers') } }
      # List of candidate social links
      field :social_links, T.nilable(T::Array[::StackOne::Shared::SocialLink]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('social_links') } }
      # Candidate title
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }


      sig { params(application_ids: T.nilable(T::Array[::String]), company: T.nilable(::String), country: T.nilable(::String), email: T.nilable(::String), emails: T.nilable(T::Array[::StackOne::Shared::CandidateEmail]), first_name: T.nilable(::String), hired_at: T.nilable(::DateTime), last_name: T.nilable(::String), name: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), phone: T.nilable(::String), phone_numbers: T.nilable(T::Array[::StackOne::Shared::PhoneNumber]), social_links: T.nilable(T::Array[::StackOne::Shared::SocialLink]), title: T.nilable(::String)).void }
      def initialize(application_ids: nil, company: nil, country: nil, email: nil, emails: nil, first_name: nil, hired_at: nil, last_name: nil, name: nil, passthrough: nil, phone: nil, phone_numbers: nil, social_links: nil, title: nil)
        @application_ids = application_ids
        @company = company
        @country = country
        @email = email
        @emails = emails
        @first_name = first_name
        @hired_at = hired_at
        @last_name = last_name
        @name = name
        @passthrough = passthrough
        @phone = phone
        @phone_numbers = phone_numbers
        @social_links = social_links
        @title = title
      end
    end
  end
end
