# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class HrisShiftsPaginated
        extend T::Sig
        include Crystalline::MetadataFields


        field :data, T.nilable(T::Array[Models::Shared::HrisShift]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

        field :next_, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('next') } }

        field :raw, T.nilable(T::Array[Models::Shared::RawResponse]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('raw') } }


        sig { params(data: T.nilable(T::Array[Models::Shared::HrisShift]), next_: T.nilable(::String), raw: T.nilable(T::Array[Models::Shared::RawResponse])).void }
        def initialize(data: nil, next_: nil, raw: nil)
          @data = data
          @next_ = next_
          @raw = raw
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @data == other.data
          return false unless @next_ == other.next_
          return false unless @raw == other.raw
          true
        end
      end
    end
  end
end
