# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday/retry'
require 'sorbet-runtime'

module StackOne
  module Utils
    class BackoffStrategy
      extend T::Sig

      sig { returns(T.nilable(::Float)) }
      attr_accessor :exponent

      sig { returns(T.nilable(::Integer)) }
      attr_accessor :initial_interval

      sig { returns(T.nilable(::Integer)) }
      attr_accessor :max_elapsed_time

      sig { returns(T.nilable(::Integer)) }
      attr_accessor :max_interval

      sig do
        params(
          exponent: T.nilable(::Float),
          initial_interval: T.nilable(::Integer),
          max_elapsed_time: T.nilable(::Integer),
          max_interval: T.nilable(::Integer)
        ).void
      end
      def initialize(exponent: nil, initial_interval: nil, max_elapsed_time: nil, max_interval: nil)
        @exponent = T.let(exponent, T.nilable(::Float))
        @initial_interval = T.let(initial_interval, T.nilable(::Integer))
        @max_elapsed_time = T.let(max_elapsed_time, T.nilable(::Integer))
        @max_interval = T.let(max_interval, T.nilable(::Integer))
      end
    end

    class RetryConfig
      extend T::Sig

      sig { returns(T.nilable(BackoffStrategy)) }
      attr_accessor :backoff

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :retry_connection_errors

      sig { returns(T.nilable(::String)) }
      attr_accessor :strategy

      sig do
        params(
          backoff: T.nilable(BackoffStrategy),
          retry_connection_errors: T.nilable(T::Boolean),
          strategy: T.nilable(::String)
        ).void
      end
      def initialize(backoff: nil, retry_connection_errors: nil, strategy: nil)
        @backoff = T.let(backoff, T.nilable(BackoffStrategy))
        @retry_connection_errors = T.let(retry_connection_errors, T.nilable(T::Boolean))
        @strategy = T.let(strategy, T.nilable(::String))
      end

      sig { params(initial_time: ::Time).returns(::Hash) }
      def to_faraday_retry_options(initial_time:)
        retry_options = {
          # must overwrite default max of 2 retries and it must be positive
          max: 1_000_000_000,
          # ensure all HTTP methods are retried, especially via retry_if
          methods: [],
        }

        if @retry_connection_errors
          retry_options[:exceptions] = Faraday::Retry::Middleware::DEFAULT_EXCEPTIONS + [Faraday::ConnectionFailed]
        end

        if @strategy == 'backoff' && @backoff
          retry_options[:backoff_factor] = @backoff.exponent unless @backoff.exponent.nil?
          retry_options[:interval] = (@backoff.initial_interval.to_f / 1000) unless @backoff.initial_interval.nil?
          retry_options[:max_interval] = @backoff.max_interval unless @backoff.max_interval.nil?

          unless @backoff.max_elapsed_time.nil?
            stop_time = initial_time + (@backoff.max_elapsed_time.to_f / 1000)
            retry_options[:retry_if] = ->(_env, _exc) { Time.now < stop_time }
          end
        end

        retry_options
      end
    end
  end
end
