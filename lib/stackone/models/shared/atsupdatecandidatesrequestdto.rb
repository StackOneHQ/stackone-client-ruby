# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class AtsUpdateCandidatesRequestDto < StackOne::Utils::FieldAugmented
      extend T::Sig

      # List of candidate application IDs
      field :application_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('application_ids') } }
      # Candidate company
      field :company, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('company') } }
      # List of candidate emails
      field :emails, T.nilable(T::Array[Shared::CandidateEmail]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('emails') } }
      # Candidate first name
      field :first_name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('first_name') } }
      # The ID of the candidate to update.
      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }
      # Candidate last name
      field :last_name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('last_name') } }
      # Candidate name
      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }
      # Candidate phone number
      field :phone, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('phone') } }
      # Candidate title
      field :title, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('title') } }


      sig { params(application_ids: T.nilable(T::Array[String]), company: T.nilable(String), emails: T.nilable(T::Array[Shared::CandidateEmail]), first_name: T.nilable(String), id: T.nilable(String), last_name: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), title: T.nilable(String)).void }
      def initialize(application_ids: nil, company: nil, emails: nil, first_name: nil, id: nil, last_name: nil, name: nil, phone: nil, title: nil)
        @application_ids = application_ids
        @company = company
        @emails = emails
        @first_name = first_name
        @id = id
        @last_name = last_name
        @name = name
        @phone = phone
        @title = title
      end
    end
  end
end
