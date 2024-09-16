# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class IamUser < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The user's avatar data. This generally contains a URL within this property's 'contents' array.
      field :avatar, T.nilable(::StackOne::Shared::IamUserAvatar), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('avatar') } }
      # The date the user was created
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
      # List of groups the user is assigned to
      field :groups, T.nilable(T::Array[::StackOne::Shared::IamGroup]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('groups') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Indicates if the user is a bot or service user
      field :is_bot_user, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('is_bot_user') } }
      # The date this user was last active
      field :last_active_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_active_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The date this user last logged in
      field :last_login_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_login_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }
      # The list of Multi-Factor Authentication (MFA) types enabled for the user.
      field :multi_factor_enabled, T.nilable(T::Array[::StackOne::Shared::IamMfaTypeEnum]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('multi_factor_enabled') } }
      # User's name which (can be a full name or display name)
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Primary email address of the user. This is generally a work email address.
      field :primary_email_address, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('primary_email_address') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # List of roles the user is assigned to
      field :roles, T.nilable(T::Array[::StackOne::Shared::IamRole]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('roles') } }

      field :status, T.nilable(::StackOne::Shared::IamUserStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status') } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }
      # The date the user was created
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :username, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('username') } }


      sig { params(avatar: T.nilable(::StackOne::Shared::IamUserAvatar), created_at: T.nilable(::DateTime), first_name: T.nilable(::String), groups: T.nilable(T::Array[::StackOne::Shared::IamGroup]), id: T.nilable(::String), is_bot_user: T.nilable(::Object), last_active_at: T.nilable(::DateTime), last_login_at: T.nilable(::DateTime), last_name: T.nilable(::String), multi_factor_enabled: T.nilable(T::Array[::StackOne::Shared::IamMfaTypeEnum]), name: T.nilable(::String), primary_email_address: T.nilable(::String), remote_id: T.nilable(::String), roles: T.nilable(T::Array[::StackOne::Shared::IamRole]), status: T.nilable(::StackOne::Shared::IamUserStatus), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime), username: T.nilable(::String)).void }
      def initialize(avatar: nil, created_at: nil, first_name: nil, groups: nil, id: nil, is_bot_user: nil, last_active_at: nil, last_login_at: nil, last_name: nil, multi_factor_enabled: nil, name: nil, primary_email_address: nil, remote_id: nil, roles: nil, status: nil, unified_custom_fields: nil, updated_at: nil, username: nil)
        @avatar = avatar
        @created_at = created_at
        @first_name = first_name
        @groups = groups
        @id = id
        @is_bot_user = is_bot_user
        @last_active_at = last_active_at
        @last_login_at = last_login_at
        @last_name = last_name
        @multi_factor_enabled = multi_factor_enabled
        @name = name
        @primary_email_address = primary_email_address
        @remote_id = remote_id
        @roles = roles
        @status = status
        @unified_custom_fields = unified_custom_fields
        @updated_at = updated_at
        @username = username
      end
    end
  end
end
