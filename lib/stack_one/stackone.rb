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

  class StackOne
    extend T::Sig

    attr_accessor :accounts, :connect_sessions, :connectors, :ats, :crm, :hris, :iam, :lms, :marketing, :proxy

    sig do
      params(
        client: T.nilable(Faraday::Connection),
        retry_config: T.nilable(::StackOne::Utils::RetryConfig),
        security: T.nilable(::StackOne::Shared::Security),
        security_source: T.nilable(T.proc.returns(::StackOne::Shared::Security)),
        server_idx: T.nilable(Integer),
        server_url: T.nilable(String),
        url_params: T.nilable(T::Hash[Symbol, String])
      ).void
    end
    def initialize(client: nil, retry_config: nil, security: nil, security_source: nil, server_idx: nil, server_url: nil, url_params: nil)
      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [T.nilable(Faraday::Connection)] client The faraday HTTP client to use for all operations
      # @param [T.nilable(::StackOne::Utils::RetryConfig)] retry_config The retry configuration to use for all operations
      # @param [T.nilable(::StackOne::Shared::Security)] security: The security details required for authentication
      # @param [T.proc.returns(T.nilable(::StackOne::Shared::Security))] security_source: A function that returns security details required for authentication
      # @param [T.nilable(::Integer)] server_idx The index of the server to use for all operations
      # @param [T.nilable(::String)] server_url The server URL to use for all operations
      # @param [T.nilable(::Hash<::Symbol, ::String>)] url_params Parameters to optionally template the server URL with

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
      @sdk_configuration = SDKConfiguration.new(
        client,
        retry_config,
        security,
        security_source,
        server_url,
        server_idx
      )
      init_sdks
    end

    sig { void }
    def init_sdks
      @accounts = Accounts.new(@sdk_configuration)
      @connect_sessions = ConnectSessions.new(@sdk_configuration)
      @connectors = Connectors.new(@sdk_configuration)
      @ats = Ats.new(@sdk_configuration)
      @crm = Crm.new(@sdk_configuration)
      @hris = Hris.new(@sdk_configuration)
      @iam = Iam.new(@sdk_configuration)
      @lms = Lms.new(@sdk_configuration)
      @marketing = Marketing.new(@sdk_configuration)
      @proxy = Proxy.new(@sdk_configuration)
    end
  end
end
