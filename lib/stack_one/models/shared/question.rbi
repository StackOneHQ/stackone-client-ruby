# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::Question
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::Question
  def id(); end
  def id=(str_); end
  def multiple_choice_answers(); end
  def multiple_choice_answers=(str_); end
  def name(); end
  def name=(str_); end
  def parent_question(); end
  def parent_question=(str_); end
  def remote_id(); end
  def remote_id=(str_); end
  def required(); end
  def required=(str_); end
  def text(); end
  def text=(str_); end
  def type(); end
  def type=(str_); end
end