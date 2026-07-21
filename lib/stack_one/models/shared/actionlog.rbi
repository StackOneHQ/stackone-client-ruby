# typed: true
# frozen_string_literal: true


class StackOne::Models::Shared::ActionLog
  extend ::Crystalline::MetadataFields::ClassMethods
end


class StackOne::Models::Shared::ActionLog
  def action_run_id(); end
  def action_run_id=(str_); end
  def log_id(); end
  def log_id=(str_); end
  def log_type(); end
  def log_type=(str_); end
  def account_id(); end
  def account_id=(str_); end
  def action_id(); end
  def action_id=(str_); end
  def action_type(); end
  def action_type=(str_); end
  def agent_id(); end
  def agent_id=(str_); end
  def auth_id(); end
  def auth_id=(str_); end
  def auth_type(); end
  def auth_type=(str_); end
  def category(); end
  def category=(str_); end
  def connector_key(); end
  def connector_key=(str_); end
  def connector_owner(); end
  def connector_owner=(str_); end
  def connector_profile_id(); end
  def connector_profile_id=(str_); end
  def connector_version(); end
  def connector_version=(str_); end
  def duration_ms(); end
  def duration_ms=(str_); end
  def end_time(); end
  def end_time=(str_); end
  def event_time(); end
  def event_time=(str_); end
  def http_method(); end
  def http_method=(str_); end
  def ip_address(); end
  def ip_address=(str_); end
  def is_background(); end
  def is_background=(str_); end
  def mode(); end
  def mode=(str_); end
  def origin_owner_id(); end
  def origin_owner_id=(str_); end
  def origin_owner_name(); end
  def origin_owner_name=(str_); end
  def project_id(); end
  def project_id=(str_); end
  def risk_level(); end
  def risk_level=(str_); end
  def session_id(); end
  def session_id=(str_); end
  def source_id(); end
  def source_id=(str_); end
  def source_type(); end
  def source_type=(str_); end
  def source_value(); end
  def source_value=(str_); end
  def start_time(); end
  def start_time=(str_); end
  def status_code(); end
  def status_code=(str_); end
  def stream_type(); end
  def stream_type=(str_); end
  def success(); end
  def success=(str_); end
  def tier2_score(); end
  def tier2_score=(str_); end
  def transport_type(); end
  def transport_type=(str_); end
  def url(); end
  def url=(str_); end
  def user_agent(); end
  def user_agent=(str_); end
end
