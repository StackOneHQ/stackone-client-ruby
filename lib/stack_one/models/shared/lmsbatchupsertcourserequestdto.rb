# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class LmsBatchUpsertCourseRequestDto < ::Crystalline::FieldAugmented
      extend T::Sig

      # The batch of items to upsert
      field :items, T::Array[::StackOne::Shared::LmsUpsertCourseRequestDto], { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('items') } }


      sig { params(items: T::Array[::StackOne::Shared::LmsUpsertCourseRequestDto]).void }
      def initialize(items: nil)
        @items = items
      end
    end
  end
end
