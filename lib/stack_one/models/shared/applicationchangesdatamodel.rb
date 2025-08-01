# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class ApplicationChangesDataModel
        extend T::Sig
        include Crystalline::MetadataFields


        field :application_status, T.nilable(Models::Shared::ApplicationChangesDataModelApplicationStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('application_status') } }
        # Unique identifier of the interview stage
        field :interview_stage_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_stage_id') } }
        # Unique identifiers of the rejection reasons
        field :rejected_reason_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('rejected_reason_ids') } }


        sig { params(application_status: T.nilable(Models::Shared::ApplicationChangesDataModelApplicationStatus), interview_stage_id: T.nilable(::String), rejected_reason_ids: T.nilable(T::Array[::String])).void }
        def initialize(application_status: nil, interview_stage_id: nil, rejected_reason_ids: nil)
          @application_status = application_status
          @interview_stage_id = interview_stage_id
          @rejected_reason_ids = rejected_reason_ids
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @application_status == other.application_status
          return false unless @interview_stage_id == other.interview_stage_id
          return false unless @rejected_reason_ids == other.rejected_reason_ids
          true
        end
      end
    end
  end
end
