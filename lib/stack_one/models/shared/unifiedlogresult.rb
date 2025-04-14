# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class UnifiedLogResult
        extend T::Sig
        include Crystalline::MetadataFields


        field :data, Models::Shared::UnifiedLogs, { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('data') } }


        sig { params(data: Models::Shared::UnifiedLogs).void }
        def initialize(data: nil)
          @data = data
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @data == other.data
          true
        end
      end
    end
  end
end
