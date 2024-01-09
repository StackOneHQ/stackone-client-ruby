# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Operations

    class StackoneListLinkedAccountsRequest < StackOne::Utils::FieldAugmented
      extend T::Sig

      # The origin owner identifier of the results to fetch
      field :origin_owner_id, T.nilable(String), { 'query_param': { 'field_name': 'origin_owner_id', 'style': 'form', 'explode': true } }
      # The provider of the results to fetch
      field :provider, T.nilable(String), { 'query_param': { 'field_name': 'provider', 'style': 'form', 'explode': true } }


      sig { params(origin_owner_id: T.nilable(String), provider: T.nilable(String)).void }
      def initialize(origin_owner_id: nil, provider: nil)
        @origin_owner_id = origin_owner_id
        @provider = provider
      end
    end


    class StackoneListLinkedAccountsResponse < StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # The list of accounts was retrieved.
      field :linked_accounts, T.nilable(T::Array[Shared::LinkedAccount])


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, linked_accounts: T.nilable(T::Array[Shared::LinkedAccount])).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, linked_accounts: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @linked_accounts = linked_accounts
      end
    end
  end
end
