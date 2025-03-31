# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The advanced log request data
    class Request < ::Crystalline::FieldAugmented
      extend T::Sig


      field :body, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('body') } }

      field :headers, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('headers') } }
      # The request ID
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The request method
      field :method, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('method') } }
      # The request URL data
      field :url, T.nilable(::StackOne::Shared::Url), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('url') } }


      sig { params(body: T.nilable(::Object), headers: T.nilable(T::Hash[Symbol, ::Object]), id: T.nilable(::String), method: T.nilable(::String), url: T.nilable(::StackOne::Shared::Url)).void }
      def initialize(body: nil, headers: nil, id: nil, method: nil, url: nil)
        @body = body
        @headers = headers
        @id = id
        @method = method
        @url = url
      end
    end
  end
end
