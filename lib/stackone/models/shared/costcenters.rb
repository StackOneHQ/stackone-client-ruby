# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class CostCenters < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :name, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }


      sig { params(name: T.nilable(String)).void }
      def initialize(name: nil)
        @name = name
      end
    end
  end
end
