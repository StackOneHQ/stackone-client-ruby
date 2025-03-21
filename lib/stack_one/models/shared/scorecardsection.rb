# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class ScorecardSection < ::Crystalline::FieldAugmented
      extend T::Sig

      # The fields within the section
      field :fields_, T.nilable(T::Array[::StackOne::Shared::Field]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('fields') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The label of the section
      field :label, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('label') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


      sig { params(fields_: T.nilable(T::Array[::StackOne::Shared::Field]), id: T.nilable(::String), label: T.nilable(::String), remote_id: T.nilable(::String)).void }
      def initialize(fields_: nil, id: nil, label: nil, remote_id: nil)
        @fields_ = fields_
        @id = id
        @label = label
        @remote_id = remote_id
      end
    end
  end
end
