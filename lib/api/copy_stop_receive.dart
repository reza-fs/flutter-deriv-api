/// Autogenerated from flutter_deriv_api|lib/api/copy_stop_receive.json
import 'dart:async';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'copy_stop_receive.g.dart';

@JsonSerializable(nullable: false, fieldRename: FieldRename.snake)
class CopyStopResponse {
  CopyStopResponse();
  factory CopyStopResponse.fromJson(Map<String, dynamic> json) =>
      _$CopyStopResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CopyStopResponseToJson(this);

  // Properties
  /// Copy stopping confirmation. Returns 1 is success.
  int copyStop;

  /// Echo of the request made.
  Map<String, dynamic> echoReq;

  /// Action name of the request made.
  String msgType;

  /// Optional field sent in request to map to response, present only when request contains req_id.
  int reqId;

  // @override
  // String toString() => name;
  static bool _fromInteger(int v) => (v != 0);
  static int _fromBoolean(bool v) => v ? 1 : 0;
}
