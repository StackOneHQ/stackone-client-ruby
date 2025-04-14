# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class AtsUpdateApplicationRequestDtoSource
        extend T::Sig
        include Crystalline::MetadataFields

        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # The source of the application
        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }


        sig { params(id: T.nilable(::String), name: T.nilable(::String)).void }
        def initialize(id: nil, name: nil)
          @id = id
          @name = name
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          return false unless @name == other.name
          true
        end
      end
    end
  end
end
