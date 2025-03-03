# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The country code
    class HrisUpdateEmployeeRequestDtoSchemasCountry < ::Crystalline::FieldAugmented
      extend T::Sig


      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The ISO3166-1 Alpha2 Code of the Country
      field :value, T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasNationalIdentityNumberValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasNationalIdentityNumberValue, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasNationalIdentityNumberValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
