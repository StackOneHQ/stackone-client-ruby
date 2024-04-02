# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class User < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('email') } }

      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }

      field :phone, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


      sig { params(email: T.nilable(::String), first_name: T.nilable(::String), id: T.nilable(::String), last_name: T.nilable(::String), name: T.nilable(::String), phone: T.nilable(::String), remote_id: T.nilable(::String)).void }
      def initialize(email: nil, first_name: nil, id: nil, last_name: nil, name: nil, phone: nil, remote_id: nil)
        @email = email
        @first_name = first_name
        @id = id
        @last_name = last_name
        @name = name
        @phone = phone
        @remote_id = remote_id
      end
    end
  end
end
