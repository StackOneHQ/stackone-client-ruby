# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class ConnectSessionAuthenticate
        extend T::Sig
        include Crystalline::MetadataFields

        # The token to authenticate with
        field :token, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('token') } }


        sig { params(token: ::String).void }
        def initialize(token: nil)
          @token = token
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @token == other.token
          true
        end
      end
    end
  end
end
