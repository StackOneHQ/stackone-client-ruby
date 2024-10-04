# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The confidentiality level of the file to be uploaded
    class HrisDocumentsUploadRequestDtoConfidential < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # Whether the file is confidential or not
      field :value, T.nilable(::StackOne::Shared::HrisDocumentsUploadRequestDtoSchemasValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::HrisDocumentsUploadRequestDtoSchemasValue, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::HrisDocumentsUploadRequestDtoSchemasValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end