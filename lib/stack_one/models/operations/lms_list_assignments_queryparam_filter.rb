# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  
    # LMS Assignment Filter
    class LmsListAssignmentsQueryParamFilter < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Filter to select assignment by completed status
      field :completed, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'completed' } }
      # Filter to select assignment by learning object type.
      field :learning_object_type, T.nilable(::StackOne::Operations::LearningObjectType), { 'query_param': { 'field_name': 'learning_object_type' } }
      # Use a string with a date to only select results updated after that given date
      field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after' } }


      sig { params(completed: T.nilable(T::Boolean), learning_object_type: T.nilable(::StackOne::Operations::LearningObjectType), updated_after: T.nilable(::String)).void }
      def initialize(completed: nil, learning_object_type: nil, updated_after: nil)
        @completed = completed
        @learning_object_type = learning_object_type
        @updated_after = updated_after
      end
    end
  end
end
