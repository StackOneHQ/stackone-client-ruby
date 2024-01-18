# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class DocumentTypeEnumValue < T::Enum
      enums do
        VISA = new('visa')
        PASSPORT = new('passport')
        DRIVER_LICENSE = new('driver_license')
        OTHER = new('other')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class DocumentTypeEnum < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :source_value, String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }

      field :value, Shared::DocumentTypeEnumValue, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::DocumentTypeEnumValue, false) } }


      sig { params(source_value: String, value: Shared::DocumentTypeEnumValue).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
