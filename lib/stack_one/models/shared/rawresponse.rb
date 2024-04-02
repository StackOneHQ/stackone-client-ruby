# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class RawResponse < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :method, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('method') } }

      field :url, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('url') } }

      field :body, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('body') } }

      field :response, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('response') } }


      sig { params(method: ::String, url: ::String, body: T.nilable(::String), response: T.nilable(T::Hash[Symbol, ::Object])).void }
      def initialize(method: nil, url: nil, body: nil, response: nil)
        @method = method
        @url = url
        @body = body
        @response = response
      end
    end
  end
end
