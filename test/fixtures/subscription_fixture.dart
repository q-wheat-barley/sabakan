import 'package:sabakan/data/subscription/subscription.dart';

Subscription createTestSubscription({int? id, String? name, int? renewalFee, Duration? contractPeriod, DateTime? initialStartAt, DateTime? lastRenewedAt, DateTime? nextRenewalAt}) {
  final now = DateTime(2024, 1, 1);

  return Subscription(
    id: id ?? 1,
    name: name ?? 'Test Subscription',
    renewalFee: renewalFee ?? 1000,
    contractPeriod: contractPeriod ?? const Duration(days: 30),
    initialStartAt: initialStartAt ?? now,
    lastRenewedAt: lastRenewedAt ?? now,
    nextRenewalAt: nextRenewalAt ?? now.add(const Duration(days: 30)),
  );
}
