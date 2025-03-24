# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'faraday/retry'
require 'sorbet-runtime'
require_relative 'sdk_hooks/hooks'
require_relative 'utils/retries'

module StackOne
  extend T::Sig
  class Proxy
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(proxy_request_body: ::StackOne::Shared::ProxyRequestBody, x_account_id: ::String, retries: T.nilable(Utils::RetryConfig), timeout_ms: T.nilable(Integer)).returns(::StackOne::Operations::StackoneProxyRequestResponse) }
    def proxy_request(proxy_request_body, x_account_id, retries = nil, timeout_ms = nil)
      # proxy_request - Proxy Request
      request = ::StackOne::Operations::StackoneProxyRequestRequest.new(
        
        proxy_request_body: proxy_request_body,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/proxy"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :proxy_request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?

      if form
        body = Utils.encode_form(form)
      elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
        body = URI.encode_www_form(data)
      else
        body = data
      end
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent
      retries ||= @sdk_configuration.retry_config
      retries ||= Utils::RetryConfig.new(
        backoff: Utils::BackoffStrategy.new(
          exponent: 1.5,
          initial_interval: 500,
          max_elapsed_time: 3_600_000,
          max_interval: 60_000
        ),
        retry_connection_errors: true,
        strategy: 'backoff'
      )
      retry_options = retries.to_faraday_retry_options(initial_time: Time.now)
      retry_options[:retry_statuses] = [429, 408]

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client.dup
      connection.request :retry, retry_options

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'stackone_proxy_request',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.post(url) do |req|
          req.body = body
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::StackoneProxyRequestResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end
  end
end
