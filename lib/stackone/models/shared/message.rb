# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class MessageMessageType < T::Enum
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



    class Message < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :message_type, Shared::MessageMessageType, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message_type'), 'decoder': Utils.enum_from_string(Shared::MessageMessageType, false) } }

      field :name, String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }

      field :message_content, T.nilable(Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message_content') } }


      sig { params(id: String, message_type: Shared::MessageMessageType, name: String, message_content: T.nilable(Object)).void }
      def initialize(id: nil, message_type: nil, name: nil, message_content: nil)
        @id = id
        @message_type = message_type
        @name = name
        @message_content = message_content
      end
    end
  end
end
