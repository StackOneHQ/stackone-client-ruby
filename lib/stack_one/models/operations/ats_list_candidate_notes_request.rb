# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class AtsListCandidateNotesRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }
      # The comma separated list of fields that will be returned in the response (if empty, all fields are returned)
      field :fields_, T.nilable(::String), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }
      # Filter parameters that allow greater customisation of the list response
      field :filter, T.nilable(::StackOne::Operations::AtsListCandidateNotesQueryParamFilter), { 'query_param': { 'field_name': 'filter', 'style': 'deepObject', 'explode': true } }
      # The unified cursor
      field :next_, T.nilable(::String), { 'query_param': { 'field_name': 'next', 'style': 'form', 'explode': true } }
      # The page number of the results to fetch
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :page, T.nilable(::String), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # The number of results per page
      field :page_size, T.nilable(::String), { 'query_param': { 'field_name': 'page_size', 'style': 'form', 'explode': true } }
      # Query parameters that can be used to pass through parameters to the underlying provider request by surrounding them with 'proxy' key
      field :proxy, T.nilable(T::Hash[Symbol, ::Object]), { 'query_param': { 'field_name': 'proxy', 'style': 'deepObject', 'explode': true } }
      # Indicates that the raw request result is returned
      field :raw, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'raw', 'style': 'form', 'explode': true } }
      # The sync token to select the only updated results
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :sync_token, T.nilable(::String), { 'query_param': { 'field_name': 'sync_token', 'style': 'form', 'explode': true } }
      # Use a string with a date to only select results updated after that given date
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after', 'style': 'form', 'explode': true } }


      sig { params(id: ::String, x_account_id: ::String, fields_: T.nilable(::String), filter: T.nilable(::StackOne::Operations::AtsListCandidateNotesQueryParamFilter), next_: T.nilable(::String), page: T.nilable(::String), page_size: T.nilable(::String), proxy: T.nilable(T::Hash[Symbol, ::Object]), raw: T.nilable(T::Boolean), sync_token: T.nilable(::String), updated_after: T.nilable(::String)).void }
      def initialize(id: nil, x_account_id: nil, fields_: nil, filter: nil, next_: nil, page: nil, page_size: nil, proxy: nil, raw: nil, sync_token: nil, updated_after: nil)
        @id = id
        @x_account_id = x_account_id
        @fields_ = fields_
        @filter = filter
        @next_ = next_
        @page = page
        @page_size = page_size
        @proxy = proxy
        @raw = raw
        @sync_token = sync_token
        @updated_after = updated_after
      end
    end
  end
end
