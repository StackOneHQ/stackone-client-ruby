# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # JobPostingContentSectionValue - The type of the description.
    class JobPostingContentSectionValue < T::Enum
      enums do
        RESPONSIBILITIES = new('responsibilities')
        SKILLS = new('skills')
        BENEFITS = new('benefits')
        COMPANY_OVERVIEW = new('company_overview')
        DESCRIPTION = new('description')
        OTHER = new('other')
      end
    end
  end
end
