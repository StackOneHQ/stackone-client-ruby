# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class ApplicationInterviewStage < ::Crystalline::FieldAugmented
      extend T::Sig

      # Interview Stage created date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }

      field :order, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('order') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }
      # Interview Stage updated date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(::DateTime), id: T.nilable(::String), name: T.nilable(::String), order: T.nilable(::Float), remote_id: T.nilable(::String), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime)).void }
      def initialize(created_at: nil, id: nil, name: nil, order: nil, remote_id: nil, unified_custom_fields: nil, updated_at: nil)
        @created_at = created_at
        @id = id
        @name = name
        @order = order
        @remote_id = remote_id
        @unified_custom_fields = unified_custom_fields
        @updated_at = updated_at
      end
    end
  end
end
