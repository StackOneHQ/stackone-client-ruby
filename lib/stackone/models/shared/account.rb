# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class Account < StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :owner_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('owner_id') } }

      field :addresses, T.nilable(T::Array[Shared::AccountAddress]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('addresses') } }

      field :annual_revenue, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('annual_revenue') } }
      # Timestamp when the account was created
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('description') } }
      # Values of the industries
      field :industries, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('industries') } }
      # List of account phone numbers
      field :phone_numbers, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('phone_numbers') } }
      # Timestamp when the account was last updated
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :website, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('website') } }


      sig { params(id: String, name: String, owner_id: String, addresses: T.nilable(T::Array[Shared::AccountAddress]), annual_revenue: T.nilable(String), created_at: T.nilable(DateTime), description: T.nilable(String), industries: T.nilable(T::Array[String]), phone_numbers: T.nilable(T::Array[String]), updated_at: T.nilable(DateTime), website: T.nilable(String)).void }
      def initialize(id: nil, name: nil, owner_id: nil, addresses: nil, annual_revenue: nil, created_at: nil, description: nil, industries: nil, phone_numbers: nil, updated_at: nil, website: nil)
        @id = id
        @name = name
        @owner_id = owner_id
        @addresses = addresses
        @annual_revenue = annual_revenue
        @created_at = created_at
        @description = description
        @industries = industries
        @phone_numbers = phone_numbers
        @updated_at = updated_at
        @website = website
      end
    end
  end
end
