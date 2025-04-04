# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class UnifiedLogsPaginated < ::Crystalline::FieldAugmented
      extend T::Sig


      field :data, T::Array[::StackOne::Shared::UnifiedLogs], { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

      field :next_, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('next') } }


      sig { params(data: T::Array[::StackOne::Shared::UnifiedLogs], next_: T.nilable(::String)).void }
      def initialize(data: nil, next_: nil)
        @data = data
        @next_ = next_
      end
    end
  end
end
