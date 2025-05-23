# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # MarketingCreateContentBlocksRequestDtoValue - The type of the content blocks.
      class MarketingCreateContentBlocksRequestDtoValue < T::Enum
        enums do
          TEXT = new('text')
          HTML = new('html')
          IMAGE = new('image')
          CODE_SNIPPET = new('code-snippet')
          UNMAPPED_VALUE = new('unmapped_value')
        end
      end
    end
  end
end
