# typed: true
# frozen_string_literal: true


class StackOne::Models::Errors::BadRequestResponse
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Errors::BadRequestResponse
  def message(); end
  def message=(str_); end
  def status_code(); end
  def status_code=(str_); end
  def timestamp(); end
  def timestamp=(str_); end
  def data(); end
  def data=(str_); end
  def provider_errors(); end
  def provider_errors=(str_); end
end