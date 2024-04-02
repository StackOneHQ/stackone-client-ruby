# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  
    # Resources for this provider, such as image assets
    class Resources < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # Image assets for this provider
      field :images, T.nilable(::StackOne::Shared::Images), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('images') } }


      sig { params(images: T.nilable(::StackOne::Shared::Images)).void }
      def initialize(images: nil)
        @images = images
      end
    end
  end
end
