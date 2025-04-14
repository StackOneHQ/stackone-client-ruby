# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # Visibility of the note
      class Visibility
        extend T::Sig
        include Crystalline::MetadataFields

        # The source value of the notes visibility.
        field :source_value, T.nilable(T.any(::String, ::Float, T::Boolean, Models::Shared::AtsCreateNotesRequestDto4, T::Array[::Object])), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
        # The visibility of the notes.
        field :value, T.nilable(Models::Shared::AtsCreateNotesRequestDtoValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Models::Shared::AtsCreateNotesRequestDtoValue, true) } }


        sig { params(source_value: T.nilable(T.any(::String, ::Float, T::Boolean, Models::Shared::AtsCreateNotesRequestDto4, T::Array[::Object])), value: T.nilable(Models::Shared::AtsCreateNotesRequestDtoValue)).void }
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
