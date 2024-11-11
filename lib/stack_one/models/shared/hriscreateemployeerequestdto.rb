# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class HrisCreateEmployeeRequestDto < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The employee avatar
      field :avatar, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoAvatar), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('avatar') } }
      # The employee avatar Url
      field :avatar_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('avatar_url') } }
      # Current benefits of the employee
      field :benefits, T.nilable(T::Array[::StackOne::Shared::CreateHRISBenefit]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('benefits') } }
      # The employee birthday
      field :birthday, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('birthday'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The citizenships of the Employee
      field :citizenships, T.nilable(T::Array[::StackOne::Shared::CountryCodeEnum]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('citizenships') } }
      # The employee company name
      field :company_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('company_name') } }
      # The employee custom fields
      field :custom_fields, T.nilable(T::Array[::StackOne::Shared::CustomFields]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('custom_fields') } }
      # The employee date_of_birth
      field :date_of_birth, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('date_of_birth'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee department
      field :department, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('department') } }
      # The employee department id
      field :department_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('department_id') } }
      # The employee display name
      field :display_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('display_name') } }
      # The employment work schedule type (e.g., full-time, part-time)
      field :employment_contract_type, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentContractType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_contract_type') } }
      # The employee employment status
      field :employment_status, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_status') } }
      # The employee employment type
      field :employment_type, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_type') } }
      # The employee employments
      field :employments, T.nilable(T::Array[::StackOne::Shared::CreateEmploymentApiModel]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employments') } }
      # The employee ethnicity
      field :ethnicity, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoEthnicity), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('ethnicity') } }
      # The employee first name
      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
      # The employee gender
      field :gender, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoGender), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('gender') } }
      # The employee hire date
      field :hire_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hire_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee home location
      field :home_location, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoHomeLocation), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('home_location') } }
      # The employee job id
      field :job_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_id') } }
      # The employee job title
      field :job_title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_title') } }
      # The employee last name
      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }
      # The employee manager ID
      field :manager_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('manager_id') } }
      # The employee marital status
      field :marital_status, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoMaritalStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('marital_status') } }
      # The employee name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The national identity number
      field :national_identity_number, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoNationalIdentityNumber), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('national_identity_number') } }
      # Value to pass through to the provider
      field :passthrough, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('passthrough') } }
      # The employee personal email
      field :personal_email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('personal_email') } }
      # The employee personal phone number
      field :personal_phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('personal_phone_number') } }
      # The employee preferred language
      field :preferred_language, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoPreferredLanguage), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('preferred_language') } }
      # The employee start date
      field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee tenure
      field :tenure, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('tenure') } }
      # The employee termination date
      field :termination_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('termination_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee work anniversary
      field :work_anniversary, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('work_anniversary'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee work email
      field :work_email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('work_email') } }
      # The employee work location
      field :work_location, T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoWorkLocation), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('work_location') } }
      # The employee work phone number
      field :work_phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('work_phone_number') } }


      sig { params(avatar: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoAvatar), avatar_url: T.nilable(::String), benefits: T.nilable(T::Array[::StackOne::Shared::CreateHRISBenefit]), birthday: T.nilable(::DateTime), citizenships: T.nilable(T::Array[::StackOne::Shared::CountryCodeEnum]), company_name: T.nilable(::String), custom_fields: T.nilable(T::Array[::StackOne::Shared::CustomFields]), date_of_birth: T.nilable(::DateTime), department: T.nilable(::String), department_id: T.nilable(::String), display_name: T.nilable(::String), employment_contract_type: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentContractType), employment_status: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentStatus), employment_type: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoEmploymentType), employments: T.nilable(T::Array[::StackOne::Shared::CreateEmploymentApiModel]), ethnicity: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoEthnicity), first_name: T.nilable(::String), gender: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoGender), hire_date: T.nilable(::DateTime), home_location: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoHomeLocation), job_id: T.nilable(::String), job_title: T.nilable(::String), last_name: T.nilable(::String), manager_id: T.nilable(::String), marital_status: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoMaritalStatus), name: T.nilable(::String), national_identity_number: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoNationalIdentityNumber), passthrough: T.nilable(T::Hash[Symbol, ::Object]), personal_email: T.nilable(::String), personal_phone_number: T.nilable(::String), preferred_language: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoPreferredLanguage), start_date: T.nilable(::DateTime), tenure: T.nilable(::Float), termination_date: T.nilable(::DateTime), work_anniversary: T.nilable(::DateTime), work_email: T.nilable(::String), work_location: T.nilable(::StackOne::Shared::HrisCreateEmployeeRequestDtoWorkLocation), work_phone_number: T.nilable(::String)).void }
      def initialize(avatar: nil, avatar_url: nil, benefits: nil, birthday: nil, citizenships: nil, company_name: nil, custom_fields: nil, date_of_birth: nil, department: nil, department_id: nil, display_name: nil, employment_contract_type: nil, employment_status: nil, employment_type: nil, employments: nil, ethnicity: nil, first_name: nil, gender: nil, hire_date: nil, home_location: nil, job_id: nil, job_title: nil, last_name: nil, manager_id: nil, marital_status: nil, name: nil, national_identity_number: nil, passthrough: nil, personal_email: nil, personal_phone_number: nil, preferred_language: nil, start_date: nil, tenure: nil, termination_date: nil, work_anniversary: nil, work_email: nil, work_location: nil, work_phone_number: nil)
        @avatar = avatar
        @avatar_url = avatar_url
        @benefits = benefits
        @birthday = birthday
        @citizenships = citizenships
        @company_name = company_name
        @custom_fields = custom_fields
        @date_of_birth = date_of_birth
        @department = department
        @department_id = department_id
        @display_name = display_name
        @employment_contract_type = employment_contract_type
        @employment_status = employment_status
        @employment_type = employment_type
        @employments = employments
        @ethnicity = ethnicity
        @first_name = first_name
        @gender = gender
        @hire_date = hire_date
        @home_location = home_location
        @job_id = job_id
        @job_title = job_title
        @last_name = last_name
        @manager_id = manager_id
        @marital_status = marital_status
        @name = name
        @national_identity_number = national_identity_number
        @passthrough = passthrough
        @personal_email = personal_email
        @personal_phone_number = personal_phone_number
        @preferred_language = preferred_language
        @start_date = start_date
        @tenure = tenure
        @termination_date = termination_date
        @work_anniversary = work_anniversary
        @work_email = work_email
        @work_location = work_location
        @work_phone_number = work_phone_number
      end
    end
  end
end
