# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsCreateCandidateNoteRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :ats_create_notes_request_dto, ::StackOne::Shared::AtsCreateNotesRequestDto, { 'request': { 'media_type': 'application/json' } }

      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(ats_create_notes_request_dto: ::StackOne::Shared::AtsCreateNotesRequestDto, id: ::String, x_account_id: ::String).void }
      def initialize(ats_create_notes_request_dto: nil, id: nil, x_account_id: nil)
        @ats_create_notes_request_dto = ats_create_notes_request_dto
        @id = id
        @x_account_id = x_account_id
      end
    end
  end
end
