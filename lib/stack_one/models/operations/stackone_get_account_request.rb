# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class StackoneGetAccountRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :expand_info, ::String, { 'query_param': { 'field_name': 'expand_info', 'style': 'form', 'explode': true } }

      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }


      sig { params(expand_info: ::String, id: ::String).void }
      def initialize(expand_info: nil, id: nil)
        @expand_info = expand_info
        @id = id
      end
    end
  end
end
