# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Errors
    

      class TooManyRequestsResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # Error message
        field :message, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message') } }
        # HTTP status code
        field :status_code, ::Float, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('statusCode') } }
        # Timestamp when the error occurred
        field :timestamp, ::DateTime, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('timestamp'), 'decoder': Utils.datetime_from_iso_format(false) } }


        sig { params(message: ::String, status_code: ::Float, timestamp: ::DateTime).void }
        def initialize(message: nil, status_code: nil, timestamp: nil)
          @message = message
          @status_code = status_code
          @timestamp = timestamp
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @message == other.message
          return false unless @status_code == other.status_code
          return false unless @timestamp == other.timestamp
          true
        end
      end
    end
  end
end
