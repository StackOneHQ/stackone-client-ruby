# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class InterviewPartType < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The source value of the interview type.
      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The type of the interview.
      field :value, T.nilable(::StackOne::Shared::InterviewPartValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::InterviewPartValue, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::InterviewPartValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
