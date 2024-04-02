# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # AtsCreateOfferRequestDtoValue - The status of the offer.
    class AtsCreateOfferRequestDtoValue < T::Enum
      enums do
        PENDING = new('pending')
        RETRACTED = new('retracted')
        ACCEPTED = new('accepted')
        REJECTED = new('rejected')
        CREATED = new('created')
        APPROVED = new('approved')
        NOT_APPROVED = new('not_approved')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end

  end
end
