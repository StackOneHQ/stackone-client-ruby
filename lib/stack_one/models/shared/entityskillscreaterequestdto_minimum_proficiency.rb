# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The proficiency level of the skill
    class EntitySkillsCreateRequestDtoMinimumProficiency < ::Crystalline::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The name associated with this proficiency
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }

      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }

      field :value, T.nilable(::StackOne::Shared::EntitySkillsCreateRequestDtoSchemasValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::EntitySkillsCreateRequestDtoSchemasValue, true) } }


      sig { params(id: T.nilable(::String), name: T.nilable(::String), remote_id: T.nilable(::String), source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::EntitySkillsCreateRequestDtoSchemasValue)).void }
      def initialize(id: nil, name: nil, remote_id: nil, source_value: nil, value: nil)
        @id = id
        @name = name
        @remote_id = remote_id
        @source_value = source_value
        @value = value
      end
    end
  end
end
