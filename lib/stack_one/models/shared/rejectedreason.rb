# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class RejectedReason < ::Crystalline::FieldAugmented
      extend T::Sig

      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The label of the rejected reason.
      field :label, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('label') } }

      field :rejected_reason_type, T.nilable(::StackOne::Shared::RejectedReasonType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('rejected_reason_type') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The string type of the rejected reason.
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
      # Custom Unified Fields configured in your StackOne project
      field :unified_custom_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('unified_custom_fields') } }


      sig { params(id: T.nilable(::String), label: T.nilable(::String), rejected_reason_type: T.nilable(::StackOne::Shared::RejectedReasonType), remote_id: T.nilable(::String), type: T.nilable(::String), unified_custom_fields: T.nilable(T::Hash[Symbol, ::Object])).void }
      def initialize(id: nil, label: nil, rejected_reason_type: nil, remote_id: nil, type: nil, unified_custom_fields: nil)
        @id = id
        @label = label
        @rejected_reason_type = rejected_reason_type
        @remote_id = remote_id
        @type = type
        @unified_custom_fields = unified_custom_fields
      end
    end
  end
end
