# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class HrisCreateEmployeeDocumentResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The document was created.
      field :create_document_result, T.nilable(::StackOne::Shared::CreateDocumentResult)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, create_document_result: T.nilable(::StackOne::Shared::CreateDocumentResult)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, create_document_result: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @create_document_result = create_document_result
      end
    end
  end
end
