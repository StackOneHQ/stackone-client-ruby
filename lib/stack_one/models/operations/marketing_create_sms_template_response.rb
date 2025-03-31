# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class MarketingCreateSmsTemplateResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String

      field :headers, T::Hash[Symbol, T::Array[::String]]
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Bad gateway error.
      field :bad_gateway_response, T.nilable(::StackOne::Shared::BadGatewayResponse)
      # Invalid request.
      field :bad_request_response, T.nilable(::StackOne::Shared::BadRequestResponse)
      # Conflict with current state.
      field :conflict_response, T.nilable(::StackOne::Shared::ConflictResponse)
      # Record created successfully.
      field :create_result, T.nilable(::StackOne::Shared::CreateResult)
      # Forbidden.
      field :forbidden_response, T.nilable(::StackOne::Shared::ForbiddenResponse)
      # Server error while executing the request.
      field :internal_server_error_response, T.nilable(::StackOne::Shared::InternalServerErrorResponse)
      # Resource not found.
      field :not_found_response, T.nilable(::StackOne::Shared::NotFoundResponse)
      # This functionality is not implemented.
      field :not_implemented_response, T.nilable(::StackOne::Shared::NotImplementedResponse)
      # Precondition failed: linked account belongs to a disabled integration.
      field :precondition_failed_response, T.nilable(::StackOne::Shared::PreconditionFailedResponse)
      # The request has timed out.
      field :request_timed_out_response, T.nilable(::StackOne::Shared::RequestTimedOutResponse)
      # Too many requests.
      field :too_many_requests_response, T.nilable(::StackOne::Shared::TooManyRequestsResponse)
      # Unauthorized access.
      field :unauthorized_response, T.nilable(::StackOne::Shared::UnauthorizedResponse)
      # Validation error.
      field :unprocessable_entity_response, T.nilable(::StackOne::Shared::UnprocessableEntityResponse)


      sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, bad_gateway_response: T.nilable(::StackOne::Shared::BadGatewayResponse), bad_request_response: T.nilable(::StackOne::Shared::BadRequestResponse), conflict_response: T.nilable(::StackOne::Shared::ConflictResponse), create_result: T.nilable(::StackOne::Shared::CreateResult), forbidden_response: T.nilable(::StackOne::Shared::ForbiddenResponse), internal_server_error_response: T.nilable(::StackOne::Shared::InternalServerErrorResponse), not_found_response: T.nilable(::StackOne::Shared::NotFoundResponse), not_implemented_response: T.nilable(::StackOne::Shared::NotImplementedResponse), precondition_failed_response: T.nilable(::StackOne::Shared::PreconditionFailedResponse), request_timed_out_response: T.nilable(::StackOne::Shared::RequestTimedOutResponse), too_many_requests_response: T.nilable(::StackOne::Shared::TooManyRequestsResponse), unauthorized_response: T.nilable(::StackOne::Shared::UnauthorizedResponse), unprocessable_entity_response: T.nilable(::StackOne::Shared::UnprocessableEntityResponse)).void }
      def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, bad_gateway_response: nil, bad_request_response: nil, conflict_response: nil, create_result: nil, forbidden_response: nil, internal_server_error_response: nil, not_found_response: nil, not_implemented_response: nil, precondition_failed_response: nil, request_timed_out_response: nil, too_many_requests_response: nil, unauthorized_response: nil, unprocessable_entity_response: nil)
        @content_type = content_type
        @headers = headers
        @raw_response = raw_response
        @status_code = status_code
        @bad_gateway_response = bad_gateway_response
        @bad_request_response = bad_request_response
        @conflict_response = conflict_response
        @create_result = create_result
        @forbidden_response = forbidden_response
        @internal_server_error_response = internal_server_error_response
        @not_found_response = not_found_response
        @not_implemented_response = not_implemented_response
        @precondition_failed_response = precondition_failed_response
        @request_timed_out_response = request_timed_out_response
        @too_many_requests_response = too_many_requests_response
        @unauthorized_response = unauthorized_response
        @unprocessable_entity_response = unprocessable_entity_response
      end
    end
  end
end
