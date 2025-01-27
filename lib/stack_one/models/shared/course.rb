# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Course < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Whether the course is active and available for users.
      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('active') } }
      # The categories associated with this course
      field :categories, T.nilable(T::Array[::StackOne::Shared::Category]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('categories') } }
      # The child ID/IDs associated with this course
      field :content_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content_ids') } }
      # The URL of the thumbnail image associated with the course.
      field :cover_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('cover_url') } }
      # The date on which the course was created.
      field :created_at, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at') } }
      # The description of the course
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # The duration of the course following the ISO8601 standard. If duration_unit is applicable we will derive this from the smallest unit given in the duration string
      field :duration, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('duration') } }
      # The external ID associated with this course
      field :external_reference, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('external_reference') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The languages associated with this course
      field :languages, T.nilable(T::Array[::StackOne::Shared::LanguageEnum]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('languages') } }
      # The name of the course provider
      field :provider, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('provider') } }
      # Provider's unique identifier of the child content IDs associated with this course
      field :remote_content_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_content_ids') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The skills associated with this course
      field :skills, T.nilable(T::Array[::StackOne::Shared::Skills]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('skills') } }
      # The title of the course
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }
      # The date on which the course was last updated.
      field :updated_at, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at') } }
      # The redirect URL of the course.
      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('url') } }


      sig { params(active: T.nilable(T::Boolean), categories: T.nilable(T::Array[::StackOne::Shared::Category]), content_ids: T.nilable(T::Array[::String]), cover_url: T.nilable(::String), created_at: T.nilable(::String), description: T.nilable(::String), duration: T.nilable(::String), external_reference: T.nilable(::String), id: T.nilable(::String), languages: T.nilable(T::Array[::StackOne::Shared::LanguageEnum]), provider: T.nilable(::String), remote_content_ids: T.nilable(T::Array[::String]), remote_id: T.nilable(::String), skills: T.nilable(T::Array[::StackOne::Shared::Skills]), title: T.nilable(::String), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::String), url: T.nilable(::String)).void }
      def initialize(active: nil, categories: nil, content_ids: nil, cover_url: nil, created_at: nil, description: nil, duration: nil, external_reference: nil, id: nil, languages: nil, provider: nil, remote_content_ids: nil, remote_id: nil, skills: nil, title: nil, unified_custom_fields: nil, updated_at: nil, url: nil)
        @active = active
        @categories = categories
        @content_ids = content_ids
        @cover_url = cover_url
        @created_at = created_at
        @description = description
        @duration = duration
        @external_reference = external_reference
        @id = id
        @languages = languages
        @provider = provider
        @remote_content_ids = remote_content_ids
        @remote_id = remote_id
        @skills = skills
        @title = title
        @unified_custom_fields = unified_custom_fields
        @updated_at = updated_at
        @url = url
      end
    end
  end
end
