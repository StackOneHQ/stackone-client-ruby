# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsOrderBackgroundCheckRequestRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :ats_create_background_check_order_request_dto, ::StackOne::Shared::AtsCreateBackgroundCheckOrderRequestDto, { 'request': { 'media_type': 'application/json' } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(ats_create_background_check_order_request_dto: ::StackOne::Shared::AtsCreateBackgroundCheckOrderRequestDto, x_account_id: ::String).void }
      def initialize(ats_create_background_check_order_request_dto: nil, x_account_id: nil)
        @ats_create_background_check_order_request_dto = ats_create_background_check_order_request_dto
        @x_account_id = x_account_id
      end
    end
  end
end
