# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/offerstatusenum'

module StackOne
  module Shared

    class Offer < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :application_id, String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_id') } }

      field :id, String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :offer_status, Shared::OfferStatusEnum, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('offer_status') } }
      # Date of creation
      field :start_date, DateTime, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # Date of creation
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('currency') } }

      field :offer_history, T.nilable(T::Array[Shared::OfferHistory]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('offer_history') } }

      field :salary, T.nilable(Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('salary') } }
      # Date of last update
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(application_id: String, id: String, offer_status: Shared::OfferStatusEnum, start_date: DateTime, created_at: T.nilable(DateTime), currency: T.nilable(String), offer_history: T.nilable(T::Array[Shared::OfferHistory]), salary: T.nilable(Float), updated_at: T.nilable(DateTime)).void }
      def initialize(application_id: nil, id: nil, offer_status: nil, start_date: nil, created_at: nil, currency: nil, offer_history: nil, salary: nil, updated_at: nil)
        @application_id = application_id
        @id = id
        @offer_status = offer_status
        @start_date = start_date
        @created_at = created_at
        @currency = currency
        @offer_history = offer_history
        @salary = salary
        @updated_at = updated_at
      end
    end
  end
end
