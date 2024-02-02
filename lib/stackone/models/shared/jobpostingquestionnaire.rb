# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class JobPostingQuestionnaire < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :internal, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('internal') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }

      field :questions, T.nilable(T::Array[Shared::Question]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('questions') } }


      sig { params(id: T.nilable(String), internal: T.nilable(T::Boolean), name: T.nilable(String), questions: T.nilable(T::Array[Shared::Question])).void }
      def initialize(id: nil, internal: nil, name: nil, questions: nil)
        @id = id
        @internal = internal
        @name = name
        @questions = questions
      end
    end
  end
end