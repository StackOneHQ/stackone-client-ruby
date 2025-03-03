# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The location of the time entry
    class Location < ::Crystalline::FieldAugmented
      extend T::Sig

      # The reference status
      field :active, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('active') } }
      # The reference id
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The reference name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


      sig { params(active: T.nilable(::Object), id: T.nilable(::String), name: T.nilable(::String), remote_id: T.nilable(::String)).void }
      def initialize(active: nil, id: nil, name: nil, remote_id: nil)
        @active = active
        @id = id
        @name = name
        @remote_id = remote_id
      end
    end
  end
end
