# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class IamGetUserResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The user with the given identifier was retrieved.
      field :iam_user_result, T.nilable(::StackOne::Shared::IamUserResult)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, iam_user_result: T.nilable(::StackOne::Shared::IamUserResult)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, iam_user_result: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @iam_user_result = iam_user_result
      end
    end
  end
end
