# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The national identity number
    class NationalIdentityNumber < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :type, T.nilable(::StackOne::Shared::EmployeeType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }

      field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value') } }


      sig { params(type: T.nilable(::StackOne::Shared::EmployeeType), value: T.nilable(::String)).void }
      def initialize(type: nil, value: nil)
        @type = type
        @value = value
      end
    end
  end
end