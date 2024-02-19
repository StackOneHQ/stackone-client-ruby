# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsCreateOfferResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The offer was created successfully.
      field :create_offer_result, T.nilable(::StackOne::Shared::CreateOfferResult)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, create_offer_result: T.nilable(::StackOne::Shared::CreateOfferResult)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, create_offer_result: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @create_offer_result = create_offer_result
      end
    end
  end
end
