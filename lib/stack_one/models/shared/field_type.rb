# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # FieldType - The type of the field
    class FieldType < T::Enum
      enums do
        SHORT_TEXT = new('short_text')
        LONG_TEXT = new('long_text')
        MULTI_SELECT = new('multi_select')
        SINGLE_SELECT = new('single_select')
        BOOLEAN = new('boolean')
        NUMBER = new('number')
        DATE = new('date')
        PHONE = new('phone')
        EMAIL = new('email')
        SCORE = new('score')
        LOCATION = new('location')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end

  end
end