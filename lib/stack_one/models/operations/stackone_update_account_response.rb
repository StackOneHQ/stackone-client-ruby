# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class StackoneUpdateAccountResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The account with the given identifier was updated.
      field :linked_account, T.nilable(::StackOne::Shared::LinkedAccount)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, linked_account: T.nilable(::StackOne::Shared::LinkedAccount)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, linked_account: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @linked_account = linked_account
      end
    end
  end
end
