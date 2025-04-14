# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # The employee work location
      class HrisUpdateEmployeeRequestDtoWorkLocation
        extend T::Sig
        include Crystalline::MetadataFields

        # The city where the location is situated
        field :city, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('city') } }
        # The country code
        field :country, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasWorkLocationCountry), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }
        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # The name of the location
        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
        # Value to pass through to the provider
        field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
        # The phone number of the location
        field :phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_number') } }
        # The ISO3166-2 sub division where the location is situated
        field :state, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasState), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('state') } }
        # The first line of the address
        field :street_1, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('street_1') } }
        # The second line of the address
        field :street_2, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('street_2') } }
        # The ZIP code/Postal code of the location
        field :zip_code, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('zip_code') } }


        sig { params(city: T.nilable(::String), country: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasWorkLocationCountry), id: T.nilable(::String), name: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), phone_number: T.nilable(::String), state: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasState), street_1: T.nilable(::String), street_2: T.nilable(::String), zip_code: T.nilable(::String)).void }
        def initialize(city: nil, country: nil, id: nil, name: nil, passthrough: nil, phone_number: nil, state: nil, street_1: nil, street_2: nil, zip_code: nil)
          @city = city
          @country = country
          @id = id
          @name = name
          @passthrough = passthrough
          @phone_number = phone_number
          @state = state
          @street_1 = street_1
          @street_2 = street_2
          @zip_code = zip_code
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @city == other.city
          return false unless @country == other.country
          return false unless @id == other.id
          return false unless @name == other.name
          return false unless @passthrough == other.passthrough
          return false unless @phone_number == other.phone_number
          return false unless @state == other.state
          return false unless @street_1 == other.street_1
          return false unless @street_2 == other.street_2
          return false unless @zip_code == other.zip_code
          true
        end
      end
    end
  end
end
