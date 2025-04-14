# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    

      class EmailMessagesMessageContent
        extend T::Sig
        include Crystalline::MetadataFields


        field :body, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('body') } }

        field :from, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('from') } }

        field :preheader, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('preheader') } }

        field :reply_to, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('reply-to') } }

        field :subject, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('subject') } }


        sig { params(body: T.nilable(::String), from: T.nilable(::String), preheader: T.nilable(::String), reply_to: T.nilable(::String), subject: T.nilable(::String)).void }
        def initialize(body: nil, from: nil, preheader: nil, reply_to: nil, subject: nil)
          @body = body
          @from = from
          @preheader = preheader
          @reply_to = reply_to
          @subject = subject
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @body == other.body
          return false unless @from == other.from
          return false unless @preheader == other.preheader
          return false unless @reply_to == other.reply_to
          return false unless @subject == other.subject
          true
        end
      end
    end
  end
end
