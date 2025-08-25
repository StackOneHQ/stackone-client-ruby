# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::AccountingCompany
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::AccountingCompany
  def base_currency(); end
  def base_currency=(str_); end
  def fiscal_year_start_day(); end
  def fiscal_year_start_day=(str_); end
  def fiscal_year_start_month(); end
  def fiscal_year_start_month=(str_); end
  def id(); end
  def id=(str_); end
  def name(); end
  def name=(str_); end
  def remote_id(); end
  def remote_id=(str_); end
end