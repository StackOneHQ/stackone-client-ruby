# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class IamRole
        extend T::Sig
        include Crystalline::MetadataFields


        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
        # The set of policies associated with the role.
        field :policies, T.nilable(T::Array[Models::Shared::IamPolicy]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('policies') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }

        field :type, T.nilable(Models::Shared::IamRoleType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


        sig { params(created_at: T.nilable(::DateTime), description: T.nilable(::String), id: T.nilable(::String), name: T.nilable(::String), policies: T.nilable(T::Array[Models::Shared::IamPolicy]), remote_id: T.nilable(::String), type: T.nilable(Models::Shared::IamRoleType), updated_at: T.nilable(::DateTime)).void }
        def initialize(created_at: nil, description: nil, id: nil, name: nil, policies: nil, remote_id: nil, type: nil, updated_at: nil)
          @created_at = created_at
          @description = description
          @id = id
          @name = name
          @policies = policies
          @remote_id = remote_id
          @type = type
          @updated_at = updated_at
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @created_at == other.created_at
          return false unless @description == other.description
          return false unless @id == other.id
          return false unless @name == other.name
          return false unless @policies == other.policies
          return false unless @remote_id == other.remote_id
          return false unless @type == other.type
          return false unless @updated_at == other.updated_at
          true
        end
      end
    end
  end
end
