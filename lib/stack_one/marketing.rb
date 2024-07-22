# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module StackOne
  extend T::Sig
  class Marketing
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(marketing_create_content_blocks_request_dto: ::StackOne::Shared::MarketingCreateContentBlocksRequestDto, x_account_id: ::String).returns(::StackOne::Operations::MarketingCreateContentBlockResponse) }
    def create_content_block(marketing_create_content_blocks_request_dto, x_account_id)
      # create_content_block - Create Content Block
      request = ::StackOne::Operations::MarketingCreateContentBlockRequest.new(
        
        marketing_create_content_blocks_request_dto: marketing_create_content_blocks_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/marketing/content_blocks"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_create_content_blocks_request_dto, :json)
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

      res = ::StackOne::Operations::MarketingCreateContentBlockResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateResult)
          res.create_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(marketing_create_email_template_request_dto: ::StackOne::Shared::MarketingCreateEmailTemplateRequestDto, x_account_id: ::String).returns(::StackOne::Operations::MarketingCreateEmailTemplateResponse) }
    def create_email_template(marketing_create_email_template_request_dto, x_account_id)
      # create_email_template - Create email template
      request = ::StackOne::Operations::MarketingCreateEmailTemplateRequest.new(
        
        marketing_create_email_template_request_dto: marketing_create_email_template_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/marketing/templates/email"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_create_email_template_request_dto, :json)
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

      res = ::StackOne::Operations::MarketingCreateEmailTemplateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateResult)
          res.create_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(marketing_create_template_request_dto: ::StackOne::Shared::MarketingCreateTemplateRequestDto, x_account_id: ::String).returns(::StackOne::Operations::MarketingCreateOmniChannelTemplateResponse) }
    def create_omni_channel_template(marketing_create_template_request_dto, x_account_id)
      # create_omni_channel_template - Create omni-channel template
      request = ::StackOne::Operations::MarketingCreateOmniChannelTemplateRequest.new(
        
        marketing_create_template_request_dto: marketing_create_template_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/marketing/templates/omni_channel"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_create_template_request_dto, :json)
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

      res = ::StackOne::Operations::MarketingCreateOmniChannelTemplateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateResult)
          res.create_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(marketing_create_push_template_request_dto: ::StackOne::Shared::MarketingCreatePushTemplateRequestDto, x_account_id: ::String).returns(::StackOne::Operations::MarketingCreatePushTemplateResponse) }
    def create_push_template(marketing_create_push_template_request_dto, x_account_id)
      # create_push_template - Create push template
      request = ::StackOne::Operations::MarketingCreatePushTemplateRequest.new(
        
        marketing_create_push_template_request_dto: marketing_create_push_template_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/marketing/templates/push"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_create_push_template_request_dto, :json)
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

      res = ::StackOne::Operations::MarketingCreatePushTemplateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateResult)
          res.create_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingGetCampaignRequest)).returns(::StackOne::Operations::MarketingGetCampaignResponse) }
    def get_campaign(request)
      # get_campaign - Get campaign
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::MarketingGetCampaignRequest,
        base_url,
        '/unified/marketing/campaigns/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingGetCampaignRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingGetCampaignResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CampaignResult)
          res.campaign_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingGetContentBlockRequest)).returns(::StackOne::Operations::MarketingGetContentBlockResponse) }
    def get_content_block(request)
      # get_content_block - Get Content Blocks
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::MarketingGetContentBlockRequest,
        base_url,
        '/unified/marketing/content_blocks/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingGetContentBlockRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingGetContentBlockResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::ContentBlocksPaginated)
          res.content_blocks_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingGetEmailTemplateRequest)).returns(::StackOne::Operations::MarketingGetEmailTemplateResponse) }
    def get_email_template(request)
      # get_email_template - Get email template
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::MarketingGetEmailTemplateRequest,
        base_url,
        '/unified/marketing/templates/email/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingGetEmailTemplateRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingGetEmailTemplateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TemplateResult)
          res.template_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingGetOmniChannelTemplateRequest)).returns(::StackOne::Operations::MarketingGetOmniChannelTemplateResponse) }
    def get_omni_channel_template(request)
      # get_omni_channel_template - Get omni-channel template
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::MarketingGetOmniChannelTemplateRequest,
        base_url,
        '/unified/marketing/templates/omni_channel/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingGetOmniChannelTemplateRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingGetOmniChannelTemplateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TemplateResult)
          res.template_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingGetPushTemplateRequest)).returns(::StackOne::Operations::MarketingGetPushTemplateResponse) }
    def get_push_template(request)
      # get_push_template - Get push template
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::MarketingGetPushTemplateRequest,
        base_url,
        '/unified/marketing/templates/push/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingGetPushTemplateRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingGetPushTemplateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TemplateResult)
          res.template_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingListCampaignsRequest)).returns(::StackOne::Operations::MarketingListCampaignsResponse) }
    def list_campaigns(request)
      # list_campaigns - List campaigns
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/marketing/campaigns"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingListCampaignsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingListCampaignsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CampaignsPaginated)
          res.campaigns_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingListContentBlocksRequest)).returns(::StackOne::Operations::MarketingListContentBlocksResponse) }
    def list_content_blocks(request)
      # list_content_blocks - List Content Blocks
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/marketing/content_blocks"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingListContentBlocksRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingListContentBlocksResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::ContentBlocksPaginated)
          res.content_blocks_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingListEmailTemplatesRequest)).returns(::StackOne::Operations::MarketingListEmailTemplatesResponse) }
    def list_email_templates(request)
      # list_email_templates - List email templates
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/marketing/templates/email"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingListEmailTemplatesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingListEmailTemplatesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TemplatesPaginated)
          res.templates_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingListOmniChannelTemplatesRequest)).returns(::StackOne::Operations::MarketingListOmniChannelTemplatesResponse) }
    def list_omni_channel_templates(request)
      # list_omni_channel_templates - List omni-channel templates
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/marketing/templates/omni_channel"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingListOmniChannelTemplatesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingListOmniChannelTemplatesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TemplatesPaginated)
          res.templates_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::MarketingListPushTemplatesRequest)).returns(::StackOne::Operations::MarketingListPushTemplatesResponse) }
    def list_push_templates(request)
      # list_push_templates - List push templates
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/marketing/templates/push"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::MarketingListPushTemplatesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::MarketingListPushTemplatesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TemplatesPaginated)
          res.templates_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(marketing_create_content_blocks_request_dto: ::StackOne::Shared::MarketingCreateContentBlocksRequestDto, id: ::String, x_account_id: ::String).returns(::StackOne::Operations::MarketingUpdateContentBlockResponse) }
    def update_content_block(marketing_create_content_blocks_request_dto, id, x_account_id)
      # update_content_block - Update email template
      request = ::StackOne::Operations::MarketingUpdateContentBlockRequest.new(
        
        marketing_create_content_blocks_request_dto: marketing_create_content_blocks_request_dto,
        id: id,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::MarketingUpdateContentBlockRequest,
        base_url,
        '/unified/marketing/content_blocks/{id}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_create_content_blocks_request_dto, :json)
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

      res = ::StackOne::Operations::MarketingUpdateContentBlockResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateResult)
          res.create_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(marketing_create_email_template_request_dto: ::StackOne::Shared::MarketingCreateEmailTemplateRequestDto, id: ::String, x_account_id: ::String).returns(::StackOne::Operations::MarketingUpdateEmailTemplateResponse) }
    def update_email_template(marketing_create_email_template_request_dto, id, x_account_id)
      # update_email_template - Update email template
      request = ::StackOne::Operations::MarketingUpdateEmailTemplateRequest.new(
        
        marketing_create_email_template_request_dto: marketing_create_email_template_request_dto,
        id: id,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::MarketingUpdateEmailTemplateRequest,
        base_url,
        '/unified/marketing/templates/email/{id}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_create_email_template_request_dto, :json)
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

      res = ::StackOne::Operations::MarketingUpdateEmailTemplateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateResult)
          res.create_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(marketing_create_template_request_dto: ::StackOne::Shared::MarketingCreateTemplateRequestDto, id: ::String, x_account_id: ::String).returns(::StackOne::Operations::MarketingUpdateOmniChannelTemplateResponse) }
    def update_omni_channel_template(marketing_create_template_request_dto, id, x_account_id)
      # update_omni_channel_template - Update omni-channel template
      request = ::StackOne::Operations::MarketingUpdateOmniChannelTemplateRequest.new(
        
        marketing_create_template_request_dto: marketing_create_template_request_dto,
        id: id,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::MarketingUpdateOmniChannelTemplateRequest,
        base_url,
        '/unified/marketing/templates/omni_channel/{id}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_create_template_request_dto, :json)
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

      res = ::StackOne::Operations::MarketingUpdateOmniChannelTemplateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateResult)
          res.create_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(marketing_create_push_template_request_dto: ::StackOne::Shared::MarketingCreatePushTemplateRequestDto, id: ::String, x_account_id: ::String).returns(::StackOne::Operations::MarketingUpdatePushTemplateResponse) }
    def update_push_template(marketing_create_push_template_request_dto, id, x_account_id)
      # update_push_template - Update push template
      request = ::StackOne::Operations::MarketingUpdatePushTemplateRequest.new(
        
        marketing_create_push_template_request_dto: marketing_create_push_template_request_dto,
        id: id,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::MarketingUpdatePushTemplateRequest,
        base_url,
        '/unified/marketing/templates/push/{id}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_create_push_template_request_dto, :json)
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

      res = ::StackOne::Operations::MarketingUpdatePushTemplateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateResult)
          res.create_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end
  end
end
