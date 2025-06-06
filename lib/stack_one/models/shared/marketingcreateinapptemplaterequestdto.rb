# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class MarketingCreateInAppTemplateRequestDto
        extend T::Sig
        include Crystalline::MetadataFields


        field :messages, T.nilable(T::Array[Models::Shared::InAppMessages]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('messages') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
        # Value to pass through to the provider
        field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }

        field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('tags') } }


        sig { params(messages: T.nilable(T::Array[Models::Shared::InAppMessages]), name: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), tags: T.nilable(T::Array[::String])).void }
        def initialize(messages: nil, name: nil, passthrough: nil, tags: nil)
          @messages = messages
          @name = name
          @passthrough = passthrough
          @tags = tags
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @messages == other.messages
          return false unless @name == other.name
          return false unless @passthrough == other.passthrough
          return false unless @tags == other.tags
          true
        end
      end
    end
  end
end
