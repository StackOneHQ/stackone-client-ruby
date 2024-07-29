# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # AtsUpdateApplicationRequestDtoValue - The status of the application.
    class AtsUpdateApplicationRequestDtoValue < T::Enum
      enums do
        ACTIVE = new('active')
        ASSESSMENT = new('assessment')
        BACKGROUND_CHECK = new('background_check')
        CONVERTED = new('converted')
        DECLINED_BY_CANDIDATE = new('declined_by_candidate')
        HIRED = new('hired')
        INTERVIEW = new('interview')
        LEAD = new('lead')
        OFFER = new('offer')
        REFERENCE_CHECK = new('reference_check')
        REJECTED = new('rejected')
        REVIEW = new('review')
        SCREEN = new('screen')
        NEW = new('new')
        ONBOARDING = new('onboarding')
        CREATED = new('created')
        ACCEPTED = new('accepted')
        SHORT_LIST = new('short_list')
        APPROVED = new('approved')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end

  end
end
