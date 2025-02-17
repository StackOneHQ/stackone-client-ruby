# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  
    # LMS Assignment Filter
    class LmsListAssignmentsQueryParamFilter < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Filter to select assignment by status
      field :status, T.nilable(::StackOne::Operations::QueryParamStatus), { 'query_param': { 'field_name': 'status' } }
      # Use a string with a date to only select results updated after that given date
      field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after' } }


      sig { params(status: T.nilable(::StackOne::Operations::QueryParamStatus), updated_after: T.nilable(::String)).void }
      def initialize(status: nil, updated_after: nil)
        @status = status
        @updated_after = updated_after
      end
    end
  end
end
