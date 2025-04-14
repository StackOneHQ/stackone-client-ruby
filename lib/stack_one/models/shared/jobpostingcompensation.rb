# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class JobPostingCompensation
        extend T::Sig
        include Crystalline::MetadataFields


        field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('currency') } }

        field :max_value, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('max_value') } }

        field :min_value, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('min_value') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }

        field :pay_frequency, T.nilable(Models::Shared::JobPostingCompensationPayFrequency), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_frequency') } }

        field :pay_period, T.nilable(Models::Shared::JobPostingCompensationPayPeriod), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('pay_period') } }

        field :type, T.nilable(Models::Shared::JobPostingCompensationType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }

        field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value') } }


        sig { params(currency: T.nilable(::String), max_value: T.nilable(::String), min_value: T.nilable(::String), name: T.nilable(::String), pay_frequency: T.nilable(Models::Shared::JobPostingCompensationPayFrequency), pay_period: T.nilable(Models::Shared::JobPostingCompensationPayPeriod), type: T.nilable(Models::Shared::JobPostingCompensationType), value: T.nilable(::String)).void }
        def initialize(currency: nil, max_value: nil, min_value: nil, name: nil, pay_frequency: nil, pay_period: nil, type: nil, value: nil)
          @currency = currency
          @max_value = max_value
          @min_value = min_value
          @name = name
          @pay_frequency = pay_frequency
          @pay_period = pay_period
          @type = type
          @value = value
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @currency == other.currency
          return false unless @max_value == other.max_value
          return false unless @min_value == other.min_value
          return false unless @name == other.name
          return false unless @pay_frequency == other.pay_frequency
          return false unless @pay_period == other.pay_period
          return false unless @type == other.type
          return false unless @value == other.value
          true
        end
      end
    end
  end
end
