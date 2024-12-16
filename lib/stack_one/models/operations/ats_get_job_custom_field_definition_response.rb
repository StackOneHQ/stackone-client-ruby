# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsGetJobCustomFieldDefinitionResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String

      field :headers, T::Hash[Symbol, T::Array[::String]]
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The job custom field definition was retrieved.
      field :custom_field_definition_result_api_model, T.nilable(::StackOne::Shared::CustomFieldDefinitionResultApiModel)


      sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, custom_field_definition_result_api_model: T.nilable(::StackOne::Shared::CustomFieldDefinitionResultApiModel)).void }
      def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, custom_field_definition_result_api_model: nil)
        @content_type = content_type
        @headers = headers
        @raw_response = raw_response
        @status_code = status_code
        @custom_field_definition_result_api_model = custom_field_definition_result_api_model
      end
    end
  end
end
