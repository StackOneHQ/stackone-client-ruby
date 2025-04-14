# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Operations
    

      class CrmListContactsResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String

        field :headers, T::Hash[Symbol, T::Array[::String]]
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # The list of contacts was retrieved.
        field :contacts_paginated, T.nilable(Models::Shared::ContactsPaginated)


        sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, contacts_paginated: T.nilable(Models::Shared::ContactsPaginated)).void }
        def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, contacts_paginated: nil)
          @content_type = content_type
          @headers = headers
          @raw_response = raw_response
          @status_code = status_code
          @contacts_paginated = contacts_paginated
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @headers == other.headers
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @contacts_paginated == other.contacts_paginated
          true
        end
      end
    end
  end
end
