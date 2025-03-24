# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class TimeOff < ::Crystalline::FieldAugmented
      extend T::Sig

      # The approver ID
      field :approver_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('approver_id') } }
      # The created date of the time off request
      field :created_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The duration of the time off request
      field :duration, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('duration') } }
      # The employee ID
      field :employee_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employee_id') } }
      # The end date of the time off request
      field :end_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # True if the end of the time off request ends half way through the day
      field :end_half_day, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_half_day') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :reason, T.nilable(::StackOne::Shared::TimeOffReason), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('reason') } }
      # Provider's unique identifier of the approver
      field :remote_approver_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_approver_id') } }
      # Provider's unique identifier of the employee
      field :remote_employee_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_employee_id') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Provider's unique identifier of the time off policy id associated with this time off request
      field :remote_time_off_policy_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_time_off_policy_id') } }
      # The start date of the time off request
      field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # True if the start of the time off request begins half way through the day
      field :start_half_day, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_half_day') } }
      # The status of the time off request
      field :status, T.nilable(::StackOne::Shared::TimeOffStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status') } }
      # The time off policy id associated with this time off request
      field :time_off_policy_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('time_off_policy_id') } }
      # The type of the time off request
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :type, T.nilable(::StackOne::Shared::TimeOffType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
      # The updated date of the time off request
      field :updated_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_date'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(approver_id: T.nilable(::String), created_date: T.nilable(::DateTime), duration: T.nilable(::String), employee_id: T.nilable(::String), end_date: T.nilable(::DateTime), end_half_day: T.nilable(::Object), id: T.nilable(::String), reason: T.nilable(::StackOne::Shared::TimeOffReason), remote_approver_id: T.nilable(::String), remote_employee_id: T.nilable(::String), remote_id: T.nilable(::String), remote_time_off_policy_id: T.nilable(::String), start_date: T.nilable(::DateTime), start_half_day: T.nilable(::Object), status: T.nilable(::StackOne::Shared::TimeOffStatus), time_off_policy_id: T.nilable(::String), type: T.nilable(::StackOne::Shared::TimeOffType), updated_date: T.nilable(::DateTime)).void }
      def initialize(approver_id: nil, created_date: nil, duration: nil, employee_id: nil, end_date: nil, end_half_day: nil, id: nil, reason: nil, remote_approver_id: nil, remote_employee_id: nil, remote_id: nil, remote_time_off_policy_id: nil, start_date: nil, start_half_day: nil, status: nil, time_off_policy_id: nil, type: nil, updated_date: nil)
        @approver_id = approver_id
        @created_date = created_date
        @duration = duration
        @employee_id = employee_id
        @end_date = end_date
        @end_half_day = end_half_day
        @id = id
        @reason = reason
        @remote_approver_id = remote_approver_id
        @remote_employee_id = remote_employee_id
        @remote_id = remote_id
        @remote_time_off_policy_id = remote_time_off_policy_id
        @start_date = start_date
        @start_half_day = start_half_day
        @status = status
        @time_off_policy_id = time_off_policy_id
        @type = type
        @updated_date = updated_date
      end
    end
  end
end
