# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'faraday/retry'
require 'sorbet-runtime'
require_relative 'utils/retries'

module StackOne
  extend T::Sig
  class Iam
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::StackOne::Operations::IamGetGroupRequest), retries: T.nilable(Utils::RetryConfig)).returns(::StackOne::Operations::IamGetGroupResponse) }
    def get_group(request, retries = nil)
      # get_group - Get Group
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::IamGetGroupRequest,
        base_url,
        '/unified/iam/groups/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::IamGetGroupRequest, request)
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

      connection = @sdk_configuration.client.dup
      connection.request :retry, retry_options

      r = connection.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::IamGetGroupResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::IamGroupResult)
          res.iam_group_result = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::IamGetPolicyRequest), retries: T.nilable(Utils::RetryConfig)).returns(::StackOne::Operations::IamGetPolicyResponse) }
    def get_policy(request, retries = nil)
      # get_policy - Get Policy
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::IamGetPolicyRequest,
        base_url,
        '/unified/iam/policies/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::IamGetPolicyRequest, request)
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

      connection = @sdk_configuration.client.dup
      connection.request :retry, retry_options

      r = connection.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::IamGetPolicyResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::IamPolicyResult)
          res.iam_policy_result = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::IamGetRoleRequest), retries: T.nilable(Utils::RetryConfig)).returns(::StackOne::Operations::IamGetRoleResponse) }
    def get_role(request, retries = nil)
      # get_role - Get Role
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::IamGetRoleRequest,
        base_url,
        '/unified/iam/roles/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::IamGetRoleRequest, request)
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

      connection = @sdk_configuration.client.dup
      connection.request :retry, retry_options

      r = connection.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::IamGetRoleResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::IamRoleResult)
          res.iam_role_result = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::IamGetUserRequest), retries: T.nilable(Utils::RetryConfig)).returns(::StackOne::Operations::IamGetUserResponse) }
    def get_user(request, retries = nil)
      # get_user - Get User
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::IamGetUserRequest,
        base_url,
        '/unified/iam/users/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::IamGetUserRequest, request)
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

      connection = @sdk_configuration.client.dup
      connection.request :retry, retry_options

      r = connection.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::IamGetUserResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::IamUserResult)
          res.iam_user_result = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::IamListGroupsRequest), retries: T.nilable(Utils::RetryConfig)).returns(::StackOne::Operations::IamListGroupsResponse) }
    def list_groups(request, retries = nil)
      # list_groups - List Groups
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/iam/groups"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::IamListGroupsRequest, request)
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

      connection = @sdk_configuration.client.dup
      connection.request :retry, retry_options

      r = connection.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::IamListGroupsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::IamGroupsPaginated)
          res.iam_groups_paginated = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::IamListPoliciesRequest), retries: T.nilable(Utils::RetryConfig)).returns(::StackOne::Operations::IamListPoliciesResponse) }
    def list_policies(request, retries = nil)
      # list_policies - List Policies
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/iam/policies"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::IamListPoliciesRequest, request)
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

      connection = @sdk_configuration.client.dup
      connection.request :retry, retry_options

      r = connection.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::IamListPoliciesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::IamPoliciesPaginated)
          res.iam_policies_paginated = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::IamListRolesRequest), retries: T.nilable(Utils::RetryConfig)).returns(::StackOne::Operations::IamListRolesResponse) }
    def list_roles(request, retries = nil)
      # list_roles - List Roles
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/iam/roles"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::IamListRolesRequest, request)
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

      connection = @sdk_configuration.client.dup
      connection.request :retry, retry_options

      r = connection.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::IamListRolesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::IamRolesPaginated)
          res.iam_roles_paginated = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::IamListUsersRequest), retries: T.nilable(Utils::RetryConfig)).returns(::StackOne::Operations::IamListUsersResponse) }
    def list_users(request, retries = nil)
      # list_users - List Users
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/iam/users"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::IamListUsersRequest, request)
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

      connection = @sdk_configuration.client.dup
      connection.request :retry, retry_options

      r = connection.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::IamListUsersResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::IamUsersPaginated)
          res.iam_users_paginated = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end
  end
end
