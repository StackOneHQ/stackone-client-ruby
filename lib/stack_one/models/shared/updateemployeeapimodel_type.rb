# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class UpdateEmployeeApiModelType < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The type of the national identity number
      field :value, T.nilable(::StackOne::Shared::UpdateEmployeeApiModelSchemasNationalIdentityNumberTypeValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::UpdateEmployeeApiModelSchemasNationalIdentityNumberTypeValue, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::UpdateEmployeeApiModelSchemasNationalIdentityNumberTypeValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
