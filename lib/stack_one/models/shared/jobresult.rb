# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class JobResult < ::Crystalline::FieldAugmented
      extend T::Sig


      field :data, ::StackOne::Shared::Job, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

      field :raw, T.nilable(T::Array[::StackOne::Shared::RawResponse]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('raw') } }


      sig { params(data: ::StackOne::Shared::Job, raw: T.nilable(T::Array[::StackOne::Shared::RawResponse])).void }
      def initialize(data: nil, raw: nil)
        @data = data
        @raw = raw
      end
    end
  end
end
