# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class CompletionsPaginated < ::Crystalline::FieldAugmented
      extend T::Sig


      field :data, T::Array[::StackOne::Shared::Completion], { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

      field :next_, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('next') } }

      field :raw, T.nilable(T::Array[::StackOne::Shared::RawResponse]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('raw') } }


      sig { params(data: T::Array[::StackOne::Shared::Completion], next_: T.nilable(::String), raw: T.nilable(T::Array[::StackOne::Shared::RawResponse])).void }
      def initialize(data: nil, next_: nil, raw: nil)
        @data = data
        @next_ = next_
        @raw = raw
      end
    end
  end
end
