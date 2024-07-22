# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Candidate < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # List of candidate application IDs
      field :application_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_ids') } }
      # Candidate company
      field :company, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('company') } }
      # Candidate country
      field :country, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }
      # Candidate created date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The candidate custom fields
      field :custom_fields, T.nilable(T::Array[::StackOne::Shared::CandidateCustomFields]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('custom_fields') } }
      # Candidate email
      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('email') } }
      # List of candidate emails
      field :emails, T.nilable(T::Array[::StackOne::Shared::CandidateEmail]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('emails') } }
      # Candidate first name
      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
      # Candidate hired date
      field :hired_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hired_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Candidate last name
      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }
      # Candidate name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Candidate phone number
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :phone, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone') } }
      # List of candidate phone numbers including the type of the number when available
      field :phone_numbers, T.nilable(T::Array[::StackOne::Shared::PhoneNumber]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_numbers') } }
      # Provider's list of candidate application IDs
      field :remote_application_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_application_ids') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # List of candidate social links
      field :social_links, T.nilable(T::Array[::StackOne::Shared::SocialLink]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('social_links') } }
      # Candidate title
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }
      # Candidate updated date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(application_ids: T.nilable(T::Array[::String]), company: T.nilable(::String), country: T.nilable(::String), created_at: T.nilable(::DateTime), custom_fields: T.nilable(T::Array[::StackOne::Shared::CandidateCustomFields]), email: T.nilable(::String), emails: T.nilable(T::Array[::StackOne::Shared::CandidateEmail]), first_name: T.nilable(::String), hired_at: T.nilable(::DateTime), id: T.nilable(::String), last_name: T.nilable(::String), name: T.nilable(::String), phone: T.nilable(::String), phone_numbers: T.nilable(T::Array[::StackOne::Shared::PhoneNumber]), remote_application_ids: T.nilable(T::Array[::String]), remote_id: T.nilable(::String), social_links: T.nilable(T::Array[::StackOne::Shared::SocialLink]), title: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(application_ids: nil, company: nil, country: nil, created_at: nil, custom_fields: nil, email: nil, emails: nil, first_name: nil, hired_at: nil, id: nil, last_name: nil, name: nil, phone: nil, phone_numbers: nil, remote_application_ids: nil, remote_id: nil, social_links: nil, title: nil, updated_at: nil)
        @application_ids = application_ids
        @company = company
        @country = country
        @created_at = created_at
        @custom_fields = custom_fields
        @email = email
        @emails = emails
        @first_name = first_name
        @hired_at = hired_at
        @id = id
        @last_name = last_name
        @name = name
        @phone = phone
        @phone_numbers = phone_numbers
        @remote_application_ids = remote_application_ids
        @remote_id = remote_id
        @social_links = social_links
        @title = title
        @updated_at = updated_at
      end
    end
  end
end
