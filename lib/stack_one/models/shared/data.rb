# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # Error details
    class Data < ::Crystalline::FieldAugmented
      extend T::Sig

      # Response headers
      field :headers, T.nilable(::StackOne::Shared::BadRequestResponseHeaders), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('headers') } }
      # Error message
      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message') } }
      # HTTP status code
      field :status_code, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('statusCode') } }


      sig { params(headers: T.nilable(::StackOne::Shared::BadRequestResponseHeaders), message: T.nilable(::String), status_code: T.nilable(::Float)).void }
      def initialize(headers: nil, message: nil, status_code: nil)
        @headers = headers
        @message = message
        @status_code = status_code
      end
    end
  end
end
