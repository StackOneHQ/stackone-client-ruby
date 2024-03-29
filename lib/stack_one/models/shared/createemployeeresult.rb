# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class CreateEmployeeResult < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :status_code, ::Float, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('statusCode') } }

      field :timestamp, ::DateTime, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('timestamp'), 'decoder': Utils.datetime_from_iso_format(false) } }

      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message') } }


      sig { params(status_code: ::Float, timestamp: ::DateTime, message: T.nilable(::String)).void }
      def initialize(status_code: nil, timestamp: nil, message: nil)
        @status_code = status_code
        @timestamp = timestamp
        @message = message
      end
    end
  end
end
