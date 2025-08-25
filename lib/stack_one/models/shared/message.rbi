# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::Message
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::Message
  def id(); end
  def id=(str_); end
  def message_content(); end
  def message_content=(str_); end
  def message_type(); end
  def message_type=(str_); end
  def name(); end
  def name=(str_); end
  def remote_id(); end
  def remote_id=(str_); end
end