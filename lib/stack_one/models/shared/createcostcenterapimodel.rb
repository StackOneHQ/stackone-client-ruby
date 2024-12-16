# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class CreateCostCenterApiModel < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :distribution_percentage, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('distribution_percentage') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }


      sig { params(distribution_percentage: T.nilable(::Float), id: T.nilable(::String), name: T.nilable(::String)).void }
      def initialize(distribution_percentage: nil, id: nil, name: nil)
        @distribution_percentage = distribution_percentage
        @id = id
        @name = name
      end
    end
  end
end
