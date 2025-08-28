# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::Security
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::Security
  def password(); end
  def password=(str_); end
  def username(); end
  def username=(str_); end
end