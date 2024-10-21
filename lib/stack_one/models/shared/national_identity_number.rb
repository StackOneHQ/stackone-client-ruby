# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The national identity number
    class NationalIdentityNumber < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The country code
      field :country, T.nilable(::StackOne::Shared::EmployeeSchemasCountry), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }

      field :type, T.nilable(::StackOne::Shared::EmployeeType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }

      field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value') } }


      sig { params(country: T.nilable(::StackOne::Shared::EmployeeSchemasCountry), type: T.nilable(::StackOne::Shared::EmployeeType), value: T.nilable(::String)).void }
      def initialize(country: nil, type: nil, value: nil)
        @country = country
        @type = type
        @value = value
      end
    end
  end
end
