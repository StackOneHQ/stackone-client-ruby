# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class ApplicationAttachment < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The content of the attachment.
      field :content, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content') } }

      field :content_type, T.nilable(::StackOne::Shared::ContentType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content_type') } }
      # The file name of the attachment.
      field :file_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('file_name') } }
      # The URL of the attachment.
      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('url') } }


      sig { params(content: T.nilable(::String), content_type: T.nilable(::StackOne::Shared::ContentType), file_name: T.nilable(::String), url: T.nilable(::String)).void }
      def initialize(content: nil, content_type: nil, file_name: nil, url: nil)
        @content = content
        @content_type = content_type
        @file_name = file_name
        @url = url
      end
    end
  end
end