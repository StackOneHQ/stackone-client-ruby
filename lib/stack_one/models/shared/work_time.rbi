# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::WorkTime
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::WorkTime
  def duration(); end
  def duration=(str_); end
  def duration_unit(); end
  def duration_unit=(str_); end
end