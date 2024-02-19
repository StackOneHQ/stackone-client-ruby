# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class MarketingCreateOmniChannelTemplateRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :marketing_create_template_request_dto, ::StackOne::Shared::MarketingCreateTemplateRequestDto, { 'request': { 'media_type': 'application/json' } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(marketing_create_template_request_dto: ::StackOne::Shared::MarketingCreateTemplateRequestDto, x_account_id: ::String).void }
      def initialize(marketing_create_template_request_dto: nil, x_account_id: nil)
        @marketing_create_template_request_dto = marketing_create_template_request_dto
        @x_account_id = x_account_id
      end
    end
  end
end
