# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class WorkEligibilitySchemasValue < T::Enum
      enums do
        VISA = new('visa')
        PASSPORT = new('passport')
        DRIVER_LICENSE = new('driver_license')
        BIRTH_CERTIFICATE = new('birth_certificate')
        OTHER = new('other')
      end
    end

  end
end
