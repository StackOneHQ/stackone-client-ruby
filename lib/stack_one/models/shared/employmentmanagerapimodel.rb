# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class EmploymentManagerApiModel < ::Crystalline::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The role of manager
      field :role, T.nilable(::StackOne::Shared::Role), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('role') } }


      sig { params(id: T.nilable(::String), remote_id: T.nilable(::String), role: T.nilable(::StackOne::Shared::Role)).void }
      def initialize(id: nil, remote_id: nil, role: nil)
        @id = id
        @remote_id = remote_id
        @role = role
      end
    end
  end
end
