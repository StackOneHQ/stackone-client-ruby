# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class JobHiringTeam < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Email of the hiring team member.
      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('email') } }
      # First name of the hiring team member.
      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
      # Last name of the hiring team member.
      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }
      # Provider's unique identifier of the user
      field :remote_user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_user_id') } }
      # Role of the hiring team member.
      field :role, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('role') } }
      # User ID of the hiring team member.
      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('user_id') } }


      sig { params(email: T.nilable(::String), first_name: T.nilable(::String), last_name: T.nilable(::String), remote_user_id: T.nilable(::String), role: T.nilable(::String), user_id: T.nilable(::String)).void }
      def initialize(email: nil, first_name: nil, last_name: nil, remote_user_id: nil, role: nil, user_id: nil)
        @email = email
        @first_name = first_name
        @last_name = last_name
        @remote_user_id = remote_user_id
        @role = role
        @user_id = user_id
      end
    end
  end
end
