# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class HrisCreateEmploymentRequestDto < ::Crystalline::FieldAugmented
      extend T::Sig

      # The effective date of the employment contract
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :effective_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('effective_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employment work schedule type (e.g., full-time, part-time)
      field :employment_contract_type, T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentContractType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_contract_type') } }
      # The type of employment (e.g., contractor, permanent)
      field :employment_type, T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_type') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The job title of the employee
      field :job_title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_title') } }
      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
      # The currency used for pay
      field :pay_currency, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_currency') } }
      # The pay frequency
      field :pay_frequency, T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoPayFrequency), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_frequency') } }
      # The pay period
      field :pay_period, T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoPayPeriod), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_period') } }
      # The pay rate for the employee
      field :pay_rate, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_rate') } }
      # The time worked for the employee in ISO 8601 duration format
      field :time_worked, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('time_worked') } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }


      sig { params(effective_date: T.nilable(::DateTime), employment_contract_type: T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentContractType), employment_type: T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoEmploymentType), id: T.nilable(::String), job_title: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), pay_currency: T.nilable(::String), pay_frequency: T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoPayFrequency), pay_period: T.nilable(::StackOne::Shared::HrisCreateEmploymentRequestDtoPayPeriod), pay_rate: T.nilable(::String), time_worked: T.nilable(::String), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object])).void }
      def initialize(effective_date: nil, employment_contract_type: nil, employment_type: nil, id: nil, job_title: nil, passthrough: nil, pay_currency: nil, pay_frequency: nil, pay_period: nil, pay_rate: nil, time_worked: nil, unified_custom_fields: nil)
        @effective_date = effective_date
        @employment_contract_type = employment_contract_type
        @employment_type = employment_type
        @id = id
        @job_title = job_title
        @passthrough = passthrough
        @pay_currency = pay_currency
        @pay_frequency = pay_frequency
        @pay_period = pay_period
        @pay_rate = pay_rate
        @time_worked = time_worked
        @unified_custom_fields = unified_custom_fields
      end
    end
  end
end
