# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AccountResult < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :data, ::StackOne::Shared::Account, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

      field :raw, T.nilable(T::Array[::StackOne::Shared::RawResponse]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('raw') } }


      sig { params(data: ::StackOne::Shared::Account, raw: T.nilable(T::Array[::StackOne::Shared::RawResponse])).void }
      def initialize(data: nil, raw: nil)
        @data = data
        @raw = raw
      end
    end
  end
end
