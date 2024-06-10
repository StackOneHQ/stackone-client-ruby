# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class EmployeeCustomFields < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The description of the custom field.
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The name of the custom field.
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # An array of possible options for the custom field.
      field :options, T.nilable(T::Array[::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('options') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Provider's unique identifier for the value of the custom field.
      field :remote_value_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_value_id') } }
      # The type of the custom field.
      field :type, T.nilable(::StackOne::Shared::EmployeeCustomFieldsType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
      # The value associated with the custom field.
      field :value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value') } }
      # The unique identifier for the value of the custom field.
      field :value_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value_id') } }


      sig { params(description: T.nilable(::String), id: T.nilable(::String), name: T.nilable(::String), options: T.nilable(T::Array[::Object]), remote_id: T.nilable(::String), remote_value_id: T.nilable(::String), type: T.nilable(::StackOne::Shared::EmployeeCustomFieldsType), value: T.nilable(::Object), value_id: T.nilable(::String)).void }
      def initialize(description: nil, id: nil, name: nil, options: nil, remote_id: nil, remote_value_id: nil, type: nil, value: nil, value_id: nil)
        @description = description
        @id = id
        @name = name
        @options = options
        @remote_id = remote_id
        @remote_value_id = remote_value_id
        @type = type
        @value = value
        @value_id = value_id
      end
    end
  end
end
