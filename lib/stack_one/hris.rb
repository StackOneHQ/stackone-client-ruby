# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module StackOne
  extend T::Sig
  class Hris
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(hris_create_employee_request_dto: ::StackOne::Shared::HrisCreateEmployeeRequestDto, x_account_id: ::String).returns(Utils::FieldAugmented) }
    def create_employee(hris_create_employee_request_dto, x_account_id)
      # create_employee - Creates an employee
      request = ::StackOne::Operations::HrisCreateEmployeeRequest.new(
        
        hris_create_employee_request_dto: hris_create_employee_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/hris/employees"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_create_employee_request_dto, :json)
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

      res = ::StackOne::Operations::HrisCreateEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateEmployeeResult)
          res.create_employee_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(hris_create_time_off_request_dto: ::StackOne::Shared::HrisCreateTimeOffRequestDto, id: ::String, x_account_id: ::String).returns(Utils::FieldAugmented) }
    def create_employee_time_off_request(hris_create_time_off_request_dto, id, x_account_id)
      # create_employee_time_off_request - Create Employee Time Off Request
      request = ::StackOne::Operations::HrisCreateEmployeeTimeOffRequestRequest.new(
        
        hris_create_time_off_request_dto: hris_create_time_off_request_dto,
        id: id,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisCreateEmployeeTimeOffRequestRequest,
        base_url,
        '/unified/hris/employees/{id}/time_off',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_create_time_off_request_dto, :json)
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

      res = ::StackOne::Operations::HrisCreateEmployeeTimeOffRequestResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateTimeOffResult)
          res.create_time_off_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(hris_create_time_off_request_dto: ::StackOne::Shared::HrisCreateTimeOffRequestDto, x_account_id: ::String).returns(Utils::FieldAugmented) }
    def create_time_off_request(hris_create_time_off_request_dto, x_account_id)
      # create_time_off_request - Creates a time off request
      request = ::StackOne::Operations::HrisCreateTimeOffRequestRequest.new(
        
        hris_create_time_off_request_dto: hris_create_time_off_request_dto,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/hris/time_off"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_create_time_off_request_dto, :json)
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

      res = ::StackOne::Operations::HrisCreateTimeOffRequestResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateTimeOffResult)
          res.create_time_off_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisGetBenefitRequest)).returns(Utils::FieldAugmented) }
    def get_benefit(request)
      # get_benefit - Get Benefit
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisGetBenefitRequest,
        base_url,
        '/unified/hris/benefits/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisGetBenefitRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisGetBenefitResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::HRISBenefitResult)
          res.hris_benefit_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisGetCompanyRequest)).returns(Utils::FieldAugmented) }
    def get_company(request)
      # get_company - Get Company
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisGetCompanyRequest,
        base_url,
        '/unified/hris/companies/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisGetCompanyRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisGetCompanyResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CompanyResult)
          res.company_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisGetEmployeeRequest)).returns(Utils::FieldAugmented) }
    def get_employee(request)
      # get_employee - Get Employee
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisGetEmployeeRequest,
        base_url,
        '/unified/hris/employees/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisGetEmployeeRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisGetEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::EmployeeResult)
          res.employee_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisGetEmployeeDocumentRequest)).returns(Utils::FieldAugmented) }
    def get_employee_document(request)
      # get_employee_document - Get Employee Document
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisGetEmployeeDocumentRequest,
        base_url,
        '/unified/hris/employees/{id}/documents/{subResourceId}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisGetEmployeeDocumentRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisGetEmployeeDocumentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::DocumentResult)
          res.document_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisGetEmployeesTimeOffRequestRequest)).returns(Utils::FieldAugmented) }
    def get_employees_time_off_request(request)
      # get_employees_time_off_request - Get Employees Time Off Request
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisGetEmployeesTimeOffRequestRequest,
        base_url,
        '/unified/hris/employees/{id}/time_off/{subResourceId}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisGetEmployeesTimeOffRequestRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisGetEmployeesTimeOffRequestResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TimeOffResult)
          res.time_off_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisGetEmploymentRequest)).returns(Utils::FieldAugmented) }
    def get_employment(request)
      # get_employment - Get Employment
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisGetEmploymentRequest,
        base_url,
        '/unified/hris/employments/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisGetEmploymentRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisGetEmploymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::EmploymentResult)
          res.employment_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisGetLocationRequest)).returns(Utils::FieldAugmented) }
    def get_location(request)
      # get_location - Get Location
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisGetLocationRequest,
        base_url,
        '/unified/hris/locations/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisGetLocationRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisGetLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::HRISLocationResult)
          res.hris_location_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisGetTimeOffRequestRequest)).returns(Utils::FieldAugmented) }
    def get_time_off_request(request)
      # get_time_off_request - Get time off request
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisGetTimeOffRequestRequest,
        base_url,
        '/unified/hris/time_off/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisGetTimeOffRequestRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisGetTimeOffRequestResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TimeOffResult)
          res.time_off_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisListBenefitsRequest)).returns(Utils::FieldAugmented) }
    def list_benefits(request)
      # list_benefits - List benefits
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/hris/benefits"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisListBenefitsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisListBenefitsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::HRISBenefitsPaginated)
          res.hris_benefits_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisListCompaniesRequest)).returns(Utils::FieldAugmented) }
    def list_companies(request)
      # list_companies - List Companies
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/hris/companies"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisListCompaniesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisListCompaniesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CompaniesPaginated)
          res.companies_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisListEmployeeDocumentsRequest)).returns(Utils::FieldAugmented) }
    def list_employee_documents(request)
      # list_employee_documents - List Employee Documents
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisListEmployeeDocumentsRequest,
        base_url,
        '/unified/hris/employees/{id}/documents',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisListEmployeeDocumentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisListEmployeeDocumentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::DocumentsPaginated)
          res.documents_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisListEmployeeTimeOffRequestsRequest)).returns(Utils::FieldAugmented) }
    def list_employee_time_off_requests(request)
      # list_employee_time_off_requests - List Employee Time Off Requests
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisListEmployeeTimeOffRequestsRequest,
        base_url,
        '/unified/hris/employees/{id}/time_off',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisListEmployeeTimeOffRequestsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisListEmployeeTimeOffRequestsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TimeOffPaginated)
          res.time_off_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisListEmployeesRequest)).returns(Utils::FieldAugmented) }
    def list_employees(request)
      # list_employees - List Employees
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/hris/employees"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisListEmployeesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisListEmployeesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::EmployeesPaginated)
          res.employees_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisListEmploymentsRequest)).returns(Utils::FieldAugmented) }
    def list_employments(request)
      # list_employments - List Employments
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/hris/employments"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisListEmploymentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisListEmploymentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::EmploymentsPaginated)
          res.employments_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisListLocationsRequest)).returns(Utils::FieldAugmented) }
    def list_locations(request)
      # list_locations - List locations
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/hris/locations"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisListLocationsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisListLocationsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::HRISLocationsPaginated)
          res.hris_locations_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(request: T.nilable(::StackOne::Operations::HrisListTimeOffRequestsRequest)).returns(Utils::FieldAugmented) }
    def list_time_off_requests(request)
      # list_time_off_requests - List time off requests
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/hris/time_off"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::StackOne::Operations::HrisListTimeOffRequestsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::HrisListTimeOffRequestsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::TimeOffPaginated)
          res.time_off_paginated = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(hris_create_employee_request_dto: ::StackOne::Shared::HrisCreateEmployeeRequestDto, id: ::String, x_account_id: ::String).returns(Utils::FieldAugmented) }
    def update_employee(hris_create_employee_request_dto, id, x_account_id)
      # update_employee - Updates an employee
      request = ::StackOne::Operations::HrisUpdateEmployeeRequest.new(
        
        hris_create_employee_request_dto: hris_create_employee_request_dto,
        id: id,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisUpdateEmployeeRequest,
        base_url,
        '/unified/hris/employees/{id}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_create_employee_request_dto, :json)
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

      res = ::StackOne::Operations::HrisUpdateEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateEmployeeResult)
          res.create_employee_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(hris_create_time_off_request_dto: ::StackOne::Shared::HrisCreateTimeOffRequestDto, id: ::String, x_account_id: ::String).returns(Utils::FieldAugmented) }
    def update_time_off_request(hris_create_time_off_request_dto, id, x_account_id)
      # update_time_off_request - Update time off request
      request = ::StackOne::Operations::HrisUpdateTimeOffRequestRequest.new(
        
        hris_create_time_off_request_dto: hris_create_time_off_request_dto,
        id: id,
        x_account_id: x_account_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::HrisUpdateTimeOffRequestRequest,
        base_url,
        '/unified/hris/time_off/{id}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_create_time_off_request_dto, :json)
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

      res = ::StackOne::Operations::HrisUpdateTimeOffRequestResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::CreateTimeOffResult)
          res.create_time_off_result = out
        end
      elsif [400, 403, 412, 429, 500, 501].include?(r.status)
      end
      res
    end
  end
end
