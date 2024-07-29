# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class HrisUploadEmployeeDocumentResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The document related to the employee with the given identifier was uploaded.
      field :write_result_api_model, T.nilable(::StackOne::Shared::WriteResultApiModel)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, write_result_api_model: T.nilable(::StackOne::Shared::WriteResultApiModel)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, write_result_api_model: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @write_result_api_model = write_result_api_model
      end
    end
  end
end
