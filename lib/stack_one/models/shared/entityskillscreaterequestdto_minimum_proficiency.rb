# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # The proficiency level of the skill
      class EntitySkillsCreateRequestDtoMinimumProficiency
        extend T::Sig
        include Crystalline::MetadataFields

        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # The name associated with this proficiency
        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }

        field :source_value, T.nilable(T.any(::String, ::Float, T::Boolean, Models::Shared::EntitySkillsCreateRequestDtoSchemas4, T::Array[::Object])), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }

        field :value, T.nilable(Models::Shared::EntitySkillsCreateRequestDtoSchemasValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Models::Shared::EntitySkillsCreateRequestDtoSchemasValue, true) } }


        sig { params(id: T.nilable(::String), name: T.nilable(::String), remote_id: T.nilable(::String), source_value: T.nilable(T.any(::String, ::Float, T::Boolean, Models::Shared::EntitySkillsCreateRequestDtoSchemas4, T::Array[::Object])), value: T.nilable(Models::Shared::EntitySkillsCreateRequestDtoSchemasValue)).void }
        def initialize(id: nil, name: nil, remote_id: nil, source_value: nil, value: nil)
          @id = id
          @name = name
          @remote_id = remote_id
          @source_value = source_value
          @value = value
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          return false unless @name == other.name
          return false unless @remote_id == other.remote_id
          return false unless @source_value == other.source_value
          return false unless @value == other.value
          true
        end
      end
    end
  end
end
