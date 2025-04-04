# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The user's avatar data. This generally contains a URL within this property's 'contents' array.
    class IamUserAvatar < ::Crystalline::FieldAugmented
      extend T::Sig

      # The category of the file
      field :category, T.nilable(::StackOne::Shared::IamUserCategory), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('category') } }
      # The categoryId of the documents
      field :category_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('category_id') } }
      # The content of the file. Deprecated, use `url` and `file_format` one level up instead
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :contents, T.nilable(T::Array[::StackOne::Shared::Content]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('contents') } }
      # The creation date of the file
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The file format of the file
      field :file_format, T.nilable(::StackOne::Shared::IamUserFileFormat), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('file_format') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The name of the file
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The path where the file is stored
      field :path, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('path') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # URL where the file content is located
      field :remote_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_url') } }
      # The update date of the file
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(category: T.nilable(::StackOne::Shared::IamUserCategory), category_id: T.nilable(::String), contents: T.nilable(T::Array[::StackOne::Shared::Content]), created_at: T.nilable(::DateTime), file_format: T.nilable(::StackOne::Shared::IamUserFileFormat), id: T.nilable(::String), name: T.nilable(::String), path: T.nilable(::String), remote_id: T.nilable(::String), remote_url: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(category: nil, category_id: nil, contents: nil, created_at: nil, file_format: nil, id: nil, name: nil, path: nil, remote_id: nil, remote_url: nil, updated_at: nil)
        @category = category
        @category_id = category_id
        @contents = contents
        @created_at = created_at
        @file_format = file_format
        @id = id
        @name = name
        @path = path
        @remote_id = remote_id
        @remote_url = remote_url
        @updated_at = updated_at
      end
    end
  end
end
