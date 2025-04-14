# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    

      class MarketingCreatePushTemplateRequest
        extend T::Sig
        include Crystalline::MetadataFields


        field :marketing_create_push_template_request_dto, Models::Shared::MarketingCreatePushTemplateRequestDto, { 'request': { 'media_type': 'application/json' } }
        # The account identifier
        field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


        sig { params(marketing_create_push_template_request_dto: Models::Shared::MarketingCreatePushTemplateRequestDto, x_account_id: ::String).void }
        def initialize(marketing_create_push_template_request_dto: nil, x_account_id: nil)
          @marketing_create_push_template_request_dto = marketing_create_push_template_request_dto
          @x_account_id = x_account_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @marketing_create_push_template_request_dto == other.marketing_create_push_template_request_dto
          return false unless @x_account_id == other.x_account_id
          true
        end
      end
    end
  end
end
