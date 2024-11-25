# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class StackoneCreateConnectSessionResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The details of the connect session created with token and auth link
      field :connect_session_token_auth_link, T.nilable(::StackOne::Shared::ConnectSessionTokenAuthLink)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, connect_session_token_auth_link: T.nilable(::StackOne::Shared::ConnectSessionTokenAuthLink)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, connect_session_token_auth_link: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @connect_session_token_auth_link = connect_session_token_auth_link
      end
    end
  end
end
