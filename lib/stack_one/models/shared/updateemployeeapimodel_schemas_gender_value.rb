# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class UpdateEmployeeApiModelSchemasGenderValue < T::Enum
      enums do
        MALE = new('male')
        FEMALE = new('female')
        NON_BINARY = new('non_binary')
        OTHER = new('other')
        NOT_DISCLOSED = new('not_disclosed')
        DIVERSE = new('diverse')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end
  end
end
