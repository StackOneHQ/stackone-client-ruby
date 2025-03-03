# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class PushMessagesMessageContent < ::Crystalline::FieldAugmented
      extend T::Sig


      field :body, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('body') } }

      field :subtitle, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('subtitle') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }


      sig { params(body: T.nilable(::String), subtitle: T.nilable(::String), title: T.nilable(::String)).void }
      def initialize(body: nil, subtitle: nil, title: nil)
        @body = body
        @subtitle = subtitle
        @title = title
      end
    end
  end
end
