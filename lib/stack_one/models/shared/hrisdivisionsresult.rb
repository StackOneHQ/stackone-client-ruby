# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class HRISDivisionsResult
        extend T::Sig
        include Crystalline::MetadataFields


        field :data, Models::Shared::HRISDivision, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

        field :raw, T.nilable(T::Array[Models::Shared::RawResponse]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('raw') } }


        sig { params(data: Models::Shared::HRISDivision, raw: T.nilable(T::Array[Models::Shared::RawResponse])).void }
        def initialize(data: nil, raw: nil)
          @data = data
          @raw = raw
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @data == other.data
          return false unless @raw == other.raw
          true
        end
      end
    end
  end
end
