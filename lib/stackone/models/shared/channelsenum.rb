# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared
    # ChannelsEnumValue - The Channels of the campaign.
    class ChannelsEnumValue < T::Enum
      enums do
        EMAIL = new('email')
        SMS = new('sms')
        WEB_PUSH = new('web_push')
        IOS_PUSH = new('ios_push')
        ANDROID_PUSH = new('android_push')
        UNKNOWN = new('unknown')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class ChannelsEnum < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The source value of the Channels.
      field :source_value, String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The Channels of the campaign.
      field :value, Shared::ChannelsEnumValue, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::ChannelsEnumValue, false) } }


      sig { params(source_value: String, value: Shared::ChannelsEnumValue).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
