# AtsRejectApplicationRequestDto


## Fields

| Field                                     | Type                                      | Required                                  | Description                               | Example                                   |
| ----------------------------------------- | ----------------------------------------- | ----------------------------------------- | ----------------------------------------- | ----------------------------------------- |
| `passthrough`                             | T::Hash[Symbol, *::Object*]               | :heavy_minus_sign:                        | Value to pass through to the provider     | {<br/>"other_known_names": "John Doe"<br/>} |
| `rejected_reason_id`                      | *T.nilable(::String)*                     | :heavy_minus_sign:                        | Unique identifier of the rejection reason | f223d7f6-908b-48f0-9237-b201c307f609      |