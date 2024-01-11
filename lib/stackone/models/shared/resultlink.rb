# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class ResultLink < StackOne::Utils::FieldAugmented
      extend T::Sig

      # The URL of the result link.
      field :url, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('url') } }
      # The label of the result link.
      field :label, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('label') } }


      sig { params(url: String, label: T.nilable(String)).void }
      def initialize(url: nil, label: nil)
        @url = url
        @label = label
      end
    end
  end
end
