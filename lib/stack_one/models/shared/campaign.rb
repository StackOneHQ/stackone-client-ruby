# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Campaign < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :archived, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('archived') } }
      # channels of the Campaign
      field :channels, T.nilable(T::Array[::StackOne::Shared::ChannelsEnum]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('channels') } }
      # The created_at date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('description') } }

      field :draft, T.nilable(::Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('draft') } }
      # The first_sent_at date
      field :first_sent_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_sent_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The last_sent_at date
      field :last_sent_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_sent_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :messages, T.nilable(T::Array[::StackOne::Shared::Message]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('messages') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # The schedule type
      field :schedule_type, T.nilable(::StackOne::Shared::ScheduleType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('schedule_type') } }
      # Status of the Campaign
      field :status, T.nilable(::StackOne::Shared::Status), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('status') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('tags') } }
      # The updated_at date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(archived: T.nilable(::Object), channels: T.nilable(T::Array[::StackOne::Shared::ChannelsEnum]), created_at: T.nilable(::DateTime), description: T.nilable(::String), draft: T.nilable(::Object), first_sent_at: T.nilable(::DateTime), id: T.nilable(::String), last_sent_at: T.nilable(::DateTime), messages: T.nilable(T::Array[::StackOne::Shared::Message]), name: T.nilable(::String), remote_id: T.nilable(::String), schedule_type: T.nilable(::StackOne::Shared::ScheduleType), status: T.nilable(::StackOne::Shared::Status), tags: T.nilable(T::Array[::String]), updated_at: T.nilable(::DateTime)).void }
      def initialize(archived: nil, channels: nil, created_at: nil, description: nil, draft: nil, first_sent_at: nil, id: nil, last_sent_at: nil, messages: nil, name: nil, remote_id: nil, schedule_type: nil, status: nil, tags: nil, updated_at: nil)
        @archived = archived
        @channels = channels
        @created_at = created_at
        @description = description
        @draft = draft
        @first_sent_at = first_sent_at
        @id = id
        @last_sent_at = last_sent_at
        @messages = messages
        @name = name
        @remote_id = remote_id
        @schedule_type = schedule_type
        @status = status
        @tags = tags
        @updated_at = updated_at
      end
    end
  end
end
