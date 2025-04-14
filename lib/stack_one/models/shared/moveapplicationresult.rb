# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class MoveApplicationResult
        extend T::Sig
        include Crystalline::MetadataFields


        field :data, Models::Shared::CreateResultDataApiModel, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }

        field :message, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message') } }

        field :status_code, ::Float, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('statusCode') } }

        field :timestamp, ::DateTime, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('timestamp'), 'decoder': Utils.datetime_from_iso_format(false) } }


        sig { params(data: Models::Shared::CreateResultDataApiModel, message: ::String, status_code: ::Float, timestamp: ::DateTime).void }
        def initialize(data: nil, message: nil, status_code: nil, timestamp: nil)
          @data = data
          @message = message
          @status_code = status_code
          @timestamp = timestamp
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @data == other.data
          return false unless @message == other.message
          return false unless @status_code == other.status_code
          return false unless @timestamp == other.timestamp
          true
        end
      end
    end
  end
end
