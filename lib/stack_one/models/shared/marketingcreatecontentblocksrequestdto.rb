# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class MarketingCreateContentBlocksRequestDto < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :content, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('tags') } }
      # Stackone enum identifying the type of content block.
      field :type, T.nilable(::StackOne::Shared::MarketingCreateContentBlocksRequestDtoType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }


      sig { params(content: T.nilable(::String), name: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), tags: T.nilable(T::Array[::String]), type: T.nilable(::StackOne::Shared::MarketingCreateContentBlocksRequestDtoType)).void }
      def initialize(content: nil, name: nil, passthrough: nil, tags: nil, type: nil)
        @content = content
        @name = name
        @passthrough = passthrough
        @tags = tags
        @type = type
      end
    end
  end
end
