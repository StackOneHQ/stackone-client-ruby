# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AtsCreateCandidateRequestDto < ::StackOne::Utils::FieldAugmented
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
      # Candidate phone number
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :phone, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone') } }
      # The candidate personal phone number
      field :phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_number') } }
      # List of candidate social links
      field :social_links, T.nilable(T::Array[::StackOne::Shared::SocialLink]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('social_links') } }
      # Candidate title
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }


      sig { params(company: T.nilable(::String), country: T.nilable(::String), email: T.nilable(::String), first_name: T.nilable(::String), hired_at: T.nilable(::DateTime), last_name: T.nilable(::String), name: T.nilable(::String), phone: T.nilable(::String), phone_number: T.nilable(::String), social_links: T.nilable(T::Array[::StackOne::Shared::SocialLink]), title: T.nilable(::String)).void }
      def initialize(company: nil, country: nil, email: nil, first_name: nil, hired_at: nil, last_name: nil, name: nil, phone: nil, phone_number: nil, social_links: nil, title: nil)
        @company = company
        @country = country
        @email = email
        @first_name = first_name
        @hired_at = hired_at
        @last_name = last_name
        @name = name
        @phone = phone
        @phone_number = phone_number
        @social_links = social_links
        @title = title
      end
    end
  end
end
