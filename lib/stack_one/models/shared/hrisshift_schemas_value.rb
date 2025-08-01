# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # HrisShiftSchemasValue - The status of the shift
      class HrisShiftSchemasValue < T::Enum
        enums do
          DRAFT = new('draft')
          PUBLISHED = new('published')
          CONFIRMED = new('confirmed')
          CANCELLED = new('cancelled')
          UNMAPPED_VALUE = new('unmapped_value')
        end
      end
    end
  end
end
