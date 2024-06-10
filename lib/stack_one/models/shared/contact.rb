# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Contact < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # List of associated account IDs
      field :account_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('account_ids') } }
      # The contact company name
      field :company_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('company_name') } }
      # Timestamp when the contact was created
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Contact custom fields
      field :custom_fields, T.nilable(T::Array[::StackOne::Shared::ContactsCustomFields]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('custom_fields') } }
      # List of associated deal IDs
      field :deal_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('deal_ids') } }
      # List of contact email addresses
      field :emails, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('emails') } }
      # The contact first name
      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The contact last name
      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }
      # List of contact phone numbers
      field :phone_numbers, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_numbers') } }
      # Provider's list of associated account IDs
      field :remote_account_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_account_ids') } }
      # Provider's list of associated deal IDs
      field :remote_deal_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_deal_ids') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Timestamp when the contact was last updated
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(account_ids: T.nilable(T::Array[::String]), company_name: T.nilable(::String), created_at: T.nilable(::DateTime), custom_fields: T.nilable(T::Array[::StackOne::Shared::ContactsCustomFields]), deal_ids: T.nilable(T::Array[::String]), emails: T.nilable(T::Array[::String]), first_name: T.nilable(::String), id: T.nilable(::String), last_name: T.nilable(::String), phone_numbers: T.nilable(T::Array[::String]), remote_account_ids: T.nilable(T::Array[::String]), remote_deal_ids: T.nilable(T::Array[::String]), remote_id: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(account_ids: nil, company_name: nil, created_at: nil, custom_fields: nil, deal_ids: nil, emails: nil, first_name: nil, id: nil, last_name: nil, phone_numbers: nil, remote_account_ids: nil, remote_deal_ids: nil, remote_id: nil, updated_at: nil)
        @account_ids = account_ids
        @company_name = company_name
        @created_at = created_at
        @custom_fields = custom_fields
        @deal_ids = deal_ids
        @emails = emails
        @first_name = first_name
        @id = id
        @last_name = last_name
        @phone_numbers = phone_numbers
        @remote_account_ids = remote_account_ids
        @remote_deal_ids = remote_deal_ids
        @remote_id = remote_id
        @updated_at = updated_at
      end
    end
  end
end
