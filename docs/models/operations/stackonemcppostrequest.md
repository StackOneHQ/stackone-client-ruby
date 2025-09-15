# StackoneMcpPostRequest


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `json_rpc_message_dto`                                                        | [Models::Shared::JsonRpcMessageDto](../../models/shared/jsonrpcmessagedto.md) | :heavy_check_mark:                                                            | JSON-RPC 2.0 message                                                          |
| `mcp_session_id`                                                              | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Session id; omit for initialize, include for subsequent calls                 |
| `x_account_id`                                                                | *::String*                                                                    | :heavy_check_mark:                                                            | Account secure id for the target provider account                             |