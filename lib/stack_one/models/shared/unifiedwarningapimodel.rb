# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class UnifiedWarningApiModel < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message') } }


      sig { params(message: T.nilable(::String)).void }
      def initialize(message: nil)
        @message = message
      end
    end
  end
end
