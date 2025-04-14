# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class WriteResultApiModel
        extend T::Sig
        include Crystalline::MetadataFields


        field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('message') } }

        field :provider_errors, T.nilable(T::Array[Models::Shared::ProviderErrorApiModel]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('provider_errors') } }

        field :status_code, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('statusCode') } }

        field :timestamp, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('timestamp'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :unified_warnings, T.nilable(T::Array[Models::Shared::UnifiedWarningApiModel]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_warnings') } }


        sig { params(message: T.nilable(::String), provider_errors: T.nilable(T::Array[Models::Shared::ProviderErrorApiModel]), status_code: T.nilable(::Float), timestamp: T.nilable(::DateTime), unified_warnings: T.nilable(T::Array[Models::Shared::UnifiedWarningApiModel])).void }
        def initialize(message: nil, provider_errors: nil, status_code: nil, timestamp: nil, unified_warnings: nil)
          @message = message
          @provider_errors = provider_errors
          @status_code = status_code
          @timestamp = timestamp
          @unified_warnings = unified_warnings
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @message == other.message
          return false unless @provider_errors == other.provider_errors
          return false unless @status_code == other.status_code
          return false unless @timestamp == other.timestamp
          return false unless @unified_warnings == other.unified_warnings
          true
        end
      end
    end
  end
end
