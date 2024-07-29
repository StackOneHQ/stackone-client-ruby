# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The employee home location
    class HrisCreateEmployeeRequestDtoHomeLocation < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The city where the location is situated
      field :city, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('city') } }
      # The country code
      field :country, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoCountry), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }
      # The name of the location
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
      # The phone number of the location
      field :phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_number') } }
      # The ISO3166-2 sub division where the location is situated
      field :state, T.nilable(::StackOne::Shared::State), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('state') } }
      # The first line of the address
      field :street_1, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('street_1') } }
      # The second line of the address
      field :street_2, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('street_2') } }
      # The ZIP code/Postal code of the location
      field :zip_code, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('zip_code') } }


      sig { params(city: T.nilable(::String), country: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoCountry), name: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), phone_number: T.nilable(::String), state: T.nilable(::StackOne::Shared::State), street_1: T.nilable(::String), street_2: T.nilable(::String), zip_code: T.nilable(::String)).void }
      def initialize(city: nil, country: nil, name: nil, passthrough: nil, phone_number: nil, state: nil, street_1: nil, street_2: nil, zip_code: nil)
        @city = city
        @country = country
        @name = name
        @passthrough = passthrough
        @phone_number = phone_number
        @state = state
        @street_1 = street_1
        @street_2 = street_2
        @zip_code = zip_code
      end
    end
  end
end
