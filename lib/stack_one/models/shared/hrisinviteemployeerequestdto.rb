# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class HrisInviteEmployeeRequestDto
        extend T::Sig
        include Crystalline::MetadataFields

        # Value to pass through to the provider
        field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }


        sig { params(passthrough: T.nilable(T::Hash[Symbol, ::Object])).void }
        def initialize(passthrough: nil)
          @passthrough = passthrough
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @passthrough == other.passthrough
          true
        end
      end
    end
  end
end
