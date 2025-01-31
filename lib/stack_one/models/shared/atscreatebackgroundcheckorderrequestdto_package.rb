# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AtsCreateBackgroundCheckOrderRequestDtoPackage < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Package description
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Package name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Package tests
      field :tests, T.nilable(T::Array[::StackOne::Shared::Package]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('tests') } }


      sig { params(description: T.nilable(::String), id: T.nilable(::String), name: T.nilable(::String), remote_id: T.nilable(::String), tests: T.nilable(T::Array[::StackOne::Shared::Package])).void }
      def initialize(description: nil, id: nil, name: nil, remote_id: nil, tests: nil)
        @description = description
        @id = id
        @name = name
        @remote_id = remote_id
        @tests = tests
      end
    end
  end
end
