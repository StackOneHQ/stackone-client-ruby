# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class JobPostingCompensationPayFrequency < ::Crystalline::FieldAugmented
      extend T::Sig

      # The source value of the pay frequency.
      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The pay frequency of the job postings.
      field :value, T.nilable(::StackOne::Shared::JobPostingCompensationValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::JobPostingCompensationValue, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::JobPostingCompensationValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
