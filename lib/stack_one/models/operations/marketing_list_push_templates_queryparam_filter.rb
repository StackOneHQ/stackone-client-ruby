# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  
    # Filter parameters that allow greater customisation of the list response
    class MarketingListPushTemplatesQueryParamFilter < ::Crystalline::FieldAugmented
      extend T::Sig

      # Use a string with a date to only select results updated after that given date
      field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after' } }


      sig { params(updated_after: T.nilable(::String)).void }
      def initialize(updated_after: nil)
        @updated_after = updated_after
      end
    end
  end
end
