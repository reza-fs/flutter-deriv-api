/// Autogenerated from flutter_deriv_api|lib/api/set_self_exclusion_send.json
import 'dart:async';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'set_self_exclusion_send.g.dart';

@JsonSerializable(nullable: false, fieldRename: FieldRename.snake)
class SetSelfExclusionRequest {
  SetSelfExclusionRequest(
      {this.excludeUntil,
      this.max30dayLosses,
      this.max30dayTurnover,
      this.max7dayLosses,
      this.max7dayTurnover,
      this.maxBalance,
      this.maxDeposit,
      this.maxDepositEndDate,
      this.maxLosses,
      this.maxOpenBets,
      this.maxTurnover,
      this.passthrough,
      this.reqId,
      this.sessionDurationLimit,
      this.setSelfExclusion,
      this.timeoutUntil});
  factory SetSelfExclusionRequest.fromJson(Map<String, dynamic> json) =>
      _$SetSelfExclusionRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SetSelfExclusionRequestToJson(this);

  // Properties
  /// [Optional] Exclude me from the website (for a minimum of 6 months, up to a maximum of 5 years). Note: uplifting this self-exclusion may require contacting the company.
  String excludeUntil;

  /// [Optional] 30-day limit on losses.
  String max30dayLosses;

  /// [Optional] 30-day turnover limit.
  String max30dayTurnover;

  /// [Optional] 7-day limit on losses.
  String max7dayLosses;

  /// [Optional] 7-day turnover limit.
  String max7dayTurnover;

  /// [Optional] Maximum account cash balance.
  String maxBalance;

  /// [Optional] Deposit limit.
  String maxDeposit;

  /// [Optional] Exclude me from making deposits when the cumulative sum of deposits exceeds specified deposit limit.
  String maxDepositEndDate;

  /// [Optional] Daily limit on losses.
  String maxLosses;

  /// [Optional] Maximum number of open positions.
  String maxOpenBets;

  /// [Optional] Daily turnover limit.
  String maxTurnover;

  /// [Optional] Used to pass data through the websocket, which may be retrieved via the `echo_req` output field.
  Map<String, dynamic> passthrough;

  /// [Optional] Used to map request to response.
  int reqId;

  /// [Optional] Session duration limit, in minutes.
  String sessionDurationLimit;

  /// Must be `1`
  int setSelfExclusion;

  /// [Optional] Exclude me from the website (for up to 6 weeks). Requires time in epoch format. Note: unlike `exclude_until`, this self-exclusion will be lifted automatically at the expiry of the timeout period.
  String timeoutUntil;

  // @override
  // String toString() => name;
  static bool _fromInteger(int v) => (v != 0);
  static int _fromBoolean(bool v) => v ? 1 : 0;
}