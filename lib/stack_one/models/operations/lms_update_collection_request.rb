# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class LmsUpdateCollectionRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :lms_create_collection_request_dto, ::StackOne::Shared::LmsCreateCollectionRequestDto, { 'request': { 'media_type': 'application/json' } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(id: ::String, lms_create_collection_request_dto: ::StackOne::Shared::LmsCreateCollectionRequestDto, x_account_id: ::String).void }
      def initialize(id: nil, lms_create_collection_request_dto: nil, x_account_id: nil)
        @id = id
        @lms_create_collection_request_dto = lms_create_collection_request_dto
        @x_account_id = x_account_id
      end
    end
  end
end