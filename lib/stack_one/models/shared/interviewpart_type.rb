# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class InterviewPartType
        extend T::Sig
        include Crystalline::MetadataFields

        # The source value of the interview type.
        field :source_value, T.nilable(T.any(::String, ::Float, T::Boolean, Models::Shared::InterviewPart4, T::Array[::Object])), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
        # The type of the interview.
        field :value, T.nilable(Models::Shared::InterviewPartValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Models::Shared::InterviewPartValue, true) } }


        sig { params(source_value: T.nilable(T.any(::String, ::Float, T::Boolean, Models::Shared::InterviewPart4, T::Array[::Object])), value: T.nilable(Models::Shared::InterviewPartValue)).void }
        def initialize(source_value: nil, value: nil)
          @source_value = source_value
          @value = value
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @source_value == other.source_value
          return false unless @value == other.value
          true
        end
      end
    end
  end
end
