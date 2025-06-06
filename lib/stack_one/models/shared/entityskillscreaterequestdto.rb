# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class EntitySkillsCreateRequestDto
        extend T::Sig
        include Crystalline::MetadataFields

        # The ID associated with this skill
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # The proficiency level of the skill
        field :maximum_proficiency, T.nilable(Models::Shared::EntitySkillsCreateRequestDtoMaximumProficiency), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('maximum_proficiency') } }
        # The proficiency level of the skill
        field :minimum_proficiency, T.nilable(Models::Shared::EntitySkillsCreateRequestDtoMinimumProficiency), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('minimum_proficiency') } }
        # The name associated with this skill
        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }


        sig { params(id: T.nilable(::String), maximum_proficiency: T.nilable(Models::Shared::EntitySkillsCreateRequestDtoMaximumProficiency), minimum_proficiency: T.nilable(Models::Shared::EntitySkillsCreateRequestDtoMinimumProficiency), name: T.nilable(::String)).void }
        def initialize(id: nil, maximum_proficiency: nil, minimum_proficiency: nil, name: nil)
          @id = id
          @maximum_proficiency = maximum_proficiency
          @minimum_proficiency = minimum_proficiency
          @name = name
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          return false unless @maximum_proficiency == other.maximum_proficiency
          return false unless @minimum_proficiency == other.minimum_proficiency
          return false unless @name == other.name
          true
        end
      end
    end
  end
end
