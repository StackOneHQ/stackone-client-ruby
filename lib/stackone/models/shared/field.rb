# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared
    # FieldType - The type of the field
    class FieldType < T::Enum
      enums do
        SHORT_TEXT = new('short_text')
        LONG_TEXT = new('long_text')
        MULTI_SELECT = new('multi_select')
        SINGLE_SELECT = new('single_select')
        BOOLEAN = new('boolean')
        NUMBER = new('number')
        DATE = new('date')
        PHONE = new('phone')
        EMAIL = new('email')
        SCORE = new('score')
        LOCATION = new('location')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class Field < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The ID of the field
      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The label of the field
      field :label, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('label') } }
      # Indicates if the field is required
      field :required, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('required') } }
      # The type of the field
      field :type, T.nilable(Shared::FieldType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::FieldType, true) } }
      # The possible values for the field
      field :values, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('values') } }


      sig { params(id: T.nilable(String), label: T.nilable(String), required: T.nilable(T::Boolean), type: T.nilable(Shared::FieldType), values: T.nilable(T::Array[String])).void }
      def initialize(id: nil, label: nil, required: nil, type: nil, values: nil)
        @id = id
        @label = label
        @required = required
        @type = type
        @values = values
      end
    end
  end
end
