# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class HrisCreateTimeOffRequestDtoValue < T::Enum
      enums do
        APPROVED = new('approved')
        CANCELLED = new('cancelled')
        REJECTED = new('rejected')
        PENDING = new('pending')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end

  end
end
