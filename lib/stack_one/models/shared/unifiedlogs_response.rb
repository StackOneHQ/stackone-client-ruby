# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # The advanced log response data
      class UnifiedLogsResponse
        extend T::Sig
        include Crystalline::MetadataFields


        field :body, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('body') } }
        # The custom mapping errors
        field :custom_mapping_errors, T.nilable(T::Array[Models::Shared::CustomMappingError]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('custom_mapping_errors') } }

        field :headers, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('headers') } }
        # The provider errors
        field :provider_errors, T.nilable(T::Array[Models::Shared::ProviderError]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('provider_errors') } }
        # The response status code
        field :status_code, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status_code') } }


        sig { params(body: T.nilable(::Object), custom_mapping_errors: T.nilable(T::Array[Models::Shared::CustomMappingError]), headers: T.nilable(T::Hash[Symbol, ::Object]), provider_errors: T.nilable(T::Array[Models::Shared::ProviderError]), status_code: T.nilable(::Float)).void }
        def initialize(body: nil, custom_mapping_errors: nil, headers: nil, provider_errors: nil, status_code: nil)
          @body = body
          @custom_mapping_errors = custom_mapping_errors
          @headers = headers
          @provider_errors = provider_errors
          @status_code = status_code
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @body == other.body
          return false unless @custom_mapping_errors == other.custom_mapping_errors
          return false unless @headers == other.headers
          return false unless @provider_errors == other.provider_errors
          return false unless @status_code == other.status_code
          true
        end
      end
    end
  end
end
