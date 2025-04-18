# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    

      class HrisCreateEmployeeSkillRequest
        extend T::Sig
        include Crystalline::MetadataFields


        field :entity_skills_create_request_dto, Models::Shared::EntitySkillsCreateRequestDto, { 'request': { 'media_type': 'application/json' } }

        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
        # The account identifier
        field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


        sig { params(entity_skills_create_request_dto: Models::Shared::EntitySkillsCreateRequestDto, id: ::String, x_account_id: ::String).void }
        def initialize(entity_skills_create_request_dto: nil, id: nil, x_account_id: nil)
          @entity_skills_create_request_dto = entity_skills_create_request_dto
          @id = id
          @x_account_id = x_account_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @entity_skills_create_request_dto == other.entity_skills_create_request_dto
          return false unless @id == other.id
          return false unless @x_account_id == other.x_account_id
          true
        end
      end
    end
  end
end
