# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class ChannelsEnum < ::Crystalline::FieldAugmented
      extend T::Sig

      # The source value of the Channels.
      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The Channels of the campaign.
      field :value, T.nilable(::StackOne::Shared::Value), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::Value, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::Value)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
