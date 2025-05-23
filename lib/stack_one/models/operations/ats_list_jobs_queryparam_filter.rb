# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    
      # ATS Jobs filters
      class AtsListJobsQueryParamFilter
        extend T::Sig
        include Crystalline::MetadataFields

        # Use a string with a date to only select results created after that given date
        field :created_after, T.nilable(::String), { 'query_param': { 'field_name': 'created_after' } }
        # The job_status of the job
        field :job_status, T.nilable(Models::Operations::JobStatus), { 'query_param': { 'field_name': 'job_status' } }
        # The status of the job
        # 
        # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
        field :status, T.nilable(Models::Operations::Status), { 'query_param': { 'field_name': 'status' } }
        # Use a string with a date to only select results updated after that given date
        field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after' } }


        sig { params(created_after: T.nilable(::String), job_status: T.nilable(Models::Operations::JobStatus), status: T.nilable(Models::Operations::Status), updated_after: T.nilable(::String)).void }
        def initialize(created_after: nil, job_status: nil, status: nil, updated_after: nil)
          @created_after = created_after
          @job_status = job_status
          @status = status
          @updated_after = updated_after
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @created_after == other.created_after
          return false unless @job_status == other.job_status
          return false unless @status == other.status
          return false unless @updated_after == other.updated_after
          true
        end
      end
    end
  end
end
