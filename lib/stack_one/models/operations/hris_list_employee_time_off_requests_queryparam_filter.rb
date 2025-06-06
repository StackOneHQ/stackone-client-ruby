# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    
      # HRIS Time Off filters
      class HrisListEmployeeTimeOffRequestsQueryParamFilter
        extend T::Sig
        include Crystalline::MetadataFields

        # List of time off type ids to filter by.
        field :type_ids, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'type_ids' } }
        # Use a string with a date to only select results updated after that given date
        field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after' } }


        sig { params(type_ids: T.nilable(T::Array[::String]), updated_after: T.nilable(::String)).void }
        def initialize(type_ids: nil, updated_after: nil)
          @type_ids = type_ids
          @updated_after = updated_after
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @type_ids == other.type_ids
          return false unless @updated_after == other.updated_after
          true
        end
      end
    end
  end
end
