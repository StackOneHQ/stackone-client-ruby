# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # The employee avatar
    class HrisCreateEmployeeRequestDtoAvatar < ::Crystalline::FieldAugmented
      extend T::Sig


      field :base64, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('base64') } }

      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('url') } }


      sig { params(base64: T.nilable(::String), url: T.nilable(::String)).void }
      def initialize(base64: nil, url: nil)
        @base64 = base64
        @url = url
      end
    end
  end
end
