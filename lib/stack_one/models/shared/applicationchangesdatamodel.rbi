# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::ApplicationChangesDataModel
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::ApplicationChangesDataModel
  def application_status(); end
  def application_status=(str_); end
  def interview_stage_id(); end
  def interview_stage_id=(str_); end
  def rejected_reason_ids(); end
  def rejected_reason_ids=(str_); end
end