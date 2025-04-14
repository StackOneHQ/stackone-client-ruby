# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class Content
        extend T::Sig
        include Crystalline::MetadataFields

        # The file format of the file
        field :file_format, T.nilable(Models::Shared::ContentFileFormat), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('file_format') } }
        # Unified download URL for retrieving file content.
        field :unified_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_url') } }
        # URL where the file content is located
        field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('url') } }


        sig { params(file_format: T.nilable(Models::Shared::ContentFileFormat), unified_url: T.nilable(::String), url: T.nilable(::String)).void }
        def initialize(file_format: nil, unified_url: nil, url: nil)
          @file_format = file_format
          @unified_url = unified_url
          @url = url
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @file_format == other.file_format
          return false unless @unified_url == other.unified_url
          return false unless @url == other.url
          true
        end
      end
    end
  end
end
