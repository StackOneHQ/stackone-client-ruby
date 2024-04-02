# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # JobPostingValue - The employment contract type.
    class JobPostingValue < T::Enum
      enums do
        FULL_TIME = new('full_time')
        SHIFTS = new('shifts')
        PART_TIME = new('part_time')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end

  end
end
