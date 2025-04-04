# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class SocialLink < ::Crystalline::FieldAugmented
      extend T::Sig

      # Type of the social link
      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
      # URL of the social link
      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('url') } }


      sig { params(type: T.nilable(::String), url: T.nilable(::String)).void }
      def initialize(type: nil, url: nil)
        @type = type
        @url = url
      end
    end
  end
end
