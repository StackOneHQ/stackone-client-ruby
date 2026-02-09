# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::ActionSearchResultDto
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::ActionSearchResultDto
  def action_name(); end
  def action_name=(str_); end
  def connector_key(); end
  def connector_key=(str_); end
  def description(); end
  def description=(str_); end
  def label(); end
  def label=(str_); end
  def project_id(); end
  def project_id=(str_); end
  def similarity_score(); end
  def similarity_score=(str_); end
end