# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::Config
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::Config
  def sections(); end
  def sections=(str_); end
  def warning(); end
  def warning=(str_); end
end