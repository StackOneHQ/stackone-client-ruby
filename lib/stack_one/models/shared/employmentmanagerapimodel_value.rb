# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class EmploymentManagerApiModelValue < T::Enum
      enums do
        ADMIN = new('admin')
        VIEWER = new('viewer')
        EDITOR = new('editor')
        BASIC = new('basic')
        GUEST = new('guest')
        UNASSIGNED = new('unassigned')
        RESTRICTED = new('restricted')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end
  end
end
