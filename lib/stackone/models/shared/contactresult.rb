# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/contact'

module StackOne
  module Shared

    class ContactResult < StackOne::Utils::FieldAugmented
      extend T::Sig


      field :data, Shared::Contact, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }

      field :raw, T.nilable(T::Array[Shared::RawResponse]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('raw') } }


      sig { params(data: Shared::Contact, raw: T.nilable(T::Array[Shared::RawResponse])).void }
      def initialize(data: nil, raw: nil)
        @data = data
        @raw = raw
      end
    end
  end
end