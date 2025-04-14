# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class BackgroundCheckOrderJob
        extend T::Sig
        include Crystalline::MetadataFields

        # Hiring team for the job.
        field :hiring_team, T.nilable(T::Array[Models::Shared::JobHiringTeam]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hiring_team') } }
        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # Value to pass through to the provider
        field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
        # Title of the job
        field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('title') } }


        sig { params(hiring_team: T.nilable(T::Array[Models::Shared::JobHiringTeam]), id: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), remote_id: T.nilable(::String), title: T.nilable(::String)).void }
        def initialize(hiring_team: nil, id: nil, passthrough: nil, remote_id: nil, title: nil)
          @hiring_team = hiring_team
          @id = id
          @passthrough = passthrough
          @remote_id = remote_id
          @title = title
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @hiring_team == other.hiring_team
          return false unless @id == other.id
          return false unless @passthrough == other.passthrough
          return false unless @remote_id == other.remote_id
          return false unless @title == other.title
          true
        end
      end
    end
  end
end
