# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::IamCredentials
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::IamCredentials
  def auth_type(); end
  def auth_type=(str_); end
  def last_accessed_at(); end
  def last_accessed_at=(str_); end
  def name(); end
  def name=(str_); end
  def permissions(); end
  def permissions=(str_); end
  def scopes(); end
  def scopes=(str_); end
  def user(); end
  def user=(str_); end
end
