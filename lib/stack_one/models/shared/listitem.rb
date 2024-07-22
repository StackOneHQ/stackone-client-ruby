# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class ListItem < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


      sig { params(id: T.nilable(::String), remote_id: T.nilable(::String)).void }
      def initialize(id: nil, remote_id: nil)
        @id = id
        @remote_id = remote_id
      end
    end
  end
end