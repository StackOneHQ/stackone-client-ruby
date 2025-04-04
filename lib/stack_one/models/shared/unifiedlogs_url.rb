# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The request URL data
    class UnifiedLogsUrl < ::Crystalline::FieldAugmented
      extend T::Sig

      # The request URL hostname
      field :hostname, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hostname') } }
      # The request path
      field :path, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('path') } }
      # The request query parameters
      field :query_params, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('query_params') } }
      # The request URL
      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('url') } }


      sig { params(hostname: T.nilable(::String), path: T.nilable(::String), query_params: T.nilable(T::Hash[Symbol, ::Object]), url: T.nilable(::String)).void }
      def initialize(hostname: nil, path: nil, query_params: nil, url: nil)
        @hostname = hostname
        @path = path
        @query_params = query_params
        @url = url
      end
    end
  end
end
