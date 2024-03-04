# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module StackOne
  extend T::Sig
  class Accounts
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(id: ::String).returns(::StackOne::Operations::StackoneDeleteAccountResponse) }
    def delete_account(id)
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

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::StackoneDeleteAccountResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::LinkedAccount)
          res.linked_account = out
        end
      elsif [400, 403, 404, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(id: ::String).returns(::StackOne::Operations::StackoneGetAccountResponse) }
    def get_account(id)
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

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::StackoneGetAccountResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::LinkedAccount)
          res.linked_account = out
        end
      elsif [400, 403, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(id: ::String).returns(::StackOne::Operations::StackoneGetAccountMetaInfoResponse) }
    def get_account_meta_info(id)
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

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::StackoneGetAccountMetaInfoResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::LinkedAccountMeta)
          res.linked_account_meta = out
        end
      elsif [400, 403, 404, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(origin_owner_id: T.nilable(::String), provider: T.nilable(::String)).returns(::StackOne::Operations::StackoneListLinkedAccountsResponse) }
    def list_linked_accounts(origin_owner_id = nil, provider = nil)
      # list_linked_accounts - List Accounts
      request = ::StackOne::Operations::StackoneListLinkedAccountsRequest.new(
        
        origin_owner_id: origin_owner_id,
        provider: provider
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/accounts"
      headers = {}
      query_params = Utils.get_query_params(::StackOne::Operations::StackoneListLinkedAccountsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::StackoneListLinkedAccountsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::StackOne::Shared::LinkedAccount])
          res.linked_accounts = out
        end
      elsif [400, 403, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(patch_account_dto: ::StackOne::Shared::PatchAccountDto, id: ::String).returns(::StackOne::Operations::StackoneUpdateAccountResponse) }
    def update_account(patch_account_dto, id)
      # update_account - Update Account
      request = ::StackOne::Operations::StackoneUpdateAccountRequest.new(
        
        patch_account_dto: patch_account_dto,
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
      req_content_type, data, form = Utils.serialize_request_body(request, :patch_account_dto, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::StackoneUpdateAccountResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::LinkedAccount)
          res.linked_account = out
        end
      elsif [400, 403, 429, 500, 501].include?(r.status)
      end
      res
    end
  end
end
