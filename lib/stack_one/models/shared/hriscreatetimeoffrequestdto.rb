# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class HrisCreateTimeOffRequestDto < ::Crystalline::FieldAugmented
      extend T::Sig

      # The approver ID
      field :approver_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('approver_id') } }
      # The employee ID
      field :employee_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employee_id') } }
      # The end date of the time off request
      field :end_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # True if the end of the time off request ends half way through the day
      field :end_half_day, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_half_day') } }
      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }

      field :reason, T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoReason), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('reason') } }
      # The start date of the time off request
      field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # True if the start of the time off request begins half way through the day
      field :start_half_day, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_half_day') } }
      # The status of the time off request
      field :status, T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status') } }
      # The time off policy id associated with this time off request
      field :time_off_policy_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('time_off_policy_id') } }
      # The type of the time off request
      field :type, T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }


      sig { params(approver_id: T.nilable(::String), employee_id: T.nilable(::String), end_date: T.nilable(::DateTime), end_half_day: T.nilable(::Object), passthrough: T.nilable(T::Hash[Symbol, ::Object]), reason: T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoReason), start_date: T.nilable(::DateTime), start_half_day: T.nilable(::Object), status: T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoStatus), time_off_policy_id: T.nilable(::String), type: T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoType)).void }
      def initialize(approver_id: nil, employee_id: nil, end_date: nil, end_half_day: nil, passthrough: nil, reason: nil, start_date: nil, start_half_day: nil, status: nil, time_off_policy_id: nil, type: nil)
        @approver_id = approver_id
        @employee_id = employee_id
        @end_date = end_date
        @end_half_day = end_half_day
        @passthrough = passthrough
        @reason = reason
        @start_date = start_date
        @start_half_day = start_half_day
        @status = status
        @time_off_policy_id = time_off_policy_id
        @type = type
      end
    end
  end
end
