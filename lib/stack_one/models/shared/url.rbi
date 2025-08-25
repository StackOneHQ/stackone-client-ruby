# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::Url
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::Url
  def hostname(); end
  def hostname=(str_); end
  def path(); end
  def path=(str_); end
  def query_params(); end
  def query_params=(str_); end
  def url(); end
  def url=(str_); end
end