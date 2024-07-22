# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class ContentBlocksPaginated < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :data, T::Array[::StackOne::Shared::ContentBlock], { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

      field :next_, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('next') } }
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :next_page, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('next_page') } }

      field :raw, T.nilable(T::Array[::StackOne::Shared::RawResponse]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('raw') } }


      sig { params(data: T::Array[::StackOne::Shared::ContentBlock], next_: T.nilable(::String), next_page: T.nilable(::String), raw: T.nilable(T::Array[::StackOne::Shared::RawResponse])).void }
      def initialize(data: nil, next_: nil, next_page: nil, raw: nil)
        @data = data
        @next_ = next_
        @next_page = next_page
        @raw = raw
      end
    end
  end
end
