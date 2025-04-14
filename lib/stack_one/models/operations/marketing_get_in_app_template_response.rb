# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    

      class MarketingGetInAppTemplateResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String

        field :headers, T::Hash[Symbol, T::Array[::String]]
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # The in-app template with the given identifier was retrieved.
        field :in_app_template_result, T.nilable(Models::Shared::InAppTemplateResult)


        sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, in_app_template_result: T.nilable(Models::Shared::InAppTemplateResult)).void }
        def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, in_app_template_result: nil)
          @content_type = content_type
          @headers = headers
          @raw_response = raw_response
          @status_code = status_code
          @in_app_template_result = in_app_template_result
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @headers == other.headers
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @in_app_template_result == other.in_app_template_result
          true
        end
      end
    end
  end
end
