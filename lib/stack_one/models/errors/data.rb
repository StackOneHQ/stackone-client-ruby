# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Errors
    
      # Error details
      class Data
        extend T::Sig
        include Crystalline::MetadataFields

        # Response headers
        field :headers, T.nilable(Models::Errors::Headers), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('headers') } }
        # Error message
        field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message') } }
        # HTTP status code
        field :status_code, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('statusCode') } }


        sig { params(headers: T.nilable(Models::Errors::Headers), message: T.nilable(::String), status_code: T.nilable(::Float)).void }
        def initialize(headers: nil, message: nil, status_code: nil)
          @headers = headers
          @message = message
          @status_code = status_code
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @headers == other.headers
          return false unless @message == other.message
          return false unless @status_code == other.status_code
          true
        end
      end
    end
  end
end
