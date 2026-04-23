# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::ActionMetaItem
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::ActionMetaItem
  def action_details(); end
  def action_details=(str_); end
  def authentication(); end
  def authentication=(str_); end
  def description(); end
  def description=(str_); end
  def id(); end
  def id=(str_); end
  def label(); end
  def label=(str_); end
  def required_scopes(); end
  def required_scopes=(str_); end
  def schema_type(); end
  def schema_type=(str_); end
  def tags(); end
  def tags=(str_); end
end
