# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    
      # HRIS Time Off Balance filters
      class HrisListEmployeeTimeOffBalancesQueryParamFilter
        extend T::Sig
        include Crystalline::MetadataFields

        # List of policy ids to filter time off balances by.
        field :policy_ids, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'policy_ids' } }
        # Use a string with a date to only select results updated after that given date
        field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after' } }


        sig { params(policy_ids: T.nilable(T::Array[::String]), updated_after: T.nilable(::String)).void }
        def initialize(policy_ids: nil, updated_after: nil)
          @policy_ids = policy_ids
          @updated_after = updated_after
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @policy_ids == other.policy_ids
          return false unless @updated_after == other.updated_after
          true
        end
      end
    end
  end
end
