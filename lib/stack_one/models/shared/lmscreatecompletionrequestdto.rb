# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class LmsCreateCompletionRequestDto < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The date the content was completed
      field :completed_at, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('completed_at') } }
      # The external reference associated with this content
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :content_external_reference, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content_external_reference') } }
      # The content ID associated with this completion
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :content_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('content_id') } }
      # The external ID associated with this completion
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :external_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('external_id') } }
      # The learning_object_external_reference associated with this assignment
      field :learning_object_external_reference, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('learning_object_external_reference') } }
      # The learning_object_id associated with this assignment
      field :learning_object_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('learning_object_id') } }
      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
      # The result of the completion
      field :result, T.nilable(::StackOne::Shared::LmsCreateCompletionRequestDtoResult), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('result') } }


      sig { params(completed_at: T.nilable(::String), content_external_reference: T.nilable(::String), content_id: T.nilable(::String), external_id: T.nilable(::String), learning_object_external_reference: T.nilable(::String), learning_object_id: T.nilable(::String), passthrough: T.nilable(T::Hash[Symbol, ::Object]), result: T.nilable(::StackOne::Shared::LmsCreateCompletionRequestDtoResult)).void }
      def initialize(completed_at: nil, content_external_reference: nil, content_id: nil, external_id: nil, learning_object_external_reference: nil, learning_object_id: nil, passthrough: nil, result: nil)
        @completed_at = completed_at
        @content_external_reference = content_external_reference
        @content_id = content_id
        @external_id = external_id
        @learning_object_external_reference = learning_object_external_reference
        @learning_object_id = learning_object_id
        @passthrough = passthrough
        @result = result
      end
    end
  end
end
