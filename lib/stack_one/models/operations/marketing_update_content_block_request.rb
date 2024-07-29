# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class MarketingUpdateContentBlockRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :marketing_create_content_blocks_request_dto, ::StackOne::Shared::MarketingCreateContentBlocksRequestDto, { 'request': { 'media_type': 'application/json' } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(id: ::String, marketing_create_content_blocks_request_dto: ::StackOne::Shared::MarketingCreateContentBlocksRequestDto, x_account_id: ::String).void }
      def initialize(id: nil, marketing_create_content_blocks_request_dto: nil, x_account_id: nil)
        @id = id
        @marketing_create_content_blocks_request_dto = marketing_create_content_blocks_request_dto
        @x_account_id = x_account_id
      end
    end
  end
end
