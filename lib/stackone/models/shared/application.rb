# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared
    # ApplicationValue - The status of the application.
    class ApplicationValue < T::Enum
      enums do
        ACTIVE = new('active')
        ASSESSMENT = new('assessment')
        BACKGROUND_CHECK = new('background_check')
        CONVERTED = new('converted')
        DECLINED_BY_CANDIDATE = new('declined_by_candidate')
        HIRED = new('hired')
        INTERVIEW = new('interview')
        LEAD = new('lead')
        OFFER = new('offer')
        REFERENCE_CHECK = new('reference_check')
        REJECTED = new('rejected')
        REVIEW = new('review')
        SCREEN = new('screen')
        NEW = new('new')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class ApplicationStatus < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The source value of the application status.
      field :source_value, T.nilable(Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The status of the application.
      field :value, T.nilable(Shared::ApplicationValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::ApplicationValue, true) } }


      sig { params(source_value: T.nilable(Object), value: T.nilable(Shared::ApplicationValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end


    class ApplicationCandidate < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Email of the candidate
      field :email, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('email') } }
      # First name of the candidate
      field :first_name, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
      # Last name of the candidate
      field :last_name, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }


      sig { params(email: T.nilable(String), first_name: T.nilable(String), last_name: T.nilable(String)).void }
      def initialize(email: nil, first_name: nil, last_name: nil)
        @email = email
        @first_name = first_name
        @last_name = last_name
      end
    end


    class ApplicationInterviewStage < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Interview Stage created date
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }

      field :order, T.nilable(Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('order') } }
      # Interview Stage updated date
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(DateTime), id: T.nilable(String), name: T.nilable(String), order: T.nilable(Float), updated_at: T.nilable(DateTime)).void }
      def initialize(created_at: nil, id: nil, name: nil, order: nil, updated_at: nil)
        @created_at = created_at
        @id = id
        @name = name
        @order = order
        @updated_at = updated_at
      end
    end


    class Application < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :application_status, T.nilable(Shared::ApplicationStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_status') } }

      field :attachments, T.nilable(T::Array[Shared::ApplicationAttachment]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('attachments') } }

      field :candidate, T.nilable(Shared::ApplicationCandidate), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('candidate') } }
      # Unique identifier of the candidate
      field :candidate_id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('candidate_id') } }
      # Date of creation
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifier of the application
      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :interview_stage, T.nilable(Shared::ApplicationInterviewStage), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_stage') } }
      # Unique identifier of the interview stage
      field :interview_stage_id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_stage_id') } }
      # Unique identifier of the job
      field :job_id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_id') } }
      # Unique identifier of the location
      field :location_id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('location_id') } }
      # Unique identifiers of the locations
      field :location_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('location_ids') } }
      # Questionnaires associated with the application
      field :questionnaires, T.nilable(T::Array[Shared::Questionnaire]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('questionnaires') } }
      # Date of rejection
      field :rejected_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('rejected_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifiers of the rejection reasons
      field :rejected_reason_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('rejected_reason_ids') } }

      field :rejected_reasons, T.nilable(T::Array[Shared::RejectedReason]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('rejected_reasons') } }

      field :result_links, T.nilable(T::Array[Shared::ResultLink]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('result_links') } }
      # Date of last update
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(application_status: T.nilable(Shared::ApplicationStatus), attachments: T.nilable(T::Array[Shared::ApplicationAttachment]), candidate: T.nilable(Shared::ApplicationCandidate), candidate_id: T.nilable(String), created_at: T.nilable(DateTime), id: T.nilable(String), interview_stage: T.nilable(Shared::ApplicationInterviewStage), interview_stage_id: T.nilable(String), job_id: T.nilable(String), location_id: T.nilable(String), location_ids: T.nilable(T::Array[String]), questionnaires: T.nilable(T::Array[Shared::Questionnaire]), rejected_at: T.nilable(DateTime), rejected_reason_ids: T.nilable(T::Array[String]), rejected_reasons: T.nilable(T::Array[Shared::RejectedReason]), result_links: T.nilable(T::Array[Shared::ResultLink]), updated_at: T.nilable(DateTime)).void }
      def initialize(application_status: nil, attachments: nil, candidate: nil, candidate_id: nil, created_at: nil, id: nil, interview_stage: nil, interview_stage_id: nil, job_id: nil, location_id: nil, location_ids: nil, questionnaires: nil, rejected_at: nil, rejected_reason_ids: nil, rejected_reasons: nil, result_links: nil, updated_at: nil)
        @application_status = application_status
        @attachments = attachments
        @candidate = candidate
        @candidate_id = candidate_id
        @created_at = created_at
        @id = id
        @interview_stage = interview_stage
        @interview_stage_id = interview_stage_id
        @job_id = job_id
        @location_id = location_id
        @location_ids = location_ids
        @questionnaires = questionnaires
        @rejected_at = rejected_at
        @rejected_reason_ids = rejected_reason_ids
        @rejected_reasons = rejected_reasons
        @result_links = result_links
        @updated_at = updated_at
      end
    end
  end
end
