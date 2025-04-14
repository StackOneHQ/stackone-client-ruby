# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class PushMessages
        extend T::Sig
        include Crystalline::MetadataFields

        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

        field :message_content, T.nilable(Models::Shared::PushMessagesMessageContent), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message_content') } }

        field :message_type, T.nilable(Models::Shared::PushMessagesMessageType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message_type') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


        sig { params(id: T.nilable(::String), message_content: T.nilable(Models::Shared::PushMessagesMessageContent), message_type: T.nilable(Models::Shared::PushMessagesMessageType), name: T.nilable(::String), remote_id: T.nilable(::String)).void }
        def initialize(id: nil, message_content: nil, message_type: nil, name: nil, remote_id: nil)
          @id = id
          @message_content = message_content
          @message_type = message_type
          @name = name
          @remote_id = remote_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          return false unless @message_content == other.message_content
          return false unless @message_type == other.message_type
          return false unless @name == other.name
          return false unless @remote_id == other.remote_id
          true
        end
      end
    end
  end
end
