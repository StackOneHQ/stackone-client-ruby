# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class ConnectSessionTokenAuthLink < ::Crystalline::FieldAugmented
      extend T::Sig


      field :auth_link_url, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('auth_link_url') } }

      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(false) } }

      field :id, ::Float, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :organization_id, ::Float, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('organization_id') } }

      field :origin_owner_id, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('origin_owner_id') } }

      field :origin_owner_name, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('origin_owner_name') } }

      field :project_id, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('project_id') } }

      field :token, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('token') } }

      field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('account_id') } }

      field :categories, T.nilable(T::Array[::StackOne::Shared::ConnectSessionTokenAuthLinkCategories]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('categories') } }

      field :label, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('label') } }
      # Arbitrary set of key and values defined during the session token creation. This can be used to tag an account (eg. based on their pricing plan)
      field :metadata, T.nilable(::StackOne::Shared::ConnectSessionTokenAuthLinkMetadata), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('metadata') } }

      field :origin_username, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('origin_username') } }

      field :provider, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('provider') } }


      sig { params(auth_link_url: ::String, created_at: ::DateTime, id: ::Float, organization_id: ::Float, origin_owner_id: ::String, origin_owner_name: ::String, project_id: ::String, token: ::String, account_id: T.nilable(::String), categories: T.nilable(T::Array[::StackOne::Shared::ConnectSessionTokenAuthLinkCategories]), label: T.nilable(::String), metadata: T.nilable(::StackOne::Shared::ConnectSessionTokenAuthLinkMetadata), origin_username: T.nilable(::String), provider: T.nilable(::String)).void }
      def initialize(auth_link_url: nil, created_at: nil, id: nil, organization_id: nil, origin_owner_id: nil, origin_owner_name: nil, project_id: nil, token: nil, account_id: nil, categories: nil, label: nil, metadata: nil, origin_username: nil, provider: nil)
        @auth_link_url = auth_link_url
        @created_at = created_at
        @id = id
        @organization_id = organization_id
        @origin_owner_id = origin_owner_id
        @origin_owner_name = origin_owner_name
        @project_id = project_id
        @token = token
        @account_id = account_id
        @categories = categories
        @label = label
        @metadata = metadata
        @origin_username = origin_username
        @provider = provider
      end
    end
  end
end
