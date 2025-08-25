# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::Attachment
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::Attachment
  def content_type(); end
  def content_type=(str_); end
  def url(); end
  def url=(str_); end
end