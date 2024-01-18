# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/documenttypeenum'

module StackOne
  module Shared

    class DocumentApiModel < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The content of the document
      field :contents, T::Array[Shared::Content], { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('contents') } }
      # The creation date of the document
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The unique ID of the document
      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The name of the document
      field :name, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The path where the document is stored
      field :path, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('path') } }
      # The content type of the document
      field :type, T.nilable(Shared::DocumentTypeEnum), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
      # The update date of the document
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(contents: T::Array[Shared::Content], created_at: T.nilable(DateTime), id: T.nilable(String), name: T.nilable(String), path: T.nilable(String), type: T.nilable(Shared::DocumentTypeEnum), updated_at: T.nilable(DateTime)).void }
      def initialize(contents: nil, created_at: nil, id: nil, name: nil, path: nil, type: nil, updated_at: nil)
        @contents = contents
        @created_at = created_at
        @id = id
        @name = name
        @path = path
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
