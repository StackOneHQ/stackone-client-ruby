# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # The national identity number
      # 
      # @deprecated  class: This will be removed in a future release, please migrate away from it as soon as possible.
      class HrisUpdateEmployeeRequestDtoNationalIdentityNumber
        extend T::Sig
        include Crystalline::MetadataFields

        # The country code
        field :country, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasCountry), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }

        field :type, T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }

        field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value') } }


        sig { params(country: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoSchemasCountry), type: T.nilable(Models::Shared::HrisUpdateEmployeeRequestDtoType), value: T.nilable(::String)).void }
        def initialize(country: nil, type: nil, value: nil)
          @country = country
          @type = type
          @value = value
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @country == other.country
          return false unless @type == other.type
          return false unless @value == other.value
          true
        end
      end
    end
  end
end
