# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class MarketingCreateTemplateRequestDto < StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :messages, T.nilable(T::Array[Shared::Message]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('messages') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :tags, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tags') } }


      sig { params(id: T.nilable(String), messages: T.nilable(T::Array[Shared::Message]), name: T.nilable(String), tags: T.nilable(T::Array[String])).void }
      def initialize(id: nil, messages: nil, name: nil, tags: nil)
        @id = id
        @messages = messages
        @name = name
        @tags = tags
      end
    end
  end
end
