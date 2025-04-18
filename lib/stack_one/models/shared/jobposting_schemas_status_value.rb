# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # JobPostingSchemasStatusValue - The status of the job postings.
      class JobPostingSchemasStatusValue < T::Enum
        enums do
          LIVE = new('live')
          DRAFT = new('draft')
          PENDING = new('pending')
          INTERNAL = new('internal')
          REJECTED = new('rejected')
          CLOSED = new('closed')
          ARCHIVED = new('archived')
          UNMAPPED_VALUE = new('unmapped_value')
        end
      end
    end
  end
end
