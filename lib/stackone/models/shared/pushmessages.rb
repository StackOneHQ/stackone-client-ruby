# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class PushMessagesMessageContent < StackOne::Utils::FieldAugmented
      extend T::Sig


      field :body, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('body') } }


      sig { params(body: String).void }
      def initialize(body: nil)
        @body = body
      end
    end


    class PushMessagesValue < T::Enum
      enums do
        EMAIL = new('email')
        SMS = new('sms')
        WEB_PUSH = new('web_push')
        IOS_PUSH = new('ios_push')
        ANDROID_PUSH = new('android_push')
        APP_PUSH = new('app_push')
        OMNI_CHANNEL = new('omni_channel')
        UNKNOWN = new('unknown')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class PushMessagesMessageType < StackOne::Utils::FieldAugmented
      extend T::Sig


      field :source_value, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('source_value') } }

      field :value, Shared::PushMessagesValue, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::PushMessagesValue, false) } }


      sig { params(source_value: String, value: Shared::PushMessagesValue).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end


    class PushMessages < StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :message_content, T.nilable(Shared::PushMessagesMessageContent), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('message_content') } }

      field :message_type, T.nilable(Shared::PushMessagesMessageType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('message_type') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }


      sig { params(id: T.nilable(String), message_content: T.nilable(Shared::PushMessagesMessageContent), message_type: T.nilable(Shared::PushMessagesMessageType), name: T.nilable(String)).void }
      def initialize(id: nil, message_content: nil, message_type: nil, name: nil)
        @id = id
        @message_content = message_content
        @message_type = message_type
        @name = name
      end
    end
  end
end