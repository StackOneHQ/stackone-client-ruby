# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class OfferHistory < ::Crystalline::FieldAugmented
      extend T::Sig

      # Date of creation
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('currency') } }

      field :salary, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('salary') } }
      # Start Date of the offer
      field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Date of last update
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(::DateTime), currency: T.nilable(::String), salary: T.nilable(::Float), start_date: T.nilable(::DateTime), updated_at: T.nilable(::DateTime)).void }
      def initialize(created_at: nil, currency: nil, salary: nil, start_date: nil, updated_at: nil)
        @created_at = created_at
        @currency = currency
        @salary = salary
        @start_date = start_date
        @updated_at = updated_at
      end
    end
  end
end
