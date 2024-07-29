# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class HrisCreateTimeOffRequestRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :hris_create_time_off_request_dto, ::StackOne::Shared::HrisCreateTimeOffRequestDto, { 'request': { 'media_type': 'application/json' } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(hris_create_time_off_request_dto: ::StackOne::Shared::HrisCreateTimeOffRequestDto, x_account_id: ::String).void }
      def initialize(hris_create_time_off_request_dto: nil, x_account_id: nil)
        @hris_create_time_off_request_dto = hris_create_time_off_request_dto
        @x_account_id = x_account_id
      end
    end
  end
end
