# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class HrisCreateTimeOffRequestDto < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The approver ID
      field :approver_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('approver_id') } }
      # The employee ID
      field :employee_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employee_id') } }
      # The end date of the time off request
      field :end_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
      # The start date of the time off request
      field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The status of the time off request
      field :status, T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status') } }
      # The type of the time off request
      field :type, T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }


      sig { params(approver_id: T.nilable(::String), employee_id: T.nilable(::String), end_date: T.nilable(::DateTime), passthrough: T.nilable(T::Hash[Symbol, ::Object]), start_date: T.nilable(::DateTime), status: T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoStatus), type: T.nilable(::StackOne::Shared::HrisCreateTimeOffRequestDtoType)).void }
      def initialize(approver_id: nil, employee_id: nil, end_date: nil, passthrough: nil, start_date: nil, status: nil, type: nil)
        @approver_id = approver_id
        @employee_id = employee_id
        @end_date = end_date
        @passthrough = passthrough
        @start_date = start_date
        @status = status
        @type = type
      end
    end
  end
end
