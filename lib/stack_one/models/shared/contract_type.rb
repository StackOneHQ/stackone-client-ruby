# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # The employment work schedule type
      class ContractType
        extend T::Sig
        include Crystalline::MetadataFields

        # The employment work schedule type (e.g., full-time, part-time)
        field :contract_type, T.nilable(Models::Shared::EmploymentSchemasContractType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('contract_type') } }
        # Unique identifier
        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
        # The label of the employment type
        field :label, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('label') } }
        # Provider's unique identifier
        field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }


        sig { params(contract_type: T.nilable(Models::Shared::EmploymentSchemasContractType), id: T.nilable(::String), label: T.nilable(::String), remote_id: T.nilable(::String)).void }
        def initialize(contract_type: nil, id: nil, label: nil, remote_id: nil)
          @contract_type = contract_type
          @id = id
          @label = label
          @remote_id = remote_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @contract_type == other.contract_type
          return false unless @id == other.id
          return false unless @label == other.label
          return false unless @remote_id == other.remote_id
          true
        end
      end
    end
  end
end
