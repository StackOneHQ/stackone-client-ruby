# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The employee preferred language
    class UpdateEmployeeApiModelPreferredLanguage < ::Crystalline::FieldAugmented
      extend T::Sig


      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The ISO639-2 Code of the language
      field :value, T.nilable(::StackOne::Shared::UpdateEmployeeApiModelSchemasPreferredLanguageValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::UpdateEmployeeApiModelSchemasPreferredLanguageValue, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::UpdateEmployeeApiModelSchemasPreferredLanguageValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
