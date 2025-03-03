# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class LmsUpsertContentRequestDto < ::Crystalline::FieldAugmented
      extend T::Sig

      # Whether the content is active and available for users.
      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('active') } }
      # The additional_data associated with this content
      field :additional_data, T.nilable(T::Array[::StackOne::Shared::AdditionalData]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('additional_data') } }
      # The categories associated with this content
      field :categories, T.nilable(T::Array[::StackOne::Shared::CreateCategoriesApiModel]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('categories') } }
      # The type of content
      field :content_type, T.nilable(::StackOne::Shared::LmsUpsertContentRequestDtoContentType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content_type') } }
      # The external URL of the content
      field :content_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content_url') } }
      # The URL of the thumbnail image associated with the content.
      field :cover_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('cover_url') } }
      # The date on which the content was created.
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The description of the content
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # The duration of the content following the ISO8601 standard. If duration_unit is applicable we will derive this from the smallest unit given in the duration string or the minimum unit accepted by the provider.
      field :duration, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('duration') } }
      # The external ID associated with this content
      field :external_reference, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('external_reference') } }
      # The languages associated with this content
      field :languages, T.nilable(T::Array[::StackOne::Shared::LanguageEnum]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('languages') } }
      # Localised content information
      field :localisations, T.nilable(T::Array[::StackOne::Shared::LocalisationModel]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('localisations') } }
      # The mobile friendly URL of the content
      field :mobile_launch_content_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('mobile_launch_content_url') } }
      # The order of the individual content within a content grouping. This is not applicable for pushing individual content.
      field :order, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('order') } }
      # A short description or summary for the content
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :short_description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('short_description') } }
      # The skills associated with this content
      field :skills, T.nilable(T::Array[::StackOne::Shared::CreateSkillsApiModel]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('skills') } }
      # A list of tags associated with the content
      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('tags') } }
      # The title of the content
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }
      # The date on which the content was last updated.
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(active: T.nilable(T::Boolean), additional_data: T.nilable(T::Array[::StackOne::Shared::AdditionalData]), categories: T.nilable(T::Array[::StackOne::Shared::CreateCategoriesApiModel]), content_type: T.nilable(::StackOne::Shared::LmsUpsertContentRequestDtoContentType), content_url: T.nilable(::String), cover_url: T.nilable(::String), created_at: T.nilable(::DateTime), description: T.nilable(::String), duration: T.nilable(::String), external_reference: T.nilable(::String), languages: T.nilable(T::Array[::StackOne::Shared::LanguageEnum]), localisations: T.nilable(T::Array[::StackOne::Shared::LocalisationModel]), mobile_launch_content_url: T.nilable(::String), order: T.nilable(::Float), short_description: T.nilable(::String), skills: T.nilable(T::Array[::StackOne::Shared::CreateSkillsApiModel]), tags: T.nilable(T::Array[::String]), title: T.nilable(::String), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime)).void }
      def initialize(active: nil, additional_data: nil, categories: nil, content_type: nil, content_url: nil, cover_url: nil, created_at: nil, description: nil, duration: nil, external_reference: nil, languages: nil, localisations: nil, mobile_launch_content_url: nil, order: nil, short_description: nil, skills: nil, tags: nil, title: nil, unified_custom_fields: nil, updated_at: nil)
        @active = active
        @additional_data = additional_data
        @categories = categories
        @content_type = content_type
        @content_url = content_url
        @cover_url = cover_url
        @created_at = created_at
        @description = description
        @duration = duration
        @external_reference = external_reference
        @languages = languages
        @localisations = localisations
        @mobile_launch_content_url = mobile_launch_content_url
        @order = order
        @short_description = short_description
        @skills = skills
        @tags = tags
        @title = title
        @unified_custom_fields = unified_custom_fields
        @updated_at = updated_at
      end
    end
  end
end
