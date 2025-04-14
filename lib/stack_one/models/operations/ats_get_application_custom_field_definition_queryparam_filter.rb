# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    
      # Filter parameters that allow greater customisation of the list response
      class AtsGetApplicationCustomFieldDefinitionQueryParamFilter
        extend T::Sig
        include Crystalline::MetadataFields

        # Use a string with a date to only select results updated after that given date
        field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after' } }


        sig { params(updated_after: T.nilable(::String)).void }
        def initialize(updated_after: nil)
          @updated_after = updated_after
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @updated_after == other.updated_after
          true
        end
      end
    end
  end
end
