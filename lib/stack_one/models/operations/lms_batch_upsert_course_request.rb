# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class LmsBatchUpsertCourseRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :lms_batch_upsert_course_request_dto, ::StackOne::Shared::LmsBatchUpsertCourseRequestDto, { 'request': { 'media_type': 'application/json' } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(lms_batch_upsert_course_request_dto: ::StackOne::Shared::LmsBatchUpsertCourseRequestDto, x_account_id: ::String).void }
      def initialize(lms_batch_upsert_course_request_dto: nil, x_account_id: nil)
        @lms_batch_upsert_course_request_dto = lms_batch_upsert_course_request_dto
        @x_account_id = x_account_id
      end
    end
  end
end
