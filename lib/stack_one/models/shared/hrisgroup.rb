# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class HRISGroup < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The name of the group
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The list of parent group ids of the given group
      field :parent_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('parent_ids') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The type of the group
      field :type, T.nilable(::StackOne::Shared::HRISGroupType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }


      sig { params(id: T.nilable(::String), name: T.nilable(::String), parent_ids: T.nilable(T::Array[::String]), remote_id: T.nilable(::String), type: T.nilable(::StackOne::Shared::HRISGroupType)).void }
      def initialize(id: nil, name: nil, parent_ids: nil, remote_id: nil, type: nil)
        @id = id
        @name = name
        @parent_ids = parent_ids
        @remote_id = remote_id
        @type = type
      end
    end
  end
end