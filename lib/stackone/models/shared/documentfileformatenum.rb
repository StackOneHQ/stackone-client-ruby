# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class DocumentFileFormatEnumValue < T::Enum
      enums do
        PDF = new('pdf')
        JPG = new('jpg')
        PNG = new('png')
        DOC = new('doc')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class DocumentFileFormatEnum < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :source_value, T.nilable(Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }

      field :value, T.nilable(Shared::DocumentFileFormatEnumValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::DocumentFileFormatEnumValue, true) } }


      sig { params(source_value: T.nilable(Object), value: T.nilable(Shared::DocumentFileFormatEnumValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
