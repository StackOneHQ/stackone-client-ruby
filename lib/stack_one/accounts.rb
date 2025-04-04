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
  class Accounts
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(id: ::String, retries: T.nilable(Utils::RetryConfig), timeout_ms: T.nilable(Integer)).returns(::StackOne::Operations::StackoneDeleteAccountResponse) }
    def delete_account(id, retries = nil, timeout_ms = nil)
      # delete_account - Delete Account
      request = ::StackOne::Operations::StackoneDeleteAccountRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::StackoneDeleteAccountRequest,
        base_url,
        '/accounts/{id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
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
        oauth2_scopes: nil,
        operation_id: 'stackone_delete_account',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.delete(url) do |req|
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

      res = ::StackOne::Operations::StackoneDeleteAccountResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::LinkedAccount)
          res.linked_account = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadRequestResponse)
          res.bad_request_response = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnauthorizedResponse)
          res.unauthorized_response = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ForbiddenResponse)
          res.forbidden_response = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotFoundResponse)
          res.not_found_response = out
        end
      elsif r.status == 408
        res.headers = r.headers
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::RequestTimedOutResponse)
          res.request_timed_out_response = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ConflictResponse)
          res.conflict_response = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnprocessableEntityResponse)
          res.unprocessable_entity_response = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::TooManyRequestsResponse)
          res.too_many_requests_response = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::InternalServerErrorResponse)
          res.internal_server_error_response = out
        end
      elsif r.status == 501
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotImplementedResponse)
          res.not_implemented_response = out
        end
      elsif r.status == 502
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadGatewayResponse)
          res.bad_gateway_response = out
        end
      end

      res
    end


    sig { params(id: ::String, retries: T.nilable(Utils::RetryConfig), timeout_ms: T.nilable(Integer)).returns(::StackOne::Operations::StackoneGetAccountResponse) }
    def get_account(id, retries = nil, timeout_ms = nil)
      # get_account - Get Account
      request = ::StackOne::Operations::StackoneGetAccountRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::StackoneGetAccountRequest,
        base_url,
        '/accounts/{id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
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
        oauth2_scopes: nil,
        operation_id: 'stackone_get_account',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
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

      res = ::StackOne::Operations::StackoneGetAccountResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::LinkedAccount)
          res.linked_account = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadRequestResponse)
          res.bad_request_response = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnauthorizedResponse)
          res.unauthorized_response = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ForbiddenResponse)
          res.forbidden_response = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotFoundResponse)
          res.not_found_response = out
        end
      elsif r.status == 408
        res.headers = r.headers
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::RequestTimedOutResponse)
          res.request_timed_out_response = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ConflictResponse)
          res.conflict_response = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnprocessableEntityResponse)
          res.unprocessable_entity_response = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::TooManyRequestsResponse)
          res.too_many_requests_response = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::InternalServerErrorResponse)
          res.internal_server_error_response = out
        end
      elsif r.status == 501
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotImplementedResponse)
          res.not_implemented_response = out
        end
      elsif r.status == 502
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadGatewayResponse)
          res.bad_gateway_response = out
        end
      end

      res
    end


    sig { params(id: ::String, retries: T.nilable(Utils::RetryConfig), timeout_ms: T.nilable(Integer)).returns(::StackOne::Operations::StackoneGetAccountMetaInfoResponse) }
    def get_account_meta_info(id, retries = nil, timeout_ms = nil)
      # get_account_meta_info - Get meta information of the account
      request = ::StackOne::Operations::StackoneGetAccountMetaInfoRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::StackoneGetAccountMetaInfoRequest,
        base_url,
        '/accounts/{id}/meta',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
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
        oauth2_scopes: nil,
        operation_id: 'stackone_get_account_meta_info',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
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

      res = ::StackOne::Operations::StackoneGetAccountMetaInfoResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::LinkedAccountMeta)
          res.linked_account_meta = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadRequestResponse)
          res.bad_request_response = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnauthorizedResponse)
          res.unauthorized_response = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ForbiddenResponse)
          res.forbidden_response = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotFoundResponse)
          res.not_found_response = out
        end
      elsif r.status == 408
        res.headers = r.headers
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::RequestTimedOutResponse)
          res.request_timed_out_response = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ConflictResponse)
          res.conflict_response = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnprocessableEntityResponse)
          res.unprocessable_entity_response = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::TooManyRequestsResponse)
          res.too_many_requests_response = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::InternalServerErrorResponse)
          res.internal_server_error_response = out
        end
      elsif r.status == 501
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotImplementedResponse)
          res.not_implemented_response = out
        end
      elsif r.status == 502
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadGatewayResponse)
          res.bad_gateway_response = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::StackoneListLinkedAccountsRequest), retries: T.nilable(Utils::RetryConfig), timeout_ms: T.nilable(Integer)).returns(::StackOne::Operations::StackoneListLinkedAccountsResponse) }
    def list_linked_accounts(request, retries = nil, timeout_ms = nil)
      # list_linked_accounts - List Accounts
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/accounts"
      headers = {}
      query_params = Utils.get_query_params(::StackOne::Operations::StackoneListLinkedAccountsRequest, request)
      headers['Accept'] = 'application/json'
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
        oauth2_scopes: nil,
        operation_id: 'stackone_list_linked_accounts',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          req.params = query_params
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

      res = ::StackOne::Operations::StackoneListLinkedAccountsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::StackOne::Shared::LinkedAccount])
          res.linked_accounts = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadRequestResponse)
          res.bad_request_response = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnauthorizedResponse)
          res.unauthorized_response = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ForbiddenResponse)
          res.forbidden_response = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotFoundResponse)
          res.not_found_response = out
        end
      elsif r.status == 408
        res.headers = r.headers
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::RequestTimedOutResponse)
          res.request_timed_out_response = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ConflictResponse)
          res.conflict_response = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnprocessableEntityResponse)
          res.unprocessable_entity_response = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::TooManyRequestsResponse)
          res.too_many_requests_response = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::InternalServerErrorResponse)
          res.internal_server_error_response = out
        end
      elsif r.status == 501
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotImplementedResponse)
          res.not_implemented_response = out
        end
      elsif r.status == 502
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadGatewayResponse)
          res.bad_gateway_response = out
        end
      end

      res
    end


    sig { params(patch_account_external_dto: ::StackOne::Shared::PatchAccountExternalDto, id: ::String, retries: T.nilable(Utils::RetryConfig), timeout_ms: T.nilable(Integer)).returns(::StackOne::Operations::StackoneUpdateAccountResponse) }
    def update_account(patch_account_external_dto, id, retries = nil, timeout_ms = nil)
      # update_account - Update Account
      request = ::StackOne::Operations::StackoneUpdateAccountRequest.new(
        
        patch_account_external_dto: patch_account_external_dto,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::StackoneUpdateAccountRequest,
        base_url,
        '/accounts/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :patch_account_external_dto, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?

      if form
        body = Utils.encode_form(form)
      elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
        body = URI.encode_www_form(data)
      else
        body = data
      end
      headers['Accept'] = 'application/json'
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
        oauth2_scopes: nil,
        operation_id: 'stackone_update_account',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.patch(url) do |req|
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

      res = ::StackOne::Operations::StackoneUpdateAccountResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::LinkedAccount)
          res.linked_account = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadRequestResponse)
          res.bad_request_response = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnauthorizedResponse)
          res.unauthorized_response = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ForbiddenResponse)
          res.forbidden_response = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotFoundResponse)
          res.not_found_response = out
        end
      elsif r.status == 408
        res.headers = r.headers
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::RequestTimedOutResponse)
          res.request_timed_out_response = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ConflictResponse)
          res.conflict_response = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::UnprocessableEntityResponse)
          res.unprocessable_entity_response = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::TooManyRequestsResponse)
          res.too_many_requests_response = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::InternalServerErrorResponse)
          res.internal_server_error_response = out
        end
      elsif r.status == 501
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::NotImplementedResponse)
          res.not_implemented_response = out
        end
      elsif r.status == 502
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::BadGatewayResponse)
          res.bad_gateway_response = out
        end
      end

      res
    end
  end
end
