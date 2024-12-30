# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class UpdateEmployeeApiModelSchemasValue < T::Enum
      enums do
        ACTIVE = new('active')
        PENDING = new('pending')
        TERMINATED = new('terminated')
        LEAVE = new('leave')
        INACTIVE = new('inactive')
        UNKNOWN = new('unknown')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end
  end
end
