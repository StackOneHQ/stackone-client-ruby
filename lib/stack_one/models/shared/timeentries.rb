# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class TimeEntries < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The duration of the break in hours
      field :break_duration, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('break_duration') } }
      # The created_at date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee ID associated with this employment
      field :employee_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employee_id') } }
      # The end time of the time entry
      field :end_time, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_time'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The hours worked in the time entry
      field :hours_worked, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hours_worked') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The labor type associated with this time entry
      field :labor_type, T.nilable(::StackOne::Shared::LaborType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('labor_type') } }
      # The location of the time entry
      field :location, T.nilable(::StackOne::Shared::Location), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('location') } }
      # Provider's unique identifier of the employee associated with this employment
      field :remote_employee_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_employee_id') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The start time of the time entry
      field :start_time, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_time'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The status of the time entry
      field :status, T.nilable(::StackOne::Shared::TimeEntriesStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status') } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }
      # The updated_at date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(break_duration: T.nilable(::Float), created_at: T.nilable(::DateTime), employee_id: T.nilable(::String), end_time: T.nilable(::DateTime), hours_worked: T.nilable(::Float), id: T.nilable(::String), labor_type: T.nilable(::StackOne::Shared::LaborType), location: T.nilable(::StackOne::Shared::Location), remote_employee_id: T.nilable(::String), remote_id: T.nilable(::String), start_time: T.nilable(::DateTime), status: T.nilable(::StackOne::Shared::TimeEntriesStatus), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime)).void }
      def initialize(break_duration: nil, created_at: nil, employee_id: nil, end_time: nil, hours_worked: nil, id: nil, labor_type: nil, location: nil, remote_employee_id: nil, remote_id: nil, start_time: nil, status: nil, unified_custom_fields: nil, updated_at: nil)
        @break_duration = break_duration
        @created_at = created_at
        @employee_id = employee_id
        @end_time = end_time
        @hours_worked = hours_worked
        @id = id
        @labor_type = labor_type
        @location = location
        @remote_employee_id = remote_employee_id
        @remote_id = remote_id
        @start_time = start_time
        @status = status
        @unified_custom_fields = unified_custom_fields
        @updated_at = updated_at
      end
    end
  end
end
