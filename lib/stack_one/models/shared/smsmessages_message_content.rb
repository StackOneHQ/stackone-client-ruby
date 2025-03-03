# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class SmsMessagesMessageContent < ::Crystalline::FieldAugmented
      extend T::Sig


      field :body, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('body') } }

      field :from, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('from') } }


      sig { params(body: T.nilable(::String), from: T.nilable(::String)).void }
      def initialize(body: nil, from: nil)
        @body = body
        @from = from
      end
    end
  end
end
