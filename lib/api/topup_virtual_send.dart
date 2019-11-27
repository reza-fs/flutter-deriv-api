/// Autogenerated from flutter_deriv_api|lib/api/topup_virtual_send.json
import 'dart:async';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'topup_virtual_send.g.dart';

@JsonSerializable(nullable: false, fieldRename: FieldRename.snake)
class TopupVirtualRequest {
  TopupVirtualRequest();
  factory TopupVirtualRequest.fromJson(Map<String, dynamic> json) =>
      _$TopupVirtualRequestFromJson(json);
  Map<String, dynamic> toJson() => _$TopupVirtualRequestToJson(this);

  // Properties
  /// [Optional] Used to pass data through the websocket, which may be retrieved via the echo_req output field.
  Map<String, dynamic> passthrough;

  /// [Optional] Used to map request to response.
  int reqId;

  /// It's only allowed for virtual account.
  int topupVirtual;

  // @override
  // String toString() => name;
  static bool _fromInteger(int v) => (v != 0);
  static int _fromBoolean(bool v) => v ? 1 : 0;
}
