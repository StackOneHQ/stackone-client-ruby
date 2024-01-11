# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class Security < StackOne::Utils::FieldAugmented
      extend T::Sig


      field :password, T.nilable(String), { 'security': { 'scheme': true, 'type': 'http', 'sub_type': 'basic', 'field_name': 'password' } }

      field :username, T.nilable(String), { 'security': { 'scheme': true, 'type': 'http', 'sub_type': 'basic', 'field_name': 'username' } }


      sig { params(password: T.nilable(String), username: T.nilable(String)).void }
      def initialize(password: nil, username: nil)
        @password = password
        @username = username
      end
    end
  end
end