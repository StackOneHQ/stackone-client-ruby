# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class LmsCreateContentRequestDto < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Whether the content is active and available for users.
      field :active, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('active') } }
      # The categories associated with this content
      field :categories, T.nilable(T::Array[::StackOne::Shared::CreateCategoriesApiModel]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('categories') } }
      # The type of content
      field :content_type, T.nilable(::StackOne::Shared::LmsCreateContentRequestDtoContentType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content_type') } }
      # The external URL of the content
      field :content_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content_url') } }
      # The parent IDs associated with this content
      field :course_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('course_ids') } }
      # The URL of the thumbnail image associated with the content.
      field :cover_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('cover_url') } }
      # The description of the content
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # The duration of the content following the ISO8601 standard. If duration_unit is applicable we will derive this from the smallest unit given in the duration string
      field :duration, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('duration') } }
      # The external ID associated with this content
      field :external_reference, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('external_reference') } }
      # The languages associated with this content
      field :languages, T.nilable(T::Array[::StackOne::Shared::ContentLanguageEnum]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('languages') } }
      # The order of the individual content within a content grouping. This is not applicable for pushing individual content.
      field :order, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('order') } }
      # The title of the content
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }


      sig { params(active: T.nilable(::Object), categories: T.nilable(T::Array[::StackOne::Shared::CreateCategoriesApiModel]), content_type: T.nilable(::StackOne::Shared::LmsCreateContentRequestDtoContentType), content_url: T.nilable(::String), course_ids: T.nilable(T::Array[::String]), cover_url: T.nilable(::String), description: T.nilable(::String), duration: T.nilable(::String), external_reference: T.nilable(::String), languages: T.nilable(T::Array[::StackOne::Shared::ContentLanguageEnum]), order: T.nilable(::Float), title: T.nilable(::String)).void }
      def initialize(active: nil, categories: nil, content_type: nil, content_url: nil, course_ids: nil, cover_url: nil, description: nil, duration: nil, external_reference: nil, languages: nil, order: nil, title: nil)
        @active = active
        @categories = categories
        @content_type = content_type
        @content_url = content_url
        @course_ids = course_ids
        @cover_url = cover_url
        @description = description
        @duration = duration
        @external_reference = external_reference
        @languages = languages
        @order = order
        @title = title
      end
    end
  end
end
