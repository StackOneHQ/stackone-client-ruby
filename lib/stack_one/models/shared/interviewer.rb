# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class Interviewer
        extend T::Sig
        include Crystalline::MetadataFields


        field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('email') } }

        field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

        field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


        sig { params(email: T.nilable(::String), first_name: T.nilable(::String), id: T.nilable(::String), last_name: T.nilable(::String), name: T.nilable(::String), remote_id: T.nilable(::String)).void }
        def initialize(email: nil, first_name: nil, id: nil, last_name: nil, name: nil, remote_id: nil)
          @email = email
          @first_name = first_name
          @id = id
          @last_name = last_name
          @name = name
          @remote_id = remote_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @email == other.email
          return false unless @first_name == other.first_name
          return false unless @id == other.id
          return false unless @last_name == other.last_name
          return false unless @name == other.name
          return false unless @remote_id == other.remote_id
          true
        end
      end
    end
  end
end
