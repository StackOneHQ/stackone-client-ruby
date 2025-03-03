# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The employee employment type
    class HrisUpdateEmployeeRequestDtoEmploymentType < ::Crystalline::FieldAugmented
      extend T::Sig

      # The source value of the employment type.
      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The type of the employment.
      field :value, T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasEmploymentTypeValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasEmploymentTypeValue, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasEmploymentTypeValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
