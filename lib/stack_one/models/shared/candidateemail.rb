# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class CandidateEmail < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Type of the email
      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
      # Email value
      field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value') } }


      sig { params(type: T.nilable(::String), value: T.nilable(::String)).void }
      def initialize(type: nil, value: nil)
        @type = type
        @value = value
      end
    end
  end
end