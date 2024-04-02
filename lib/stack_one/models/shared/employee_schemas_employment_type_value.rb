# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # EmployeeSchemasEmploymentTypeValue - The type of the employment.
    class EmployeeSchemasEmploymentTypeValue < T::Enum
      enums do
        CONTRACTOR = new('contractor')
        INTERN = new('intern')
        PERMANENT = new('permanent')
        APPRENTICE = new('apprentice')
        FREELANCE = new('freelance')
        TERMINATED = new('terminated')
        TEMPORARY = new('temporary')
        SEASONAL = new('seasonal')
        VOLUNTEER = new('volunteer')
        PROBATION = new('probation')
        INTERNAL = new('internal')
        EXTERNAL = new('external')
        EXPATRIATE = new('expatriate')
        EMPLOYER_OF_RECORD = new('employer_of_record')
        CASUAL = new('casual')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end

  end
end
