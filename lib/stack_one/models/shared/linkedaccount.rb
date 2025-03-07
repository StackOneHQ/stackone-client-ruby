# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class LinkedAccount < ::Crystalline::FieldAugmented
      extend T::Sig


      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }

      field :id, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :origin_owner_id, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('origin_owner_id') } }

      field :origin_owner_name, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('origin_owner_name') } }

      field :provider, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('provider') } }

      field :status, ::StackOne::Shared::LinkedAccountStatus, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::StackOne::Shared::LinkedAccountStatus, false) } }

      field :updated_at, ::DateTime, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(false) } }

      field :credentials, T.nilable(::StackOne::Shared::Credentials), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('credentials') } }

      field :label, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('label') } }

      field :origin_username, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('origin_username') } }

      field :provider_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('provider_name') } }

      field :setup_information, T.nilable(::StackOne::Shared::SetupInformation), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('setup_information') } }

      field :status_reasons, T.nilable(T::Array[::StackOne::Shared::StatusReason]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status_reasons') } }


      sig { params(created_at: ::DateTime, id: ::String, origin_owner_id: ::String, origin_owner_name: ::String, provider: ::String, status: ::StackOne::Shared::LinkedAccountStatus, updated_at: ::DateTime, credentials: T.nilable(::StackOne::Shared::Credentials), label: T.nilable(::String), origin_username: T.nilable(::String), provider_name: T.nilable(::String), setup_information: T.nilable(::StackOne::Shared::SetupInformation), status_reasons: T.nilable(T::Array[::StackOne::Shared::StatusReason])).void }
      def initialize(created_at: nil, id: nil, origin_owner_id: nil, origin_owner_name: nil, provider: nil, status: nil, updated_at: nil, credentials: nil, label: nil, origin_username: nil, provider_name: nil, setup_information: nil, status_reasons: nil)
        @created_at = created_at
        @id = id
        @origin_owner_id = origin_owner_id
        @origin_owner_name = origin_owner_name
        @provider = provider
        @status = status
        @updated_at = updated_at
        @credentials = credentials
        @label = label
        @origin_username = origin_username
        @provider_name = provider_name
        @setup_information = setup_information
        @status_reasons = status_reasons
      end
    end
  end
end
