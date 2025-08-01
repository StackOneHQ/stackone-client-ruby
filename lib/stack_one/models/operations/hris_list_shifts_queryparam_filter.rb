# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    
      # HRIS Shifts filters
      class HrisListShiftsQueryParamFilter
        extend T::Sig
        include Crystalline::MetadataFields

        # Filter to select shifts by employee ID
        field :employee_id, T.nilable(::String), { 'query_param': { 'field_name': 'employee_id' } }
        # Filter shifts that end before this date
        field :ends_before, T.nilable(::DateTime), { 'query_param': { 'field_name': 'ends_before' } }
        # Filter shifts that start after this date
        field :starts_after, T.nilable(::DateTime), { 'query_param': { 'field_name': 'starts_after' } }
        # Filter to select shifts by status
        field :status, T.nilable(Models::Operations::HrisListShiftsQueryParamStatus), { 'query_param': { 'field_name': 'status' } }
        # Use a string with a date to only select results updated after that given date
        field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after' } }


        sig { params(employee_id: T.nilable(::String), ends_before: T.nilable(::DateTime), starts_after: T.nilable(::DateTime), status: T.nilable(Models::Operations::HrisListShiftsQueryParamStatus), updated_after: T.nilable(::String)).void }
        def initialize(employee_id: nil, ends_before: nil, starts_after: nil, status: nil, updated_after: nil)
          @employee_id = employee_id
          @ends_before = ends_before
          @starts_after = starts_after
          @status = status
          @updated_after = updated_after
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @employee_id == other.employee_id
          return false unless @ends_before == other.ends_before
          return false unless @starts_after == other.starts_after
          return false unless @status == other.status
          return false unless @updated_after == other.updated_after
          true
        end
      end
    end
  end
end
