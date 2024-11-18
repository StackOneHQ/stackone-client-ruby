# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class CreateSkillsApiModel < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The ID associated with this skill
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The name associated with this skill
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


      sig { params(id: T.nilable(::String), name: T.nilable(::String), remote_id: T.nilable(::String)).void }
      def initialize(id: nil, name: nil, remote_id: nil)
        @id = id
        @name = name
        @remote_id = remote_id
      end
    end
  end
end