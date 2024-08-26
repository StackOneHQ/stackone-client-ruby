# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class LmsUser < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The created_at date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The user email
      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('email') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The user name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The user phone number
      field :phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_number') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The updated_at date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(::DateTime), email: T.nilable(::String), id: T.nilable(::String), name: T.nilable(::String), phone_number: T.nilable(::String), remote_id: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(created_at: nil, email: nil, id: nil, name: nil, phone_number: nil, remote_id: nil, updated_at: nil)
        @created_at = created_at
        @email = email
        @id = id
        @name = name
        @phone_number = phone_number
        @remote_id = remote_id
        @updated_at = updated_at
      end
    end
  end
end