# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class TimeOffPolicies
        extend T::Sig
        include Crystalline::MetadataFields

        # The created_at date of this policy
        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
        # The description of this policy
        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }
        # The duration unit of the current policy
        field :duration_unit, T.nilable(Models::Shared::DurationUnit), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('duration_unit') } }
        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # The name of this policy
        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }

        field :reasons, T.nilable(T::Array[Models::Shared::Reason]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('reasons') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
        # The type of this policy
        field :type, T.nilable(Models::Shared::TimeOffPoliciesType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('type') } }
        # The updated_at date of this policy
        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


        sig { params(created_at: T.nilable(::DateTime), description: T.nilable(::String), duration_unit: T.nilable(Models::Shared::DurationUnit), id: T.nilable(::String), name: T.nilable(::String), reasons: T.nilable(T::Array[Models::Shared::Reason]), remote_id: T.nilable(::String), type: T.nilable(Models::Shared::TimeOffPoliciesType), updated_at: T.nilable(::DateTime)).void }
        def initialize(created_at: nil, description: nil, duration_unit: nil, id: nil, name: nil, reasons: nil, remote_id: nil, type: nil, updated_at: nil)
          @created_at = created_at
          @description = description
          @duration_unit = duration_unit
          @id = id
          @name = name
          @reasons = reasons
          @remote_id = remote_id
          @type = type
          @updated_at = updated_at
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @created_at == other.created_at
          return false unless @description == other.description
          return false unless @duration_unit == other.duration_unit
          return false unless @id == other.id
          return false unless @name == other.name
          return false unless @reasons == other.reasons
          return false unless @remote_id == other.remote_id
          return false unless @type == other.type
          return false unless @updated_at == other.updated_at
          true
        end
      end
    end
  end
end
