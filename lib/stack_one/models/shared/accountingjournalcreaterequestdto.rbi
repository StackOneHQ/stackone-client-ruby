# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::AccountingJournalCreateRequestDto
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::AccountingJournalCreateRequestDto
  def currency_code(); end
  def currency_code=(str_); end
  def exchange_rate(); end
  def exchange_rate=(str_); end
  def lines(); end
  def lines=(str_); end
  def memo(); end
  def memo=(str_); end
  def reference(); end
  def reference=(str_); end
  def transaction_date(); end
  def transaction_date=(str_); end
end