# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::DefenderConfig
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::DefenderConfig
  def block_high_risk(); end
  def block_high_risk=(str_); end
  def enabled(); end
  def enabled=(str_); end
  def use_tier1_classification(); end
  def use_tier1_classification=(str_); end
  def use_tier2_classification(); end
  def use_tier2_classification=(str_); end
end
