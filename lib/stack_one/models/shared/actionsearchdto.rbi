# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::ActionSearchDto
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::ActionSearchDto
  def query(); end
  def query=(str_); end
  def connector(); end
  def connector=(str_); end
  def min_similarity(); end
  def min_similarity=(str_); end
  def top_k(); end
  def top_k=(str_); end
end
