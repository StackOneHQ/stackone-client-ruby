# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class QuestionMultipleChoiceAnswers < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }

      field :text, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('text') } }


      sig { params(id: T.nilable(::String), remote_id: T.nilable(::String), text: T.nilable(::String)).void }
      def initialize(id: nil, remote_id: nil, text: nil)
        @id = id
        @remote_id = remote_id
        @text = text
      end
    end
  end
end
