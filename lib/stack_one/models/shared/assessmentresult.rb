# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class AssessmentResult
        extend T::Sig
        include Crystalline::MetadataFields


        field :attachments, T.nilable(T::Array[Models::Shared::Attachment]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('attachments') } }

        field :candidate, T.nilable(Models::Shared::AssessmentResultCandidate), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('candidate') } }
        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }

        field :result, T.nilable(Models::Shared::Result), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('result') } }
        # The test`s result url
        field :result_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('result_url') } }

        field :score, T.nilable(Models::Shared::Score), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('score') } }
        # The start date of the candidate test
        field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
        # The submission date of the candidate test
        field :submission_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('submission_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
        # The summary about the result of the test
        field :summary, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('summary') } }


        sig { params(attachments: T.nilable(T::Array[Models::Shared::Attachment]), candidate: T.nilable(Models::Shared::AssessmentResultCandidate), id: T.nilable(::String), remote_id: T.nilable(::String), result: T.nilable(Models::Shared::Result), result_url: T.nilable(::String), score: T.nilable(Models::Shared::Score), start_date: T.nilable(::DateTime), submission_date: T.nilable(::DateTime), summary: T.nilable(::String)).void }
        def initialize(attachments: nil, candidate: nil, id: nil, remote_id: nil, result: nil, result_url: nil, score: nil, start_date: nil, submission_date: nil, summary: nil)
          @attachments = attachments
          @candidate = candidate
          @id = id
          @remote_id = remote_id
          @result = result
          @result_url = result_url
          @score = score
          @start_date = start_date
          @submission_date = submission_date
          @summary = summary
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @attachments == other.attachments
          return false unless @candidate == other.candidate
          return false unless @id == other.id
          return false unless @remote_id == other.remote_id
          return false unless @result == other.result
          return false unless @result_url == other.result_url
          return false unless @score == other.score
          return false unless @start_date == other.start_date
          return false unless @submission_date == other.submission_date
          return false unless @summary == other.summary
          true
        end
      end
    end
  end
end
