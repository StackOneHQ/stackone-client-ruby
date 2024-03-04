# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # Category - The provider service category
    class Category < T::Enum
      enums do
        ATS = new('ats')
        HRIS = new('hris')
        HRIS_LEGACY = new('hris-legacy')
        CRM = new('crm')
        IAM = new('iam')
        MARKETING = new('marketing')
        STACKONE = new('stackone')
      end
    end

  end
end
