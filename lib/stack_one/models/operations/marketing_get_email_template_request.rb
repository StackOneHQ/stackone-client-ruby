# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    

      class MarketingGetEmailTemplateRequest
        extend T::Sig
        include Crystalline::MetadataFields


        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
        # The account identifier
        field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }
        # The comma separated list of fields that will be returned in the response (if empty, all fields are returned)
        field :fields_, T.nilable(::String), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }
        # Query parameters that can be used to pass through parameters to the underlying provider request by surrounding them with 'proxy' key
        field :proxy, T.nilable(T::Hash[Symbol, ::Object]), { 'query_param': { 'field_name': 'proxy', 'style': 'deepObject', 'explode': true } }
        # Indicates that the raw request result should be returned in addition to the mapped result (default value is false)
        field :raw, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'raw', 'style': 'form', 'explode': true } }


        sig { params(id: ::String, x_account_id: ::String, fields_: T.nilable(::String), proxy: T.nilable(T::Hash[Symbol, ::Object]), raw: T.nilable(T::Boolean)).void }
        def initialize(id: nil, x_account_id: nil, fields_: nil, proxy: nil, raw: nil)
          @id = id
          @x_account_id = x_account_id
          @fields_ = fields_
          @proxy = proxy
          @raw = raw
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          return false unless @x_account_id == other.x_account_id
          return false unless @fields_ == other.fields_
          return false unless @proxy == other.proxy
          return false unless @raw == other.raw
          true
        end
      end
    end
  end
end
