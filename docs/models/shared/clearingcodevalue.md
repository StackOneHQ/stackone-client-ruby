# ClearingCodeValue

The type of clearing code

## Example Usage

```ruby
require "stackone_client"

value = ClearingCodeValue::SORT_CODE

# Open enum: use .deserialize() to create instances from custom string values
custom = ClearingCodeValue.deserialize("custom_value")
```


## Values

| Name                         | Value                        |
| ---------------------------- | ---------------------------- |
| `SORT_CODE`                  | sort_code                    |
| `BUILDING_SOCIETY_REFERENCE` | building_society_reference   |
| `ABA_ROUTING`                | aba_routing                  |
| `CHIPS_PARTICIPANT_ID`       | chips_participant_id         |
| `TRANSIT_NUMBER`             | transit_number               |
| `INSTITUTION_NUMBER`         | institution_number           |
| `BSB_CODE`                   | bsb_code                     |
| `IFSC_CODE`                  | ifsc_code                    |
| `MICR_CODE`                  | micr_code                    |
| `CLABE`                      | clabe                        |
| `CNAPS_CODE`                 | cnaps_code                   |
| `CH_BANK_CLEARING_CODE`      | ch_bank_clearing_code        |
| `CH_SIC_CODE`                | ch_sic_code                  |
| `ZENGIN_CODE`                | zengin_code                  |
| `NZ_CLEARING_CODE`           | nz_clearing_code             |
| `HK_BANK_CODE`               | hk_bank_code                 |
| `BLZ`                        | blz                          |
| `AT_BANKLEITZAHL`            | at_bankleitzahl              |
| `NUBAN`                      | nuban                        |
| `SE_BANKGIRO_CODE`           | se_bankgiro_code             |
| `UNMAPPED_VALUE`             | unmapped_value               |