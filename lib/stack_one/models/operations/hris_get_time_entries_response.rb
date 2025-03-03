# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class HrisGetTimeEntriesResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String

      field :headers, T::Hash[Symbol, T::Array[::String]]
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The time entry with the given identifier was retrieved.
      field :time_entries_result, T.nilable(::StackOne::Shared::TimeEntriesResult)


      sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, time_entries_result: T.nilable(::StackOne::Shared::TimeEntriesResult)).void }
      def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, time_entries_result: nil)
        @content_type = content_type
        @headers = headers
        @raw_response = raw_response
        @status_code = status_code
        @time_entries_result = time_entries_result
      end
    end
  end
end
