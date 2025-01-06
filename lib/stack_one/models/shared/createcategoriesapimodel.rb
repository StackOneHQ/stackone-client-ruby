# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class CreateCategoriesApiModel < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The ID associated with this category
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The hierarchal level of the category
      field :level, T.nilable(::StackOne::Shared::CreateCategoriesApiModelLevel), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('level') } }
      # The name associated with this category
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }


      sig { params(id: T.nilable(::String), level: T.nilable(::StackOne::Shared::CreateCategoriesApiModelLevel), name: T.nilable(::String), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object])).void }
      def initialize(id: nil, level: nil, name: nil, unified_custom_fields: nil)
        @id = id
        @level = level
        @name = name
        @unified_custom_fields = unified_custom_fields
      end
    end
  end
end
