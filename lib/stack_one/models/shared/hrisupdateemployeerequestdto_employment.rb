# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # The employee employment
      class HrisUpdateEmployeeRequestDtoEmployment
        extend T::Sig
        include Crystalline::MetadataFields

        # The employee effective date
        # 
        # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
        field :effective_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('effective_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
        # The employment work schedule type (e.g., full-time, part-time)
        # 
        # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
        field :employment_contract_type, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasEmploymentContractType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_contract_type') } }
        # The type of employment (e.g., contractor, permanent)
        # 
        # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
        field :employment_type, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasEmploymentType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_type') } }
        # The end date of employment
        field :end_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('end_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
        # Represents the employee’s position within the organizational hierarchy.
        field :grade, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoGrade), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('grade') } }
        # The job title of the employee
        field :job_title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_title') } }
        # Value to pass through to the provider
        field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
        # The currency used for pay
        field :pay_currency, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_currency') } }
        # The pay frequency
        field :pay_frequency, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoPayFrequency), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_frequency') } }
        # The pay period
        field :pay_period, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoPayPeriod), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_period') } }
        # The pay rate for the employee
        field :pay_rate, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_rate') } }
        # The payroll code of the employee
        field :payroll_code, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('payroll_code') } }
        # Custom Unified Fields configured in your StackOne project
        field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }

        field :work_time, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoWorkTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('work_time') } }


        sig { params(effective_date: T.nilable(::DateTime), employment_contract_type: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasEmploymentContractType), employment_type: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasEmploymentType), end_date: T.nilable(::DateTime), grade: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoGrade), job_title: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), pay_currency: T.nilable(::String), pay_frequency: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoPayFrequency), pay_period: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoPayPeriod), pay_rate: T.nilable(::String), payroll_code: T.nilable(::String), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object]), work_time: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoWorkTime)).void }
        def initialize(effective_date: nil, employment_contract_type: nil, employment_type: nil, end_date: nil, grade: nil, job_title: nil, passthrough: nil, pay_currency: nil, pay_frequency: nil, pay_period: nil, pay_rate: nil, payroll_code: nil, unified_custom_fields: nil, work_time: nil)
          @effective_date = effective_date
          @employment_contract_type = employment_contract_type
          @employment_type = employment_type
          @end_date = end_date
          @grade = grade
          @job_title = job_title
          @passthrough = passthrough
          @pay_currency = pay_currency
          @pay_frequency = pay_frequency
          @pay_period = pay_period
          @pay_rate = pay_rate
          @payroll_code = payroll_code
          @unified_custom_fields = unified_custom_fields
          @work_time = work_time
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @effective_date == other.effective_date
          return false unless @employment_contract_type == other.employment_contract_type
          return false unless @employment_type == other.employment_type
          return false unless @end_date == other.end_date
          return false unless @grade == other.grade
          return false unless @job_title == other.job_title
          return false unless @passthrough == other.passthrough
          return false unless @pay_currency == other.pay_currency
          return false unless @pay_frequency == other.pay_frequency
          return false unless @pay_period == other.pay_period
          return false unless @pay_rate == other.pay_rate
          return false unless @payroll_code == other.payroll_code
          return false unless @unified_custom_fields == other.unified_custom_fields
          return false unless @work_time == other.work_time
          true
        end
      end
    end
  end
end
