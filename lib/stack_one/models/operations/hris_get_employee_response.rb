# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    

      class HrisGetEmployeeResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String

        field :headers, T::Hash[Symbol, T::Array[::String]]
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # The employee with the given identifier was retrieved.
        field :employee_result, T.nilable(Models::Shared::EmployeeResult)


        sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, employee_result: T.nilable(Models::Shared::EmployeeResult)).void }
        def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, employee_result: nil)
          @content_type = content_type
          @headers = headers
          @raw_response = raw_response
          @status_code = status_code
          @employee_result = employee_result
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @headers == other.headers
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @employee_result == other.employee_result
          true
        end
      end
    end
  end
end
