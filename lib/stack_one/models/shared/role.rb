# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The role of manager
    class Role < ::Crystalline::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The label of the role type
      field :label, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('label') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The manager role type (e.g., admin, viewer)
      field :role_type, T.nilable(::StackOne::Shared::RoleType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('role_type') } }


      sig { params(id: T.nilable(::String), label: T.nilable(::String), remote_id: T.nilable(::String), role_type: T.nilable(::StackOne::Shared::RoleType)).void }
      def initialize(id: nil, label: nil, remote_id: nil, role_type: nil)
        @id = id
        @label = label
        @remote_id = remote_id
        @role_type = role_type
      end
    end
  end
end
