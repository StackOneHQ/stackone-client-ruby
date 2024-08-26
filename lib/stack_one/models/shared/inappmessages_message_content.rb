# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class InAppMessagesMessageContent < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :body, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('body') } }


      sig { params(body: T.nilable(::String)).void }
      def initialize(body: nil)
        @body = body
      end
    end
  end
end