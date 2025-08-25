# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::CustomMappingError
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::CustomMappingError
  def id(); end
  def id=(str_); end
  def message(); end
  def message=(str_); end
  def target_field(); end
  def target_field=(str_); end
end