# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  
    # HRIS Employees filters
    class HrisListEmployeesQueryParamFilter < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Filter to select employees by employee_number
      field :employee_number, T.nilable(::String), { 'query_param': { 'field_name': 'employee_number' } }
      # Use a string with a date to only select results updated after that given date
      field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after' } }


      sig { params(employee_number: T.nilable(::String), updated_after: T.nilable(::String)).void }
      def initialize(employee_number: nil, updated_after: nil)
        @employee_number = employee_number
        @updated_after = updated_after
      end
    end
  end
end
