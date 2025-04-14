# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    

      class LmsCreateUserAssignmentRequest
        extend T::Sig
        include Crystalline::MetadataFields


        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

        field :lms_create_assignment_request_dto, Models::Shared::LmsCreateAssignmentRequestDto, { 'request': { 'media_type': 'application/json' } }
        # The account identifier
        field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


        sig { params(id: ::String, lms_create_assignment_request_dto: Models::Shared::LmsCreateAssignmentRequestDto, x_account_id: ::String).void }
        def initialize(id: nil, lms_create_assignment_request_dto: nil, x_account_id: nil)
          @id = id
          @lms_create_assignment_request_dto = lms_create_assignment_request_dto
          @x_account_id = x_account_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          return false unless @lms_create_assignment_request_dto == other.lms_create_assignment_request_dto
          return false unless @x_account_id == other.x_account_id
          true
        end
      end
    end
  end
end
