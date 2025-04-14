# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class HRISBenefitsPaginated
        extend T::Sig
        include Crystalline::MetadataFields


        field :data, T::Array[Models::Shared::HRISBenefit], { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

        field :next_, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('next') } }
        # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
        field :next_page, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('next_page') } }

        field :raw, T.nilable(T::Array[Models::Shared::RawResponse]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('raw') } }


        sig { params(data: T::Array[Models::Shared::HRISBenefit], next_: T.nilable(::String), next_page: T.nilable(::String), raw: T.nilable(T::Array[Models::Shared::RawResponse])).void }
        def initialize(data: nil, next_: nil, next_page: nil, raw: nil)
          @data = data
          @next_ = next_
          @next_page = next_page
          @raw = raw
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @data == other.data
          return false unless @next_ == other.next_
          return false unless @next_page == other.next_page
          return false unless @raw == other.raw
          true
        end
      end
    end
  end
end
