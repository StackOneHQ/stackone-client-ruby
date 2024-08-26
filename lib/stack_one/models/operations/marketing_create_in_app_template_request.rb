# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class MarketingCreateInAppTemplateRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :marketing_create_in_app_template_request_dto, ::StackOne::Shared::MarketingCreateInAppTemplateRequestDto, { 'request': { 'media_type': 'application/json' } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(marketing_create_in_app_template_request_dto: ::StackOne::Shared::MarketingCreateInAppTemplateRequestDto, x_account_id: ::String).void }
      def initialize(marketing_create_in_app_template_request_dto: nil, x_account_id: nil)
        @marketing_create_in_app_template_request_dto = marketing_create_in_app_template_request_dto
        @x_account_id = x_account_id
      end
    end
  end
end