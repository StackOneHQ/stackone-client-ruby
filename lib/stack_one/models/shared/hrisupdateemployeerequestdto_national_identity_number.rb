# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The national identity number
    # 
    # @deprecated  class: This will be removed in a future release, please migrate away from it as soon as possible.
    class HrisUpdateEmployeeRequestDtoNationalIdentityNumber < ::Crystalline::FieldAugmented
      extend T::Sig

      # The country code
      field :country, T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasCountry), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }

      field :type, T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }

      field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value') } }


      sig { params(country: T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoSchemasCountry), type: T.nilable(::StackOne::Shared::HrisUpdateEmployeeRequestDtoType), value: T.nilable(::String)).void }
      def initialize(country: nil, type: nil, value: nil)
        @country = country
        @type = type
        @value = value
      end
    end
  end
end
