# LmsListContentQueryParamFilter

LMS Courses Filter


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   | Example                                                                       |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `active`                                                                      | [T.nilable(T.any(T::Boolean, ::String))](../../models/operations/active.md)   | :heavy_minus_sign:                                                            | Filter to allow filtering of only active content                              |                                                                               |
| `updated_after`                                                               | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)          | :heavy_minus_sign:                                                            | Use a string with a date to only select results updated after that given date | 2020-01-01T00:00:00.000Z                                                      |