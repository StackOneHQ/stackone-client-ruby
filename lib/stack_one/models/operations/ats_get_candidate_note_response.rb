# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsGetCandidateNoteResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String

      field :headers, T::Hash[Symbol, T::Array[::String]]
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The note with the given identifier related to the candidate with the given identifier was retrieved.
      field :note_result, T.nilable(::StackOne::Shared::NoteResult)


      sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, note_result: T.nilable(::StackOne::Shared::NoteResult)).void }
      def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, note_result: nil)
        @content_type = content_type
        @headers = headers
        @raw_response = raw_response
        @status_code = status_code
        @note_result = note_result
      end
    end
  end
end
