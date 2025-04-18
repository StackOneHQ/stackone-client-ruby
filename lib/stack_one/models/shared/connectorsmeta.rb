# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class ConnectorsMeta
        extend T::Sig
        include Crystalline::MetadataFields

        # The provider service category
        field :category, Models::Shared::ConnectorsMetaCategory, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('category'), 'decoder': Utils.enum_from_string(Models::Shared::ConnectorsMetaCategory, false) } }

        field :models, T::Hash[Symbol, ::Object], { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('models') } }
        # The provider key
        field :provider, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('provider') } }
        # The provider human-readable label
        field :provider_name, ::String, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('provider_name') } }
        # Whether this provider has been enabled on the integrations page for the current project
        field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('active') } }
        # Resources for this provider, such as image assets
        field :resources, T.nilable(Models::Shared::Resources), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('resources') } }


        sig { params(category: Models::Shared::ConnectorsMetaCategory, models: T::Hash[Symbol, ::Object], provider: ::String, provider_name: ::String, active: T.nilable(T::Boolean), resources: T.nilable(Models::Shared::Resources)).void }
        def initialize(category: nil, models: nil, provider: nil, provider_name: nil, active: nil, resources: nil)
          @category = category
          @models = models
          @provider = provider
          @provider_name = provider_name
          @active = active
          @resources = resources
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @category == other.category
          return false unless @models == other.models
          return false unless @provider == other.provider
          return false unless @provider_name == other.provider_name
          return false unless @active == other.active
          return false unless @resources == other.resources
          true
        end
      end
    end
  end
end
