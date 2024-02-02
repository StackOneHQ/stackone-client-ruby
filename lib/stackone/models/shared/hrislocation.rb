# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module StackOne
  module Shared
    # HRISLocationValue - The ISO3166-1 Alpha2 Code of the Country
    class HRISLocationValue < T::Enum
      enums do
        AF = new('AF')
        AL = new('AL')
        DZ = new('DZ')
        AS = new('AS')
        AD = new('AD')
        AO = new('AO')
        AI = new('AI')
        AQ = new('AQ')
        AG = new('AG')
        AR = new('AR')
        AM = new('AM')
        AW = new('AW')
        AU = new('AU')
        AT = new('AT')
        AZ = new('AZ')
        BS = new('BS')
        BH = new('BH')
        BD = new('BD')
        BB = new('BB')
        BY = new('BY')
        BE = new('BE')
        BZ = new('BZ')
        BJ = new('BJ')
        BM = new('BM')
        BT = new('BT')
        BO = new('BO')
        BQ = new('BQ')
        BA = new('BA')
        BW = new('BW')
        BV = new('BV')
        BR = new('BR')
        IO = new('IO')
        BN = new('BN')
        BG = new('BG')
        BF = new('BF')
        BI = new('BI')
        KH = new('KH')
        CM = new('CM')
        CA = new('CA')
        CV = new('CV')
        KY = new('KY')
        CF = new('CF')
        TD = new('TD')
        CL = new('CL')
        CN = new('CN')
        CX = new('CX')
        CC = new('CC')
        CO = new('CO')
        KM = new('KM')
        CG = new('CG')
        CD = new('CD')
        CK = new('CK')
        CR = new('CR')
        HR = new('HR')
        CU = new('CU')
        CW = new('CW')
        CY = new('CY')
        CZ = new('CZ')
        CI = new('CI')
        DK = new('DK')
        DJ = new('DJ')
        DM = new('DM')
        DO = new('DO')
        EC = new('EC')
        EG = new('EG')
        SV = new('SV')
        GQ = new('GQ')
        ER = new('ER')
        EE = new('EE')
        ET = new('ET')
        FK = new('FK')
        FO = new('FO')
        FJ = new('FJ')
        FI = new('FI')
        FR = new('FR')
        GF = new('GF')
        PF = new('PF')
        TF = new('TF')
        GA = new('GA')
        GM = new('GM')
        GE = new('GE')
        DE = new('DE')
        GH = new('GH')
        GI = new('GI')
        GR = new('GR')
        GL = new('GL')
        GD = new('GD')
        GP = new('GP')
        GU = new('GU')
        GT = new('GT')
        GG = new('GG')
        GN = new('GN')
        GW = new('GW')
        GY = new('GY')
        HT = new('HT')
        HM = new('HM')
        VA = new('VA')
        HN = new('HN')
        HK = new('HK')
        HU = new('HU')
        IS = new('IS')
        IN = new('IN')
        ID = new('ID')
        IR = new('IR')
        IQ = new('IQ')
        IE = new('IE')
        IM = new('IM')
        IL = new('IL')
        IT = new('IT')
        JM = new('JM')
        JP = new('JP')
        JE = new('JE')
        JO = new('JO')
        KZ = new('KZ')
        KE = new('KE')
        KI = new('KI')
        KP = new('KP')
        KR = new('KR')
        KW = new('KW')
        KG = new('KG')
        LA = new('LA')
        LV = new('LV')
        LB = new('LB')
        LS = new('LS')
        LR = new('LR')
        LY = new('LY')
        LI = new('LI')
        LT = new('LT')
        LU = new('LU')
        MO = new('MO')
        MK = new('MK')
        MG = new('MG')
        MW = new('MW')
        MY = new('MY')
        MV = new('MV')
        ML = new('ML')
        MT = new('MT')
        MH = new('MH')
        MQ = new('MQ')
        MR = new('MR')
        MU = new('MU')
        YT = new('YT')
        MX = new('MX')
        FM = new('FM')
        MD = new('MD')
        MC = new('MC')
        MN = new('MN')
        ME = new('ME')
        MS = new('MS')
        MA = new('MA')
        MZ = new('MZ')
        MM = new('MM')
        NA = new('NA')
        NR = new('NR')
        NP = new('NP')
        NL = new('NL')
        NC = new('NC')
        NZ = new('NZ')
        NI = new('NI')
        NE = new('NE')
        NG = new('NG')
        NU = new('NU')
        NF = new('NF')
        MP = new('MP')
        NO = new('NO')
        OM = new('OM')
        PK = new('PK')
        PW = new('PW')
        PS = new('PS')
        PA = new('PA')
        PG = new('PG')
        PY = new('PY')
        PE = new('PE')
        PH = new('PH')
        PN = new('PN')
        PL = new('PL')
        PT = new('PT')
        PR = new('PR')
        QA = new('QA')
        RO = new('RO')
        RU = new('RU')
        RW = new('RW')
        RE = new('RE')
        BL = new('BL')
        SH = new('SH')
        KN = new('KN')
        LC = new('LC')
        MF = new('MF')
        PM = new('PM')
        VC = new('VC')
        WS = new('WS')
        SM = new('SM')
        ST = new('ST')
        SA = new('SA')
        SN = new('SN')
        RS = new('RS')
        SC = new('SC')
        SL = new('SL')
        SG = new('SG')
        SX = new('SX')
        SK = new('SK')
        SI = new('SI')
        SB = new('SB')
        SO = new('SO')
        ZA = new('ZA')
        GS = new('GS')
        SS = new('SS')
        ES = new('ES')
        LK = new('LK')
        SD = new('SD')
        SR = new('SR')
        SJ = new('SJ')
        SZ = new('SZ')
        SE = new('SE')
        CH = new('CH')
        SY = new('SY')
        TW = new('TW')
        TJ = new('TJ')
        TZ = new('TZ')
        TH = new('TH')
        TL = new('TL')
        TG = new('TG')
        TK = new('TK')
        TO = new('TO')
        TT = new('TT')
        TN = new('TN')
        TR = new('TR')
        TM = new('TM')
        TC = new('TC')
        TV = new('TV')
        UG = new('UG')
        UA = new('UA')
        AE = new('AE')
        GB = new('GB')
        US = new('US')
        UM = new('UM')
        UY = new('UY')
        UZ = new('UZ')
        VU = new('VU')
        VE = new('VE')
        VN = new('VN')
        VG = new('VG')
        VI = new('VI')
        WF = new('WF')
        EH = new('EH')
        YE = new('YE')
        ZM = new('ZM')
        ZW = new('ZW')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end


    # The country code
    class Country < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :source_value, T.nilable(Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }
      # The ISO3166-1 Alpha2 Code of the Country
      field :value, T.nilable(Shared::HRISLocationValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::HRISLocationValue, true) } }


      sig { params(source_value: T.nilable(Object), value: T.nilable(Shared::HRISLocationValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end


    class HRISLocationSchemasValue < T::Enum
      enums do
        HOME = new('home')
        WORK = new('work')
        UNMAPPED_VALUE = new('unmapped_value')
      end
    end


    # The location type
    class LocationType < ::StackOne::Utils::FieldAugmented
      extend T::Sig


      field :source_value, T.nilable(Object), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('source_value') } }

      field :value, T.nilable(Shared::HRISLocationSchemasValue), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('value'), 'decoder': Utils.enum_from_string(Shared::HRISLocationSchemasValue, true) } }


      sig { params(source_value: T.nilable(Object), value: T.nilable(Shared::HRISLocationSchemasValue)).void }
      def initialize(source_value: nil, value: nil)
        @source_value = source_value
        @value = value
      end
    end


    class HRISLocation < ::StackOne::Utils::FieldAugmented
      extend T::Sig

      # The city where the location is situated
      field :city, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('city') } }
      # The country code
      field :country, T.nilable(Shared::Country), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('country') } }
      # The created_at date
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The employee ID
      field :employee_id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('employee_id') } }
      # The unique ID of the location
      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('id') } }
      # The location type
      field :location_type, T.nilable(Shared::LocationType), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('location_type') } }
      # The name of the location
      field :name, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('name') } }
      # The phone number of the location
      field :phone_number, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('phone_number') } }
      # The state where the location is situated
      field :state, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('state') } }
      # The first line of the address
      field :street_1, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('street_1') } }
      # The second line of the address
      field :street_2, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('street_2') } }
      # The updated_at date
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The ZIP code/Postal code of the location
      field :zip_code, T.nilable(String), { 'format_json': { 'letter_case': ::StackOne::Utils.field_name('zip_code') } }


      sig { params(city: T.nilable(String), country: T.nilable(Shared::Country), created_at: T.nilable(DateTime), employee_id: T.nilable(String), id: T.nilable(String), location_type: T.nilable(Shared::LocationType), name: T.nilable(String), phone_number: T.nilable(String), state: T.nilable(String), street_1: T.nilable(String), street_2: T.nilable(String), updated_at: T.nilable(DateTime), zip_code: T.nilable(String)).void }
      def initialize(city: nil, country: nil, created_at: nil, employee_id: nil, id: nil, location_type: nil, name: nil, phone_number: nil, state: nil, street_1: nil, street_2: nil, updated_at: nil, zip_code: nil)
        @city = city
        @country = country
        @created_at = created_at
        @employee_id = employee_id
        @id = id
        @location_type = location_type
        @name = name
        @phone_number = phone_number
        @state = state
        @street_1 = street_1
        @street_2 = street_2
        @updated_at = updated_at
        @zip_code = zip_code
      end
    end
  end
end
