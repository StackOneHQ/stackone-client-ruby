# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class HrisListEmployeeTimeOffRequestsResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The time off requests related to the employee with the given identifier were retrieved.
      field :time_off_paginated, T.nilable(::StackOne::Shared::TimeOffPaginated)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, time_off_paginated: T.nilable(::StackOne::Shared::TimeOffPaginated)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, time_off_paginated: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @time_off_paginated = time_off_paginated
      end
    end
  end
end
