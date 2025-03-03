# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class HrisListEmployeeWorkEligibilityResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String

      field :headers, T::Hash[Symbol, T::Array[::String]]
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The work eligibility of the employee with the given identifier were retrieved.
      field :work_eligibility_paginated, T.nilable(::StackOne::Shared::WorkEligibilityPaginated)


      sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, work_eligibility_paginated: T.nilable(::StackOne::Shared::WorkEligibilityPaginated)).void }
      def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, work_eligibility_paginated: nil)
        @content_type = content_type
        @headers = headers
        @raw_response = raw_response
        @status_code = status_code
        @work_eligibility_paginated = work_eligibility_paginated
      end
    end
  end
end
