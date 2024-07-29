# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsGetApplicationDocumentResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The document related to the application with the given identifiers was retrieved.
      field :ats_document_result, T.nilable(::StackOne::Shared::AtsDocumentResult)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, ats_document_result: T.nilable(::StackOne::Shared::AtsDocumentResult)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, ats_document_result: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @ats_document_result = ats_document_result
      end
    end
  end
end
