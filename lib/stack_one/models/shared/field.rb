# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Field < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The label of the field
      field :label, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('label') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Indicates if the field is required
      field :required, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('required') } }
      # The type of the field
      field :type, T.nilable(::StackOne::Shared::FieldType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::StackOne::Shared::FieldType, true) } }
      # The possible values for the field
      field :values, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('values') } }


      sig { params(id: T.nilable(::String), label: T.nilable(::String), remote_id: T.nilable(::String), required: T.nilable(::Object), type: T.nilable(::StackOne::Shared::FieldType), values: T.nilable(T::Array[::String])).void }
      def initialize(id: nil, label: nil, remote_id: nil, required: nil, type: nil, values: nil)
        @id = id
        @label = label
        @remote_id = remote_id
        @required = required
        @type = type
        @values = values
      end
    end
  end
end
