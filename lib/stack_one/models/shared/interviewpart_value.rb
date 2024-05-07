# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # InterviewPartValue - The type of the interview.
    class InterviewPartValue < T::Enum
      enums do
        SCREENING = new('screening')
        LUNCH = new('lunch')
        ON_SITE = new('on_site')
        PRESENTATION = new('presentation')
        SELL = new('sell')
        CULTURE = new('culture')
        INFORMAL = new('informal')
        TEST = new('test')
        PHONE = new('phone')
        VIDEO = new('video')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end

  end
end
