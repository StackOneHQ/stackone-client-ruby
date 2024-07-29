# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # Visibility of the note
    class Visibility < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The source value of the notes visibility.
      field :source_value, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The visibility of the notes.
      field :value, T.nilable(::StackOne::Shared::AtsCreateNotesRequestDtoValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(::StackOne::Shared::AtsCreateNotesRequestDtoValue, true) } }


      sig { params(source_value: T.nilable(::Object), value: T.nilable(::StackOne::Shared::AtsCreateNotesRequestDtoValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
