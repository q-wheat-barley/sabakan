import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
abstract class Subscription with _$Subscription {
  const factory Subscription({
    // サブスクID
    required int id,
    // サブスク名
    required String name,
    // 更新料金
    required int renewalFee,
    // 契約期間
    required Duration contractPeriod,
    // 初回契約日
    required DateTime initialStartAt,
    // 最終更新日
    required DateTime lastRenewedAt,
    // 次回更新日
    required DateTime nextRenewalAt,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}
