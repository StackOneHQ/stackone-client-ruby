# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class InAppMessagesMessageType < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The original value from the provider used to derive the unified message type.
      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The unified message type.
      field :value, T.nilable(::StackOne::Shared::InAppMessagesValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value') } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::InAppMessagesValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end