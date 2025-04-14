# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class SmsMessagesMessageContent
        extend T::Sig
        include Crystalline::MetadataFields


        field :body, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('body') } }

        field :from, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('from') } }


        sig { params(body: T.nilable(::String), from: T.nilable(::String)).void }
        def initialize(body: nil, from: nil)
          @body = body
          @from = from
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @body == other.body
          return false unless @from == other.from
          true
        end
      end
    end
  end
end
