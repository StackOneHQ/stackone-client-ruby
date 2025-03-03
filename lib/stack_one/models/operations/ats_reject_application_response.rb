# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsRejectApplicationResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String

      field :headers, T::Hash[Symbol, T::Array[::String]]
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The application was rejected successfully.
      field :reject_application_result, T.nilable(::StackOne::Shared::RejectApplicationResult)


      sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, reject_application_result: T.nilable(::StackOne::Shared::RejectApplicationResult)).void }
      def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, reject_application_result: nil)
        @content_type = content_type
        @headers = headers
        @raw_response = raw_response
        @status_code = status_code
        @reject_application_result = reject_application_result
      end
    end
  end
end
