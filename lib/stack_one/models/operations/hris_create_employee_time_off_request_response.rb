# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class HrisCreateEmployeeTimeOffRequestResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Record created successfully.
      field :create_time_off_result, T.nilable(::StackOne::Shared::CreateTimeOffResult)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, create_time_off_result: T.nilable(::StackOne::Shared::CreateTimeOffResult)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, create_time_off_result: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @create_time_off_result = create_time_off_result
      end
    end
  end
end