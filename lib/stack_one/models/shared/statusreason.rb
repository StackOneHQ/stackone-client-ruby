# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class StatusReason
        extend T::Sig
        include Crystalline::MetadataFields


        field :timestamp, ::DateTime, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('timestamp'), 'decoder': Utils.datetime_from_iso_format(false) } }

        field :code, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('code') } }

        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }


        sig { params(timestamp: ::DateTime, code: T.nilable(::String), description: T.nilable(::String)).void }
        def initialize(timestamp: nil, code: nil, description: nil)
          @timestamp = timestamp
          @code = code
          @description = description
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @timestamp == other.timestamp
          return false unless @code == other.code
          return false unless @description == other.description
          true
        end
      end
    end
  end
end
