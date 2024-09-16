# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The national identity number
    class HrisCreateEmployeeRequestDtoNationalIdentityNumber < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :type, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }

      field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value') } }


      sig { params(type: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoType), value: T.nilable(::String)).void }
      def initialize(type: nil, value: nil)
        @type = type
        @value = value
      end
    end
  end
end
