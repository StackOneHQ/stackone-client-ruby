# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class StackoneGetConnectorMetaRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :provider, ::String, { 'path_param': { 'field_name': 'provider', 'style': 'simple', 'explode': false } }
      # The comma separated list of data that will be included in the response
      field :include, T.nilable(::String), { 'query_param': { 'field_name': 'include', 'style': 'form', 'explode': true } }


      sig { params(provider: ::String, include: T.nilable(::String)).void }
      def initialize(provider: nil, include: nil)
        @provider = provider
        @include = include
      end
    end
  end
end
