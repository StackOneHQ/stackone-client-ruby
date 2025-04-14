# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    

      class AtsCreateCandidateRequest
        extend T::Sig
        include Crystalline::MetadataFields


        field :ats_create_candidate_request_dto, Models::Shared::AtsCreateCandidateRequestDto, { 'request': { 'media_type': 'application/json' } }
        # The account identifier
        field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


        sig { params(ats_create_candidate_request_dto: Models::Shared::AtsCreateCandidateRequestDto, x_account_id: ::String).void }
        def initialize(ats_create_candidate_request_dto: nil, x_account_id: nil)
          @ats_create_candidate_request_dto = ats_create_candidate_request_dto
          @x_account_id = x_account_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @ats_create_candidate_request_dto == other.ats_create_candidate_request_dto
          return false unless @x_account_id == other.x_account_id
          true
        end
      end
    end
  end
end
