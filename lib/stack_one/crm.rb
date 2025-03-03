# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module StackOne
  extend T::Sig
  class Crm
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(crm_create_contact_request_dto: ::StackOne::Shared::CrmCreateContactRequestDto, x_account_id: ::String).returns(::StackOne::Operations::CrmCreateContactResponse) }
    def create_contact(crm_create_contact_request_dto, x_account_id)
      # create_contact - Creates a new Contact
      request = ::StackOne::Operations::CrmCreateContactRequest.new(
        
        crm_create_contact_request_dto: crm_create_contact_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/crm/contacts"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_create_contact_request_dto, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
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

      res = ::StackOne::Operations::CrmCreateContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ContactResult)
          res.contact_result = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::CrmGetAccountRequest)).returns(::StackOne::Operations::CrmGetAccountResponse) }
    def get_account(request)
      # get_account - Get Account
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::CrmGetAccountRequest,
        base_url,
        '/unified/crm/accounts/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::CrmGetAccountRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::CrmGetAccountResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::AccountResult)
          res.account_result = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::CrmGetContactRequest)).returns(::StackOne::Operations::CrmGetContactResponse) }
    def get_contact(request)
      # get_contact - Get Contact
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::CrmGetContactRequest,
        base_url,
        '/unified/crm/contacts/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::CrmGetContactRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::CrmGetContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ContactResult)
          res.contact_result = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::CrmGetContactCustomFieldDefinitionRequest)).returns(::StackOne::Operations::CrmGetContactCustomFieldDefinitionResponse) }
    def get_contact_custom_field_definition(request)
      # get_contact_custom_field_definition - Get Contact Custom Field Definition
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::CrmGetContactCustomFieldDefinitionRequest,
        base_url,
        '/unified/crm/custom_field_definitions/contacts/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::CrmGetContactCustomFieldDefinitionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::CrmGetContactCustomFieldDefinitionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::CustomFieldDefinitionResultApiModel)
          res.custom_field_definition_result_api_model = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::CrmGetListRequest)).returns(::StackOne::Operations::CrmGetListResponse) }
    def get_list(request)
      # get_list - Get List
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::CrmGetListRequest,
        base_url,
        '/unified/crm/lists/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::CrmGetListRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::CrmGetListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ListResult)
          res.list_result = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::CrmListAccountsRequest)).returns(::StackOne::Operations::CrmListAccountsResponse) }
    def list_accounts(request)
      # list_accounts - List Accounts
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/crm/accounts"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::CrmListAccountsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::CrmListAccountsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::AccountsPaginated)
          res.accounts_paginated = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::CrmListContactCustomFieldDefinitionsRequest)).returns(::StackOne::Operations::CrmListContactCustomFieldDefinitionsResponse) }
    def list_contact_custom_field_definitions(request)
      # list_contact_custom_field_definitions - List Contact Custom Field Definitions
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/crm/custom_field_definitions/contacts"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::CrmListContactCustomFieldDefinitionsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::CrmListContactCustomFieldDefinitionsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::CustomFieldDefinitionsPaginated)
          res.custom_field_definitions_paginated = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::CrmListContactsRequest)).returns(::StackOne::Operations::CrmListContactsResponse) }
    def list_contacts(request)
      # list_contacts - List Contacts
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/crm/contacts"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::CrmListContactsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::CrmListContactsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ContactsPaginated)
          res.contacts_paginated = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::CrmListListsRequest)).returns(::StackOne::Operations::CrmListListsResponse) }
    def list_lists(request)
      # list_lists - Get all Lists
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/crm/lists"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::CrmListListsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::CrmListListsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ListsPaginated)
          res.lists_paginated = out
        end
      elsif r.status == 408
        res.headers = r.headers
      elsif [400, 403, 412, 429].include?(r.status)
      elsif [500, 501].include?(r.status)
      end

      res
    end


    sig { params(crm_create_contact_request_dto: ::StackOne::Shared::CrmCreateContactRequestDto, id: ::String, x_account_id: ::String).returns(::StackOne::Operations::CrmUpdateContactResponse) }
    def update_contact(crm_create_contact_request_dto, id, x_account_id)
      # update_contact - Update Contact (early access)
      request = ::StackOne::Operations::CrmUpdateContactRequest.new(
        
        crm_create_contact_request_dto: crm_create_contact_request_dto,
        id: id,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::CrmUpdateContactRequest,
        base_url,
        '/unified/crm/contacts/{id}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_create_contact_request_dto, :json)
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

      res = ::StackOne::Operations::CrmUpdateContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::StackOne::Shared::ContactResult)
          res.contact_result = out
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
