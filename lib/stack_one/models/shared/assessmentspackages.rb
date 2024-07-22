# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AssessmentsPackages < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Assessment description
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Assessment name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }

      field :type, T.nilable(::StackOne::Shared::AssessmentsPackagesType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }


      sig { params(description: T.nilable(::String), id: T.nilable(::String), name: T.nilable(::String), remote_id: T.nilable(::String), type: T.nilable(::StackOne::Shared::AssessmentsPackagesType)).void }
      def initialize(description: nil, id: nil, name: nil, remote_id: nil, type: nil)
        @description = description
        @id = id
        @name = name
        @remote_id = remote_id
        @type = type
      end
    end
  end
end