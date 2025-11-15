// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Subscription _$SubscriptionFromJson(Map<String, dynamic> json) =>
    _Subscription(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      renewalFee: (json['renewalFee'] as num).toInt(),
      contractPeriod: Duration(
        microseconds: (json['contractPeriod'] as num).toInt(),
      ),
      initialStartAt: DateTime.parse(json['initialStartAt'] as String),
      lastRenewedAt: DateTime.parse(json['lastRenewedAt'] as String),
      nextRenewalAt: DateTime.parse(json['nextRenewalAt'] as String),
    );

Map<String, dynamic> _$SubscriptionToJson(_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'renewalFee': instance.renewalFee,
      'contractPeriod': instance.contractPeriod.inMicroseconds,
      'initialStartAt': instance.initialStartAt.toIso8601String(),
      'lastRenewedAt': instance.lastRenewedAt.toIso8601String(),
      'nextRenewalAt': instance.nextRenewalAt.toIso8601String(),
    };
