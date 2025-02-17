# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class TimeOffPolicies < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The created_at date of this policy
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The description of this policy
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The name of this policy
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The type of this policy
      field :type, T.nilable(::StackOne::Shared::TimeOffPoliciesType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
      # The updated_at date of this policy
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(::DateTime), description: T.nilable(::String), id: T.nilable(::String), name: T.nilable(::String), remote_id: T.nilable(::String), type: T.nilable(::StackOne::Shared::TimeOffPoliciesType), updated_at: T.nilable(::DateTime)).void }
      def initialize(created_at: nil, description: nil, id: nil, name: nil, remote_id: nil, type: nil, updated_at: nil)
        @created_at = created_at
        @description = description
        @id = id
        @name = name
        @remote_id = remote_id
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
