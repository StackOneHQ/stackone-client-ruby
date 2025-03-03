# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class CreateMessage < ::Crystalline::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :message_content, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message_content') } }
      # Stackone enum identifying the type of message associated with the content.
      field :message_type, T.nilable(::StackOne::Shared::MessageType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message_type') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }


      sig { params(id: T.nilable(::String), message_content: T.nilable(::Object), message_type: T.nilable(::StackOne::Shared::MessageType), name: T.nilable(::String)).void }
      def initialize(id: nil, message_content: nil, message_type: nil, name: nil)
        @id = id
        @message_content = message_content
        @message_type = message_type
        @name = name
      end
    end
  end
end
