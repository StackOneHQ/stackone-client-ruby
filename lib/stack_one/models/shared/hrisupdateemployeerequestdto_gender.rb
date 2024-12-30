# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The employee gender
    class HrisUpdateEmployeeRequestDtoGender < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }

      field :value, T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasGenderValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasGenderValue, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasGenderValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
