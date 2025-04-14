# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class LmsCreateCollectionRequestDto
        extend T::Sig
        include Crystalline::MetadataFields

        # The categories associated with this content
        field :categories, T.nilable(T::Array[Models::Shared::CreateCategoriesApiModel]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('categories') } }
        # The URL of the thumbnail image associated with the collection.
        field :cover_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('cover_url') } }
        # The description of the collection
        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
        # The external ID associated with this collection
        field :external_reference, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('external_reference') } }
        # The languages associated with this collection
        field :languages, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('languages') } }
        # The child ID/IDs associated with this collection
        field :learning_object_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('learning_object_ids') } }
        # Provider's unique identifiers of the child ID/IDs associated with this collection
        field :remote_learning_object_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_learning_object_ids') } }
        # The skills associated with this content
        field :skills, T.nilable(T::Array[Models::Shared::CreateSkillsApiModel]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('skills') } }
        # The title of the collection
        field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }
        # Custom Unified Fields configured in your StackOne project
        field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }


        sig { params(categories: T.nilable(T::Array[Models::Shared::CreateCategoriesApiModel]), cover_url: T.nilable(::String), description: T.nilable(::String), external_reference: T.nilable(::String), languages: T.nilable(T::Array[::String]), learning_object_ids: T.nilable(T::Array[::String]), remote_learning_object_ids: T.nilable(T::Array[::String]), skills: T.nilable(T::Array[Models::Shared::CreateSkillsApiModel]), title: T.nilable(::String), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object])).void }
        def initialize(categories: nil, cover_url: nil, description: nil, external_reference: nil, languages: nil, learning_object_ids: nil, remote_learning_object_ids: nil, skills: nil, title: nil, unified_custom_fields: nil)
          @categories = categories
          @cover_url = cover_url
          @description = description
          @external_reference = external_reference
          @languages = languages
          @learning_object_ids = learning_object_ids
          @remote_learning_object_ids = remote_learning_object_ids
          @skills = skills
          @title = title
          @unified_custom_fields = unified_custom_fields
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @categories == other.categories
          return false unless @cover_url == other.cover_url
          return false unless @description == other.description
          return false unless @external_reference == other.external_reference
          return false unless @languages == other.languages
          return false unless @learning_object_ids == other.learning_object_ids
          return false unless @remote_learning_object_ids == other.remote_learning_object_ids
          return false unless @skills == other.skills
          return false unless @title == other.title
          return false unless @unified_custom_fields == other.unified_custom_fields
          true
        end
      end
    end
  end
end
