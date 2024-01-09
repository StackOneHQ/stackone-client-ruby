# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'
module StackOne
  extend T::Sig

  class StackOne
    extend T::Sig

    attr_accessor :accounts, :connect_sessions, :connectors, :proxy

    attr_accessor :security, :language, :sdk_version, :gen_version

    sig do
      params(security: T.nilable(Shared::Security),
             server_idx: Integer,
             server_url: String,
             url_params: T::Hash[Symbol, String],
             client: Faraday::Request).void
    end
    def initialize(security: nil,
                   server_idx: nil,
                   server_url: nil,
                   url_params: nil,
                   client: nil)

      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [Shared::Security] security The security details required for authentication
      # @param [Integer] server_idx The index of the server to use for all operations
      # @param [String] server_url The server URL to use for all operations
      # @param [Hash<Symbol, String>] url_params Parameters to optionally template the server URL with
      # @param [Faraday::Request] client The faraday HTTP client to use for all operations

      if client.nil?
        client = Faraday.new(request: {
                          params_encoder: Faraday::FlatParamsEncoder
                        }) do |f|
          f.request :multipart, {}
          # f.response :logger
        end
      end

      if !server_url.nil?
        if !url_params.nil?
          server_url = Utils.template_url(server_url, url_params)
        end
      end
      server_idx = 0 if server_idx.nil?

      

      @sdk_configuration = SDKConfiguration.new(client, security, server_url, server_idx)
      init_sdks
    end

    sig { params(params: T.nilable(T::Hash[Symbol, String])).void }
    def config_server_url(params)
      if !params.nil?
        @server_url = Utils.template_url(@server_url, params)
      end
      init_sdks
    end

    sig { params(security: Shared::Security).void }
    def config_security(security)
      @security = security
      @sdk_configuration.security = security
    end

    sig { void }
    def init_sdks
      @accounts = Accounts.new(@sdk_configuration)
      @connect_sessions = ConnectSessions.new(@sdk_configuration)
      @connectors = Connectors.new(@sdk_configuration)
      @proxy = Proxy.new(@sdk_configuration)
    end
  end
end
