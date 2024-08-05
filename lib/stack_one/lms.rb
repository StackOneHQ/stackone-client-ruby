# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module StackOne
  extend T::Sig
  class Lms
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(lms_create_completion_request_dto: ::StackOne::Shared::LmsCreateCompletionRequestDto, x_account_id: ::String).returns(::StackOne::Operations::LmsCreateCompletionResponse) }
    def create_completion(lms_create_completion_request_dto, x_account_id)
      # create_completion - Create Completion
      request = ::StackOne::Operations::LmsCreateCompletionRequest.new(
        
        lms_create_completion_request_dto: lms_create_completion_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/lms/completions"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :lms_create_completion_request_dto, :json)
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

      res = ::StackOne::Operations::LmsCreateCompletionResponse.new(
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


    sig { params(lms_create_content_request_dto: ::StackOne::Shared::LmsCreateContentRequestDto, x_account_id: ::String).returns(::StackOne::Operations::LmsCreateContentResponse) }
    def create_content(lms_create_content_request_dto, x_account_id)
      # create_content - Create Content
      request = ::StackOne::Operations::LmsCreateContentRequest.new(
        
        lms_create_content_request_dto: lms_create_content_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/lms/content"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :lms_create_content_request_dto, :json)
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

      res = ::StackOne::Operations::LmsCreateContentResponse.new(
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


    sig { params(request: T.nilable(::StackOne::Operations::LmsGetCategoryRequest)).returns(::StackOne::Operations::LmsGetCategoryResponse) }
    def get_category(request)
      # get_category - Get Category
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::LmsGetCategoryRequest,
        base_url,
        '/unified/lms/categories/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::LmsGetCategoryRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::LmsGetCategoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CategoryResult)
          res.category_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::LmsGetCompletionRequest)).returns(::StackOne::Operations::LmsGetCompletionResponse) }
    def get_completion(request)
      # get_completion - Get Completion
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::LmsGetCompletionRequest,
        base_url,
        '/unified/lms/completions/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::LmsGetCompletionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::LmsGetCompletionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CompletionResult)
          res.completion_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::LmsGetContentRequest)).returns(::StackOne::Operations::LmsGetContentResponse) }
    def get_content(request)
      # get_content - Get Content
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::LmsGetContentRequest,
        base_url,
        '/unified/lms/content/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::LmsGetContentRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::LmsGetContentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::ContentResult)
          res.content_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::LmsGetUserRequest)).returns(::StackOne::Operations::LmsGetUserResponse) }
    def get_user(request)
      # get_user - Get User
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::LmsGetUserRequest,
        base_url,
        '/unified/lms/users/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::LmsGetUserRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::LmsGetUserResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::UserResult)
          res.user_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::LmsListCategoriesRequest)).returns(::StackOne::Operations::LmsListCategoriesResponse) }
    def list_categories(request)
      # list_categories - List Categories
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/lms/categories"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::LmsListCategoriesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::LmsListCategoriesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CategoriesPaginated)
          res.categories_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::LmsListContentRequest)).returns(::StackOne::Operations::LmsListContentResponse) }
    def list_content(request)
      # list_content - List Content
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/lms/content"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::LmsListContentRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::LmsListContentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::ContentPaginated)
          res.content_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::LmsListUsersRequest)).returns(::StackOne::Operations::LmsListUsersResponse) }
    def list_users(request)
      # list_users - List Users
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/lms/users"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::LmsListUsersRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::LmsListUsersResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::UsersPaginated)
          res.users_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(lms_create_content_request_dto: ::StackOne::Shared::LmsCreateContentRequestDto, id: ::String, x_account_id: ::String).returns(::StackOne::Operations::LmsUpdateContentResponse) }
    def update_content(lms_create_content_request_dto, id, x_account_id)
      # update_content - Update Content
      request = ::StackOne::Operations::LmsUpdateContentRequest.new(
        
        lms_create_content_request_dto: lms_create_content_request_dto,
        id: id,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::LmsUpdateContentRequest,
        base_url,
        '/unified/lms/content/{id}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :lms_create_content_request_dto, :json)
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

      res = ::StackOne::Operations::LmsUpdateContentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::UpdateResult)
          res.update_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(lms_upsert_content_request_dto: ::StackOne::Shared::LmsUpsertContentRequestDto, x_account_id: ::String).returns(::StackOne::Operations::LmsUpsertContentResponse) }
    def upsert_content(lms_upsert_content_request_dto, x_account_id)
      # upsert_content - Upsert Content
      request = ::StackOne::Operations::LmsUpsertContentRequest.new(
        
        lms_upsert_content_request_dto: lms_upsert_content_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/lms/content"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :lms_upsert_content_request_dto, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
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

      res = ::StackOne::Operations::LmsUpsertContentResponse.new(
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
  end
end
