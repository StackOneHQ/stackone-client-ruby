# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared
    # OfferStatusEnumValue - The status of the offer.
    class OfferStatusEnumValue < T::Enum
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



    class OfferStatusEnum < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The source value of the offer status.
      field :source_value, String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The status of the offer.
      field :value, Shared::OfferStatusEnumValue, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::OfferStatusEnumValue, false) } }


      sig { params(source_value: String, value: Shared::OfferStatusEnumValue).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end
  end
end
