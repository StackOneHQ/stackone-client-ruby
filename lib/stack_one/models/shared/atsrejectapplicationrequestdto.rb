# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class AtsRejectApplicationRequestDto < ::Crystalline::FieldAugmented
      extend T::Sig

      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
      # Unique identifier of the rejection reason
      field :rejected_reason_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('rejected_reason_id') } }


      sig { params(passthrough: T.nilable(T::Hash[Symbol, ::Object]), rejected_reason_id: T.nilable(::String)).void }
      def initialize(passthrough: nil, rejected_reason_id: nil)
        @passthrough = passthrough
        @rejected_reason_id = rejected_reason_id
      end
    end
  end
end
