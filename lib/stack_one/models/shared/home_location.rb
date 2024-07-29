# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The employee home location
    class HomeLocation < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The city where the location is situated
      field :city, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('city') } }
      # The country code
      field :country, T.nilable(::StackOne::Shared::EmployeeCountry), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }
      # The created_at date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee ID
      field :employee_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employee_id') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The location type
      field :location_type, T.nilable(::StackOne::Shared::EmployeeLocationType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('location_type') } }
      # The name of the location
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The phone number of the location
      field :phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_number') } }
      # Provider's unique identifier of the employee
      field :remote_employee_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_employee_id') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The state where the location is situated
      field :state, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('state') } }
      # The first line of the address
      field :street_1, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('street_1') } }
      # The second line of the address
      field :street_2, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('street_2') } }
      # The updated_at date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The ZIP code/Postal code of the location
      field :zip_code, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('zip_code') } }


      sig { params(city: T.nilable(::String), country: T.nilable(::StackOne::Shared::EmployeeCountry), created_at: T.nilable(::DateTime), employee_id: T.nilable(::String), id: T.nilable(::String), location_type: T.nilable(::StackOne::Shared::EmployeeLocationType), name: T.nilable(::String), phone_number: T.nilable(::String), remote_employee_id: T.nilable(::String), remote_id: T.nilable(::String), state: T.nilable(::String), street_1: T.nilable(::String), street_2: T.nilable(::String), updated_at: T.nilable(::DateTime), zip_code: T.nilable(::String)).void }
      def initialize(city: nil, country: nil, created_at: nil, employee_id: nil, id: nil, location_type: nil, name: nil, phone_number: nil, remote_employee_id: nil, remote_id: nil, state: nil, street_1: nil, street_2: nil, updated_at: nil, zip_code: nil)
        @city = city
        @country = country
        @created_at = created_at
        @employee_id = employee_id
        @id = id
        @location_type = location_type
        @name = name
        @phone_number = phone_number
        @remote_employee_id = remote_employee_id
        @remote_id = remote_id
        @state = state
        @street_1 = street_1
        @street_2 = street_2
        @updated_at = updated_at
        @zip_code = zip_code
      end
    end
  end
end
