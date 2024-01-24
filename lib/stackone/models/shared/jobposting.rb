# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared

    class JobPostingContent < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :html, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('html') } }

      field :plain, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('plain') } }


      sig { params(html: T.nilable(String), plain: T.nilable(String)).void }
      def initialize(html: nil, plain: nil)
        @html = html
        @plain = plain
      end
    end

    # JobPostingValue - The employment contract type.
    class JobPostingValue < T::Enum
      enums do
        FULL_TIME = new('full_time')
        SHIFTS = new('shifts')
        PART_TIME = new('part_time')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class JobPostingEmploymentContractType < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The source value of the employment contract type.
      field :source_value, T.nilable(Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The employment contract type.
      field :value, T.nilable(Shared::JobPostingValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::JobPostingValue, true) } }


      sig { params(source_value: T.nilable(Object), value: T.nilable(Shared::JobPostingValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end

    # JobPostingSchemasValue - The type of the employment.
    class JobPostingSchemasValue < T::Enum
      enums do
        PERMANENT = new('permanent')
        CONTRACTOR = new('contractor')
        INTERN = new('intern')
        APPRENTICE = new('apprentice')
        FREELANCE = new('freelance')
        TEMPORARY = new('temporary')
        SEASONAL = new('seasonal')
        VOLUNTEER = new('volunteer')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class JobPostingEmploymentType < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The source value of the employment type.
      field :source_value, T.nilable(Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The type of the employment.
      field :value, T.nilable(Shared::JobPostingSchemasValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::JobPostingSchemasValue, true) } }


      sig { params(source_value: T.nilable(Object), value: T.nilable(Shared::JobPostingSchemasValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end


    class Internal < T::Enum
      enums do
        TRUE = new('true')
        FALSE = new('false')
      end
    end


    # JobPostingSchemasStatusValue - The status of the job postings.
    class JobPostingSchemasStatusValue < T::Enum
      enums do
        LIVE = new('live')
        DRAFT = new('draft')
        CLOSED = new('closed')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end



    class JobPostingStatus < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The source value of the job postings status.
      field :source_value, T.nilable(Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The status of the job postings.
      field :value, T.nilable(Shared::JobPostingSchemasStatusValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::JobPostingSchemasStatusValue, true) } }


      sig { params(source_value: T.nilable(Object), value: T.nilable(Shared::JobPostingSchemasStatusValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end


    class JobPosting < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }

      field :compensation, T.nilable(T::Array[Shared::JobPostingCompensation]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('compensation') } }

      field :content, T.nilable(Shared::JobPostingContent), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content') } }
      # Date of creation
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :employment_contract_type, T.nilable(Shared::JobPostingEmploymentContractType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_contract_type') } }

      field :employment_type, T.nilable(Shared::JobPostingEmploymentType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_type') } }

      field :external_apply_url, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('external_apply_url') } }

      field :external_url, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('external_url') } }

      field :internal, T.nilable(Shared::Internal), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('internal'), 'decoder': Utils.enum_from_string(Shared::Internal, true) } }

      field :job_id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_id') } }

      field :locations, T.nilable(T::Array[Shared::JobPostingLocation]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('locations') } }

      field :questionnaires, T.nilable(T::Array[Shared::JobPostingQuestionnaire]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('questionnaires') } }

      field :status, T.nilable(Shared::JobPostingStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status') } }

      field :title, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }
      # Date of last update
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(id: String, compensation: T.nilable(T::Array[Shared::JobPostingCompensation]), content: T.nilable(Shared::JobPostingContent), created_at: T.nilable(DateTime), employment_contract_type: T.nilable(Shared::JobPostingEmploymentContractType), employment_type: T.nilable(Shared::JobPostingEmploymentType), external_apply_url: T.nilable(String), external_url: T.nilable(String), internal: T.nilable(Shared::Internal), job_id: T.nilable(String), locations: T.nilable(T::Array[Shared::JobPostingLocation]), questionnaires: T.nilable(T::Array[Shared::JobPostingQuestionnaire]), status: T.nilable(Shared::JobPostingStatus), title: T.nilable(String), updated_at: T.nilable(DateTime)).void }
      def initialize(id: nil, compensation: nil, content: nil, created_at: nil, employment_contract_type: nil, employment_type: nil, external_apply_url: nil, external_url: nil, internal: nil, job_id: nil, locations: nil, questionnaires: nil, status: nil, title: nil, updated_at: nil)
        @id = id
        @compensation = compensation
        @content = content
        @created_at = created_at
        @employment_contract_type = employment_contract_type
        @employment_type = employment_type
        @external_apply_url = external_apply_url
        @external_url = external_url
        @internal = internal
        @job_id = job_id
        @locations = locations
        @questionnaires = questionnaires
        @status = status
        @title = title
        @updated_at = updated_at
      end
    end
  end
end
