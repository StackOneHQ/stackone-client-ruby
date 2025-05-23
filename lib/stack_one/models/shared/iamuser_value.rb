# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # IamUserValue - The status of the user, e.g. whether the user is enabled, has been disabled (eg. by an admin), or is pending (ie: awaiting approval by the user or an admin).
      class IamUserValue < T::Enum
        enums do
          ENABLED = new('enabled')
          DISABLED = new('disabled')
          PENDING = new('pending')
          UNMAPPED_VALUE = new('unmapped_value')
        end
      end
    end
  end
end
