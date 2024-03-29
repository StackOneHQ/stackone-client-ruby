# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class JobPostingContent < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :html, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('html') } }

      field :plain, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('plain') } }


      sig { params(html: T.nilable(::String), plain: T.nilable(::String)).void }
      def initialize(html: nil, plain: nil)
        @html = html
        @plain = plain
      end
    end
  end
end
