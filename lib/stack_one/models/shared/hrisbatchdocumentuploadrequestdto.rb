# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class HrisBatchDocumentUploadRequestDto < ::Crystalline::FieldAugmented
      extend T::Sig

      # The batch of items to create
      field :items, T::Array[::StackOne::Shared::HrisDocumentsUploadRequestDto], { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('items') } }


      sig { params(items: T::Array[::StackOne::Shared::HrisDocumentsUploadRequestDto]).void }
      def initialize(items: nil)
        @items = items
      end
    end
  end
end
