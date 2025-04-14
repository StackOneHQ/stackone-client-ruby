# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class ConnectSessionCreateCategories < T::Enum
        enums do
          ATS = new('ats')
          HRIS = new('hris')
          HRIS_LEGACY = new('hris-legacy')
          CRM = new('crm')
          IAM = new('iam')
          MARKETING = new('marketing')
          LMS = new('lms')
          STACKONE = new('stackone')
          DOCUMENTS = new('documents')
          TICKETING = new('ticketing')
          SCREENING = new('screening')
        end
      end
    end
  end
end
