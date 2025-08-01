# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    
      # Type - Filter to select time-off policies by type
      class Type < T::Enum
        enums do
          SICK = new('sick')
          UNMAPPED_VALUE = new('unmapped_value')
          VACATION = new('vacation')
          LONG_TERM_DISABILITY = new('long_term_disability')
          SHORT_TERM_DISABILITY = new('short_term_disability')
          ABSENT = new('absent')
          COMP_TIME = new('comp_time')
          TRAINING = new('training')
          ANNUAL_LEAVE = new('annual_leave')
          LEAVE_OF_ABSENCE = new('leave_of_absence')
          BREAK = new('break')
          CHILD_CARE_LEAVE = new('child_care_leave')
          MATERNITY_LEAVE = new('maternity_leave')
          JURY_DUTY = new('jury_duty')
          SABBATICAL = new('sabbatical')
          ACCIDENT = new('accident')
          PAID = new('paid')
          UNPAID = new('unpaid')
          HOLIDAY = new('holiday')
          PERSONAL = new('personal')
          IN_LIEU = new('in_lieu')
          BEREAVEMENT = new('bereavement')
        end
      end
    end
  end
end
