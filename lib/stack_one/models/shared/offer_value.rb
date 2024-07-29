# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # OfferValue - The status of the offer.
    class OfferValue < T::Enum
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
