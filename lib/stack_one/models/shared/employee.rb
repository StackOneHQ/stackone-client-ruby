# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Shared
  

    class Employee < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The employee avatar
      field :avatar, T.nilable(::StackOne::Shared::Avatar), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('avatar') } }
      # The employee avatar Url
      field :avatar_url, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('avatar_url') } }
      # Current benefits of the employee
      field :benefits, T.nilable(T::Array[::StackOne::Shared::HRISBenefit]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('benefits') } }
      # The employee birthday
      field :birthday, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('birthday'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The citizenships of the Employee
      field :citizenships, T.nilable(T::Array[::StackOne::Shared::CountryCodeEnum]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('citizenships') } }
      # The employee company
      field :company, T.nilable(::StackOne::Shared::EmployeeCompany), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('company') } }
      # The employee company name
      field :company_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('company_name') } }
      # The employee cost centers
      field :cost_centers, T.nilable(T::Array[::StackOne::Shared::CostCenters]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('cost_centers') } }
      # The created_at date
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee custom fields
      field :custom_fields, T.nilable(T::Array[::StackOne::Shared::EmployeeCustomFields]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('custom_fields') } }
      # The employee date_of_birth
      field :date_of_birth, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('date_of_birth'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee department
      field :department, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('department') } }
      # The employee display name
      field :display_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('display_name') } }
      # The assigned employee number
      field :employee_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employee_number') } }
      # The employment work schedule type (e.g., full-time, part-time)
      field :employment_contract_type, T.nilable(::StackOne::Shared::EmploymentContractType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_contract_type') } }
      # The employee employment status
      field :employment_status, T.nilable(::StackOne::Shared::EmploymentStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_status') } }
      # The employee employment type
      field :employment_type, T.nilable(::StackOne::Shared::EmploymentType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employment_type') } }
      # The employee employments
      field :employments, T.nilable(T::Array[::StackOne::Shared::Employment]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employments') } }
      # The employee ethnicity
      field :ethnicity, T.nilable(::StackOne::Shared::Ethnicity), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('ethnicity') } }
      # The employee first name
      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('first_name') } }
      # The employee gender
      field :gender, T.nilable(::StackOne::Shared::Gender), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('gender') } }
      # The employee groups
      field :groups, T.nilable(T::Array[::StackOne::Shared::HRISGroup]), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('groups') } }
      # The employee hire date
      field :hire_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('hire_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee home location
      field :home_location, T.nilable(::StackOne::Shared::HomeLocation), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('home_location') } }
      # Unique identifier
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The employee job description
      field :job_description, T.nilable(::StackOne::Shared::JobDescription), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_description') } }
      # The employee job title
      field :job_title, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('job_title') } }
      # The employee last name
      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('last_name') } }
      # The employee manager ID
      field :manager_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('manager_id') } }
      # The employee marital status
      field :marital_status, T.nilable(::StackOne::Shared::MaritalStatus), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('marital_status') } }
      # The employee name
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The national identity number
      field :national_identity_number, T.nilable(::StackOne::Shared::NationalIdentityNumber), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('national_identity_number') } }
      # The employee personal email
      field :personal_email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('personal_email') } }
      # The employee personal phone number
      field :personal_phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('personal_phone_number') } }
      # The employee preferred language
      field :preferred_language, T.nilable(::StackOne::Shared::PreferredLanguage), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('preferred_language') } }
      # Provider's unique identifier
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_id') } }
      # Provider's unique identifier of the manager
      field :remote_manager_id, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('remote_manager_id') } }
      # The employee start date
      field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee tenure
      field :tenure, T.nilable(::Float), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('tenure') } }
      # The employee termination date
      field :termination_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('termination_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The updated_at date
      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee work anniversary
      field :work_anniversary, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('work_anniversary'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee work email
      field :work_email, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('work_email') } }
      # The employee work location
      field :work_location, T.nilable(::StackOne::Shared::WorkLocation), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('work_location') } }
      # The employee work phone number
      field :work_phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('work_phone_number') } }


      sig { params(avatar: T.nilable(::StackOne::Shared::Avatar), avatar_url: T.nilable(::String), benefits: T.nilable(T::Array[::StackOne::Shared::HRISBenefit]), birthday: T.nilable(::DateTime), citizenships: T.nilable(T::Array[::StackOne::Shared::CountryCodeEnum]), company: T.nilable(::StackOne::Shared::EmployeeCompany), company_name: T.nilable(::String), cost_centers: T.nilable(T::Array[::StackOne::Shared::CostCenters]), created_at: T.nilable(::DateTime), custom_fields: T.nilable(T::Array[::StackOne::Shared::EmployeeCustomFields]), date_of_birth: T.nilable(::DateTime), department: T.nilable(::String), display_name: T.nilable(::String), employee_number: T.nilable(::String), employment_contract_type: T.nilable(::StackOne::Shared::EmploymentContractType), employment_status: T.nilable(::StackOne::Shared::EmploymentStatus), employment_type: T.nilable(::StackOne::Shared::EmploymentType), employments: T.nilable(T::Array[::StackOne::Shared::Employment]), ethnicity: T.nilable(::StackOne::Shared::Ethnicity), first_name: T.nilable(::String), gender: T.nilable(::StackOne::Shared::Gender), groups: T.nilable(T::Array[::StackOne::Shared::HRISGroup]), hire_date: T.nilable(::DateTime), home_location: T.nilable(::StackOne::Shared::HomeLocation), id: T.nilable(::String), job_description: T.nilable(::StackOne::Shared::JobDescription), job_title: T.nilable(::String), last_name: T.nilable(::String), manager_id: T.nilable(::String), marital_status: T.nilable(::StackOne::Shared::MaritalStatus), name: T.nilable(::String), national_identity_number: T.nilable(::StackOne::Shared::NationalIdentityNumber), personal_email: T.nilable(::String), personal_phone_number: T.nilable(::String), preferred_language: T.nilable(::StackOne::Shared::PreferredLanguage), remote_id: T.nilable(::String), remote_manager_id: T.nilable(::String), start_date: T.nilable(::DateTime), tenure: T.nilable(::Float), termination_date: T.nilable(::DateTime), updated_at: T.nilable(::DateTime), work_anniversary: T.nilable(::DateTime), work_email: T.nilable(::String), work_location: T.nilable(::StackOne::Shared::WorkLocation), work_phone_number: T.nilable(::String)).void }
      def initialize(avatar: nil, avatar_url: nil, benefits: nil, birthday: nil, citizenships: nil, company: nil, company_name: nil, cost_centers: nil, created_at: nil, custom_fields: nil, date_of_birth: nil, department: nil, display_name: nil, employee_number: nil, employment_contract_type: nil, employment_status: nil, employment_type: nil, employments: nil, ethnicity: nil, first_name: nil, gender: nil, groups: nil, hire_date: nil, home_location: nil, id: nil, job_description: nil, job_title: nil, last_name: nil, manager_id: nil, marital_status: nil, name: nil, national_identity_number: nil, personal_email: nil, personal_phone_number: nil, preferred_language: nil, remote_id: nil, remote_manager_id: nil, start_date: nil, tenure: nil, termination_date: nil, updated_at: nil, work_anniversary: nil, work_email: nil, work_location: nil, work_phone_number: nil)
        @avatar = avatar
        @avatar_url = avatar_url
        @benefits = benefits
        @birthday = birthday
        @citizenships = citizenships
        @company = company
        @company_name = company_name
        @cost_centers = cost_centers
        @created_at = created_at
        @custom_fields = custom_fields
        @date_of_birth = date_of_birth
        @department = department
        @display_name = display_name
        @employee_number = employee_number
        @employment_contract_type = employment_contract_type
        @employment_status = employment_status
        @employment_type = employment_type
        @employments = employments
        @ethnicity = ethnicity
        @first_name = first_name
        @gender = gender
        @groups = groups
        @hire_date = hire_date
        @home_location = home_location
        @id = id
        @job_description = job_description
        @job_title = job_title
        @last_name = last_name
        @manager_id = manager_id
        @marital_status = marital_status
        @name = name
        @national_identity_number = national_identity_number
        @personal_email = personal_email
        @personal_phone_number = personal_phone_number
        @preferred_language = preferred_language
        @remote_id = remote_id
        @remote_manager_id = remote_manager_id
        @start_date = start_date
        @tenure = tenure
        @termination_date = termination_date
        @updated_at = updated_at
        @work_anniversary = work_anniversary
        @work_email = work_email
        @work_location = work_location
        @work_phone_number = work_phone_number
      end
    end
  end
end
