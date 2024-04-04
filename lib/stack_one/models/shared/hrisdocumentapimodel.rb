# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class HrisDocumentApiModel < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The content of the file
      field :contents, T.nilable(T::Array[::StackOne::Shared::Content]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('contents') } }
      # The creation date of the file
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The name of the file
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The path where the file is stored
      field :path, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('path') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The content type of the document
      field :type, T.nilable(::StackOne::Shared::HrisDocumentApiModelType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
      # The update date of the file
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(contents: T.nilable(T::Array[::StackOne::Shared::Content]), created_at: T.nilable(::DateTime), id: T.nilable(::String), name: T.nilable(::String), path: T.nilable(::String), remote_id: T.nilable(::String), type: T.nilable(::StackOne::Shared::HrisDocumentApiModelType), updated_at: T.nilable(::DateTime)).void }
      def initialize(contents: nil, created_at: nil, id: nil, name: nil, path: nil, remote_id: nil, type: nil, updated_at: nil)
        @contents = contents
        @created_at = created_at
        @id = id
        @name = name
        @path = path
        @remote_id = remote_id
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
