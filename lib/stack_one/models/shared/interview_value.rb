# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # InterviewValue - The status of the interview.
      class InterviewValue < T::Enum
        enums do
          UNSCHEDULED = new('unscheduled')
          SCHEDULED = new('scheduled')
          COMPLETED = new('completed')
          CANCELLED = new('cancelled')
          PENDING_FEEDBACK = new('pending_feedback')
          UNMAPPED_VALUE = new('unmapped_value')
        end
      end
    end
  end
end
