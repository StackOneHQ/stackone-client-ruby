# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsGetInterviewStageResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String

      field :headers, T::Hash[Symbol, T::Array[::String]]
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The interview-stage with the given identifier was retrieved.
      field :interview_stage_result, T.nilable(::StackOne::Shared::InterviewStageResult)


      sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, interview_stage_result: T.nilable(::StackOne::Shared::InterviewStageResult)).void }
      def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, interview_stage_result: nil)
        @content_type = content_type
        @headers = headers
        @raw_response = raw_response
        @status_code = status_code
        @interview_stage_result = interview_stage_result
      end
    end
  end
end
