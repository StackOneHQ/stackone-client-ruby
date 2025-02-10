# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class CreateSkillsApiModel < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The hierarchal level of the skill
      field :hierarchy, T.nilable(::StackOne::Shared::CreateSkillsApiModelHierarchy), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hierarchy') } }
      # The ID associated with this skill
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The language associated with this skill
      field :language, T.nilable(::StackOne::Shared::CreateSkillsApiModelLanguage), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('language') } }
      # The hierarchal level of the skill
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :level, T.nilable(::StackOne::Shared::CreateSkillsApiModelLevel), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('level') } }
      # The name associated with this skill
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The user proficiency level of the skill ranked out of 5
      field :proficiency, T.nilable(::StackOne::Shared::Proficiency), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('proficiency') } }


      sig { params(hierarchy: T.nilable(::StackOne::Shared::CreateSkillsApiModelHierarchy), id: T.nilable(::String), language: T.nilable(::StackOne::Shared::CreateSkillsApiModelLanguage), level: T.nilable(::StackOne::Shared::CreateSkillsApiModelLevel), name: T.nilable(::String), proficiency: T.nilable(::StackOne::Shared::Proficiency)).void }
      def initialize(hierarchy: nil, id: nil, language: nil, level: nil, name: nil, proficiency: nil)
        @hierarchy = hierarchy
        @id = id
        @language = language
        @level = level
        @name = name
        @proficiency = proficiency
      end
    end
  end
end
