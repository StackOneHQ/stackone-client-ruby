# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class MarketingCreateEmailTemplateRequestDto < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :messages, T.nilable(T::Array[::StackOne::Shared::EmailMessages]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('messages') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('tags') } }


      sig { params(id: T.nilable(::String), messages: T.nilable(T::Array[::StackOne::Shared::EmailMessages]), name: T.nilable(::String), tags: T.nilable(T::Array[::String])).void }
      def initialize(id: nil, messages: nil, name: nil, tags: nil)
        @id = id
        @messages = messages
        @name = name
        @tags = tags
      end
    end
  end
end
