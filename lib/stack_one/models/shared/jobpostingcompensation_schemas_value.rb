# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # JobPostingCompensationSchemasValue - The pay period of the job postings.
    class JobPostingCompensationSchemasValue < T::Enum
      enums do
        HOUR = new('hour')
        DAY = new('day')
        WEEK = new('week')
        EVERY_TWO_WEEKS = new('every_two_weeks')
        MONTH = new('month')
        QUARTER = new('quarter')
        EVERY_SIX_MONTHS = new('every_six_months')
        YEAR = new('year')
        NONE = new('none')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end

  end
end