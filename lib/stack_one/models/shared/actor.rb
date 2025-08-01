# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # The actor who made the change
      class Actor
        extend T::Sig
        include Crystalline::MetadataFields

        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


        sig { params(id: T.nilable(::String), remote_id: T.nilable(::String)).void }
        def initialize(id: nil, remote_id: nil)
          @id = id
          @remote_id = remote_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          return false unless @remote_id == other.remote_id
          true
        end
      end
    end
  end
end
