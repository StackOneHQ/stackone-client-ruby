# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class LinkedAccountMeta < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :category, ::StackOne::Shared::LinkedAccountMetaCategory, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('category'), 'decoder': Utils.enum_from_string(::StackOne::Shared::LinkedAccountMetaCategory, false) } }

      field :models, T::Hash[Symbol, ::Object], { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('models') } }

      field :provider, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('provider') } }


      sig { params(category: ::StackOne::Shared::LinkedAccountMetaCategory, models: T::Hash[Symbol, ::Object], provider: ::String).void }
      def initialize(category: nil, models: nil, provider: nil)
        @category = category
        @models = models
        @provider = provider
      end
    end
  end
end
