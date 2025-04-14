# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # HrisCreateEmployeeRequestDtoSchemasEmploymentValue - The pay frequency of the job postings.
      class HrisCreateEmployeeRequestDtoSchemasEmploymentValue < T::Enum
        enums do
          HOURLY = new('hourly')
          WEEKLY = new('weekly')
          BI_WEEKLY = new('bi_weekly')
          FOUR_WEEKLY = new('four_weekly')
          SEMI_MONTHLY = new('semi_monthly')
          MONTHLY = new('monthly')
          BI_MONTHLY = new('bi_monthly')
          QUARTERLY = new('quarterly')
          SEMI_ANNUALLY = new('semi_annually')
          YEARLY = new('yearly')
          THIRTEEN_MONTHLY = new('thirteen_monthly')
          PRO_RATA = new('pro_rata')
          UNMAPPED_VALUE = new('unmapped_value')
          HALF_YEARLY = new('half_yearly')
          DAILY = new('daily')
        end
      end
    end
  end
end
