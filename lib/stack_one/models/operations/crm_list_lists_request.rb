# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    

      class CrmListListsRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # The account identifier
        field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }
        # The comma separated list of fields that will be returned in the response (if empty, all fields are returned)
        field :fields_, T.nilable(::String), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }
        # Filter parameters that allow greater customisation of the list response
        field :filter, T.nilable(Models::Operations::CrmListListsQueryParamFilter), { 'query_param': { 'field_name': 'filter', 'style': 'deepObject', 'explode': true } }
        # The unified cursor
        field :next_, T.nilable(::String), { 'query_param': { 'field_name': 'next', 'style': 'form', 'explode': true } }
        # The page number of the results to fetch
        # 
        # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
        field :page, T.nilable(::String), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
        # The number of results per page (default value is 25)
        field :page_size, T.nilable(::String), { 'query_param': { 'field_name': 'page_size', 'style': 'form', 'explode': true } }
        # Query parameters that can be used to pass through parameters to the underlying provider request by surrounding them with 'proxy' key
        field :proxy, T.nilable(T::Hash[Symbol, ::Object]), { 'query_param': { 'field_name': 'proxy', 'style': 'deepObject', 'explode': true } }
        # Indicates that the raw request result should be returned in addition to the mapped result (default value is false)
        field :raw, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'raw', 'style': 'form', 'explode': true } }
        # Use a string with a date to only select results updated after that given date
        # 
        # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
        field :updated_after, T.nilable(::String), { 'query_param': { 'field_name': 'updated_after', 'style': 'form', 'explode': true } }


        sig { params(x_account_id: ::String, fields_: T.nilable(::String), filter: T.nilable(Models::Operations::CrmListListsQueryParamFilter), next_: T.nilable(::String), page: T.nilable(::String), page_size: T.nilable(::String), proxy: T.nilable(T::Hash[Symbol, ::Object]), raw: T.nilable(T::Boolean), updated_after: T.nilable(::String)).void }
        def initialize(x_account_id: nil, fields_: nil, filter: nil, next_: nil, page: nil, page_size: nil, proxy: nil, raw: nil, updated_after: nil)
          @x_account_id = x_account_id
          @fields_ = fields_
          @filter = filter
          @next_ = next_
          @page = page
          @page_size = page_size
          @proxy = proxy
          @raw = raw
          @updated_after = updated_after
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @x_account_id == other.x_account_id
          return false unless @fields_ == other.fields_
          return false unless @filter == other.filter
          return false unless @next_ == other.next_
          return false unless @page == other.page
          return false unless @page_size == other.page_size
          return false unless @proxy == other.proxy
          return false unless @raw == other.raw
          return false unless @updated_after == other.updated_after
          true
        end
      end
    end
  end
end
