# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsMoveApplicationRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :ats_move_application_request_dto, ::StackOne::Shared::AtsMoveApplicationRequestDto, { 'request': { 'media_type': 'application/json' } }

      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(ats_move_application_request_dto: ::StackOne::Shared::AtsMoveApplicationRequestDto, id: ::String, x_account_id: ::String).void }
      def initialize(ats_move_application_request_dto: nil, id: nil, x_account_id: nil)
        @ats_move_application_request_dto = ats_move_application_request_dto
        @id = id
        @x_account_id = x_account_id
      end
    end
  end
end