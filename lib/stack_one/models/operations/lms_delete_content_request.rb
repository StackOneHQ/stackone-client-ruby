# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Operations
  

    class LmsDeleteContentRequest < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # The account identifier
      field :x_account_id, ::String, { 'header': { 'field_name': 'x-account-id', 'style': 'simple', 'explode': false } }


      sig { params(id: ::String, x_account_id: ::String).void }
      def initialize(id: nil, x_account_id: nil)
        @id = id
        @x_account_id = x_account_id
      end
    end
  end
end