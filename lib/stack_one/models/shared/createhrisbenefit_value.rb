# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # CreateHRISBenefitValue - The type of the benefit
      class CreateHRISBenefitValue < T::Enum
        enums do
          RETIREMENT_SAVINGS = new('retirement_savings')
          HEALTH_SAVINGS = new('health_savings')
          OTHER = new('other')
          HEALTH_INSURANCE = new('health_insurance')
          INSURANCE = new('insurance')
          UNMAPPED_VALUE = new('unmapped_value')
        end
      end
    end
  end
end
