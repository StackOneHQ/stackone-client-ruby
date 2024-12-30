# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # HrisUpdateEmployeeRequestDtoSchemasEmploymentTypeValue - The type of the employment.
    class HrisUpdateEmployeeRequestDtoSchemasEmploymentTypeValue < T::Enum
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
        PROGRAMME = new('Programme')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end
  end
end
