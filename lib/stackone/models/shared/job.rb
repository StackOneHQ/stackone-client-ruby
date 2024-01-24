# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class Confidential < T::Enum
      enums do
        TRUE = new('true')
        FALSE = new('false')
      end
    end


    # JobValue - The status of the job.
    class JobValue < T::Enum
      enums do
        PUBLISHED = new('published')
        DRAFT = new('draft')
        PENDING = new('pending')
        INTERNAL = new('internal')
        ARCHIVED = new('archived')
        CLOSED = new('closed')
        OPEN = new('open')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class JobStatus < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The source value of the job status.
      field :source_value, T.nilable(Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The status of the job.
      field :value, T.nilable(Shared::JobValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::JobValue, true) } }


      sig { params(source_value: T.nilable(Object), value: T.nilable(Shared::JobValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end


    class Job < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :code, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('code') } }

      field :company_id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('company_id') } }

      field :confidential, T.nilable(Shared::Confidential), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('confidential'), 'decoder': Utils.enum_from_string(Shared::Confidential, true) } }
      # Date of creation
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :department_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('department_ids') } }

      field :hiring_team, T.nilable(T::Array[Shared::JobHiringTeam]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hiring_team') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :job_status, T.nilable(Shared::JobStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_status') } }

      field :location_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('location_ids') } }

      field :title, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }
      # Date of last update
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(code: T.nilable(String), company_id: T.nilable(String), confidential: T.nilable(Shared::Confidential), created_at: T.nilable(DateTime), department_ids: T.nilable(T::Array[String]), hiring_team: T.nilable(T::Array[Shared::JobHiringTeam]), id: T.nilable(String), job_status: T.nilable(Shared::JobStatus), location_ids: T.nilable(T::Array[String]), title: T.nilable(String), updated_at: T.nilable(DateTime)).void }
      def initialize(code: nil, company_id: nil, confidential: nil, created_at: nil, department_ids: nil, hiring_team: nil, id: nil, job_status: nil, location_ids: nil, title: nil, updated_at: nil)
        @code = code
        @company_id = company_id
        @confidential = confidential
        @created_at = created_at
        @department_ids = department_ids
        @hiring_team = hiring_team
        @id = id
        @job_status = job_status
        @location_ids = location_ids
        @title = title
        @updated_at = updated_at
      end
    end
  end
end
