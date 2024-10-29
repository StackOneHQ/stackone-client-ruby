# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class HrisUpdateEmployeeEmploymentRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :hris_create_employment_request_dto, ::StackOne::Shared::HrisCreateEmploymentRequestDto, { 'request': { 'media_type': 'application/json' } }

      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :sub_resource_id, ::String, { 'path_param': { 'field_name': 'subResourceId', 'style': 'simple', 'explode': false } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(hris_create_employment_request_dto: ::StackOne::Shared::HrisCreateEmploymentRequestDto, id: ::String, sub_resource_id: ::String, x_account_id: ::String).void }
      def initialize(hris_create_employment_request_dto: nil, id: nil, sub_resource_id: nil, x_account_id: nil)
        @hris_create_employment_request_dto = hris_create_employment_request_dto
        @id = id
        @sub_resource_id = sub_resource_id
        @x_account_id = x_account_id
      end
    end
  end
end