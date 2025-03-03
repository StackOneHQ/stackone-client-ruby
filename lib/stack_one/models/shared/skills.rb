# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Skills < ::Crystalline::FieldAugmented
      extend T::Sig

      # Whether the skill is active and therefore available for use
      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('active') } }
      # The hierarchal level of the skill
      field :hierarchy, T.nilable(::StackOne::Shared::SkillsHierarchy), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hierarchy') } }
      # The ID associated with this skill
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The language associated with this skill
      field :language, T.nilable(::StackOne::Shared::SkillsLanguage), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('language') } }
      # The hierarchal level of the skill
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :level, T.nilable(::StackOne::Shared::SkillsLevel), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('level') } }
      # The name associated with this skill
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The user proficiency level of the skill ranked out of 5
      field :proficiency, T.nilable(::StackOne::Shared::SkillsProficiency), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('proficiency') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


      sig { params(active: T.nilable(T::Boolean), hierarchy: T.nilable(::StackOne::Shared::SkillsHierarchy), id: T.nilable(::String), language: T.nilable(::StackOne::Shared::SkillsLanguage), level: T.nilable(::StackOne::Shared::SkillsLevel), name: T.nilable(::String), proficiency: T.nilable(::StackOne::Shared::SkillsProficiency), remote_id: T.nilable(::String)).void }
      def initialize(active: nil, hierarchy: nil, id: nil, language: nil, level: nil, name: nil, proficiency: nil, remote_id: nil)
        @active = active
        @hierarchy = hierarchy
        @id = id
        @language = language
        @level = level
        @name = name
        @proficiency = proficiency
        @remote_id = remote_id
      end
    end
  end
end
