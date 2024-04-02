# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Account < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :addresses, T.nilable(T::Array[::StackOne::Shared::AccountAddress]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('addresses') } }

      field :annual_revenue, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('annual_revenue') } }
      # Timestamp when the account was created
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Values of the industries
      field :industries, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('industries') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }

      field :owner_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('owner_id') } }
      # List of account phone numbers
      field :phone_numbers, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_numbers') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Timestamp when the account was last updated
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :website, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('website') } }


      sig { params(addresses: T.nilable(T::Array[::StackOne::Shared::AccountAddress]), annual_revenue: T.nilable(::String), created_at: T.nilable(::DateTime), description: T.nilable(::String), id: T.nilable(::String), industries: T.nilable(T::Array[::String]), name: T.nilable(::String), owner_id: T.nilable(::String), phone_numbers: T.nilable(T::Array[::String]), remote_id: T.nilable(::String), updated_at: T.nilable(::DateTime), website: T.nilable(::String)).void }
      def initialize(addresses: nil, annual_revenue: nil, created_at: nil, description: nil, id: nil, industries: nil, name: nil, owner_id: nil, phone_numbers: nil, remote_id: nil, updated_at: nil, website: nil)
        @addresses = addresses
        @annual_revenue = annual_revenue
        @created_at = created_at
        @description = description
        @id = id
        @industries = industries
        @name = name
        @owner_id = owner_id
        @phone_numbers = phone_numbers
        @remote_id = remote_id
        @updated_at = updated_at
        @website = website
      end
    end
  end
end