# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class AtsMoveApplicationRequestDto
        extend T::Sig
        include Crystalline::MetadataFields

        # Unique identifier of the application stage.
        field :interview_stage_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('interview_stage_id') } }
        # Value to pass through to the provider
        field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }


        sig { params(interview_stage_id: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object])).void }
        def initialize(interview_stage_id: nil, passthrough: nil)
          @interview_stage_id = interview_stage_id
          @passthrough = passthrough
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @interview_stage_id == other.interview_stage_id
          return false unless @passthrough == other.passthrough
          true
        end
      end
    end
  end
end
