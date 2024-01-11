# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/atsupdateapplicationrequestdto'
require_relative '../shared/updateresult'

module StackOne
  module Operations

    class AtsUpdateApplicationRequest < StackOne::Utils::FieldAugmented
      extend T::Sig


      field :ats_update_application_request_dto, Shared::AtsUpdateApplicationRequestDto, { 'request': { 'media_type': 'application/json' } }

      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # The account identifier
      field :x_account_id, String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(ats_update_application_request_dto: Shared::AtsUpdateApplicationRequestDto, id: String, x_account_id: String).void }
      def initialize(ats_update_application_request_dto: nil, id: nil, x_account_id: nil)
        @ats_update_application_request_dto = ats_update_application_request_dto
        @id = id
        @x_account_id = x_account_id
      end
    end


    class AtsUpdateApplicationResponse < StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Record updated successfully.
      field :update_result, T.nilable(Shared::UpdateResult)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, update_result: T.nilable(Shared::UpdateResult)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, update_result: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @update_result = update_result
      end
    end
  end
end