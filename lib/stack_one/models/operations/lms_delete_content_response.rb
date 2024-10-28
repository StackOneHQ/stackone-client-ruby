# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class LmsDeleteContentResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The content was deleted successfully.
      field :delete_result, T.nilable(::StackOne::Shared::DeleteResult)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, delete_result: T.nilable(::StackOne::Shared::DeleteResult)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, delete_result: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @delete_result = delete_result
      end
    end
  end
end
