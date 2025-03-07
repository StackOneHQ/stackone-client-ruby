# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class IamGroup < ::Crystalline::FieldAugmented
      extend T::Sig


      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The parent group id for when a group belongs to another group.
      field :parent_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('parent_id') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Provider's unique identifier of the parent group id for when a group belongs to another group.
      field :remote_parent_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_parent_id') } }

      field :roles, T.nilable(T::Array[::StackOne::Shared::IamRole]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('roles') } }

      field :type, T.nilable(::StackOne::Shared::IamGroupType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(::DateTime), description: T.nilable(::String), id: T.nilable(::String), name: T.nilable(::String), parent_id: T.nilable(::String), remote_id: T.nilable(::String), remote_parent_id: T.nilable(::String), roles: T.nilable(T::Array[::StackOne::Shared::IamRole]), type: T.nilable(::StackOne::Shared::IamGroupType), updated_at: T.nilable(::DateTime)).void }
      def initialize(created_at: nil, description: nil, id: nil, name: nil, parent_id: nil, remote_id: nil, remote_parent_id: nil, roles: nil, type: nil, updated_at: nil)
        @created_at = created_at
        @description = description
        @id = id
        @name = name
        @parent_id = parent_id
        @remote_id = remote_id
        @remote_parent_id = remote_parent_id
        @roles = roles
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
