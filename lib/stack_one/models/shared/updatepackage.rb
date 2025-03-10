# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class UpdatePackage < ::Crystalline::FieldAugmented
      extend T::Sig

      # Package description
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
      # Package name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }


      sig { params(description: T.nilable(::String), name: T.nilable(::String)).void }
      def initialize(description: nil, name: nil)
        @description = description
        @name = name
      end
    end
  end
end
