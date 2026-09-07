# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::ActionSearchResultDto
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::ActionSearchResultDto
  def id(); end
  def id=(str_); end
  def similarity_score(); end
  def similarity_score=(str_); end
  def prerequisite_actions(); end
  def prerequisite_actions=(str_); end
  def tool_name(); end
  def tool_name=(str_); end
end
