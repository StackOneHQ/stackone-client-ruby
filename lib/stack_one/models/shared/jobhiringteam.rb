# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class JobHiringTeam < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('email') } }

      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }

      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }

      field :role, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('role') } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('user_id') } }


      sig { params(email: T.nilable(::String), first_name: T.nilable(::String), last_name: T.nilable(::String), role: T.nilable(::String), user_id: T.nilable(::String)).void }
      def initialize(email: nil, first_name: nil, last_name: nil, role: nil, user_id: nil)
        @email = email
        @first_name = first_name
        @last_name = last_name
        @role = role
        @user_id = user_id
      end
    end
  end
end
