# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # RejectedReasonValue - The type of the rejected reason.
      class RejectedReasonValue < T::Enum
        enums do
          REJECTED_BY_CANDIDATE = new('rejected_by_candidate')
          REJECTED_BY_ORGANIZATION = new('rejected_by_organization')
          OTHER = new('other')
          UNKNOWN = new('unknown')
          UNMAPPED_VALUE = new('unmapped_value')
        end
      end
    end
  end
end
