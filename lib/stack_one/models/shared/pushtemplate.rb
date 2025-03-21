# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class PushTemplate < ::Crystalline::FieldAugmented
      extend T::Sig

      # Date of creation
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :messages, T.nilable(T::Array[::StackOne::Shared::PushMessages]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('messages') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('tags') } }
      # Date of last update
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(::DateTime), id: T.nilable(::String), messages: T.nilable(T::Array[::StackOne::Shared::PushMessages]), name: T.nilable(::String), remote_id: T.nilable(::String), tags: T.nilable(T::Array[::String]), updated_at: T.nilable(::DateTime)).void }
      def initialize(created_at: nil, id: nil, messages: nil, name: nil, remote_id: nil, tags: nil, updated_at: nil)
        @created_at = created_at
        @id = id
        @messages = messages
        @name = name
        @remote_id = remote_id
        @tags = tags
        @updated_at = updated_at
      end
    end
  end
end
