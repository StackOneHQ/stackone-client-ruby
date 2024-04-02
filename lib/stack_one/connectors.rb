# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module StackOne
  extend T::Sig
  class Connectors
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(provider: ::String, include: T.nilable(::String)).returns(::StackOne::Operations::StackoneGetConnectorMetaResponse) }
    def get_connector_meta(provider, include = nil)
      # get_connector_meta - Get Connector Meta information for the given provider key
      request = ::StackOne::Operations::StackoneGetConnectorMetaRequest.new(
        
        provider: provider,
        include: include
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::StackOne::Operations::StackoneGetConnectorMetaRequest,
        base_url,
        '/connectors/meta/{provider}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::StackOne::Operations::StackoneGetConnectorMetaRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::StackoneGetConnectorMetaResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::StackOne::Shared::ConnectorsMeta)
          res.connectors_meta = out
        end
      elsif [400, 403, 404, 429, 500, 501].include?(r.status)
      end
      res
    end


    sig { params(include: T.nilable(::String)).returns(::StackOne::Operations::StackoneListConnectorsMetaResponse) }
    def list_connectors_meta(include = nil)
      # list_connectors_meta - List Connectors Meta Information for all providers
      request = ::StackOne::Operations::StackoneListConnectorsMetaRequest.new(
        
        include: include
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/connectors/meta"
      headers = {}
      query_params = Utils.get_query_params(::StackOne::Operations::StackoneListConnectorsMetaRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::StackOne::Operations::StackoneListConnectorsMetaResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::StackOne::Shared::ConnectorsMeta])
          res.connectors_metas = out
        end
      elsif [400, 403, 429, 500, 501].include?(r.status)
      end
      res
    end
  end
end