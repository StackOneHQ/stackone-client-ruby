# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AssessmentsPackagesResult < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :data, ::StackOne::Shared::AssessmentsPackages, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

      field :raw, T.nilable(T::Array[::StackOne::Shared::RawResponse]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('raw') } }


      sig { params(data: ::StackOne::Shared::AssessmentsPackages, raw: T.nilable(T::Array[::StackOne::Shared::RawResponse])).void }
      def initialize(data: nil, raw: nil)
        @data = data
        @raw = raw
      end
    end
  end
end
