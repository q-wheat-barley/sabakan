// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Subscription {

// サブスクID
 int get id;// サブスク名
 String get name;// 更新料金
 int get renewalFee;// 契約期間
 Duration get contractPeriod;// 初回契約日
 DateTime get initialStartAt;// 最終更新日
 DateTime get lastRenewedAt;// 次回更新日
 DateTime get nextRenewalAt;
/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionCopyWith<Subscription> get copyWith => _$SubscriptionCopyWithImpl<Subscription>(this as Subscription, _$identity);

  /// Serializes this Subscription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subscription&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.renewalFee, renewalFee) || other.renewalFee == renewalFee)&&(identical(other.contractPeriod, contractPeriod) || other.contractPeriod == contractPeriod)&&(identical(other.initialStartAt, initialStartAt) || other.initialStartAt == initialStartAt)&&(identical(other.lastRenewedAt, lastRenewedAt) || other.lastRenewedAt == lastRenewedAt)&&(identical(other.nextRenewalAt, nextRenewalAt) || other.nextRenewalAt == nextRenewalAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,renewalFee,contractPeriod,initialStartAt,lastRenewedAt,nextRenewalAt);

@override
String toString() {
  return 'Subscription(id: $id, name: $name, renewalFee: $renewalFee, contractPeriod: $contractPeriod, initialStartAt: $initialStartAt, lastRenewedAt: $lastRenewedAt, nextRenewalAt: $nextRenewalAt)';
}


}

/// @nodoc
abstract mixin class $SubscriptionCopyWith<$Res>  {
  factory $SubscriptionCopyWith(Subscription value, $Res Function(Subscription) _then) = _$SubscriptionCopyWithImpl;
@useResult
$Res call({
 int id, String name, int renewalFee, Duration contractPeriod, DateTime initialStartAt, DateTime lastRenewedAt, DateTime nextRenewalAt
});




}
/// @nodoc
class _$SubscriptionCopyWithImpl<$Res>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._self, this._then);

  final Subscription _self;
  final $Res Function(Subscription) _then;

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? renewalFee = null,Object? contractPeriod = null,Object? initialStartAt = null,Object? lastRenewedAt = null,Object? nextRenewalAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,renewalFee: null == renewalFee ? _self.renewalFee : renewalFee // ignore: cast_nullable_to_non_nullable
as int,contractPeriod: null == contractPeriod ? _self.contractPeriod : contractPeriod // ignore: cast_nullable_to_non_nullable
as Duration,initialStartAt: null == initialStartAt ? _self.initialStartAt : initialStartAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastRenewedAt: null == lastRenewedAt ? _self.lastRenewedAt : lastRenewedAt // ignore: cast_nullable_to_non_nullable
as DateTime,nextRenewalAt: null == nextRenewalAt ? _self.nextRenewalAt : nextRenewalAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Subscription].
extension SubscriptionPatterns on Subscription {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Subscription value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Subscription() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Subscription value)  $default,){
final _that = this;
switch (_that) {
case _Subscription():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Subscription value)?  $default,){
final _that = this;
switch (_that) {
case _Subscription() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int renewalFee,  Duration contractPeriod,  DateTime initialStartAt,  DateTime lastRenewedAt,  DateTime nextRenewalAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Subscription() when $default != null:
return $default(_that.id,_that.name,_that.renewalFee,_that.contractPeriod,_that.initialStartAt,_that.lastRenewedAt,_that.nextRenewalAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int renewalFee,  Duration contractPeriod,  DateTime initialStartAt,  DateTime lastRenewedAt,  DateTime nextRenewalAt)  $default,) {final _that = this;
switch (_that) {
case _Subscription():
return $default(_that.id,_that.name,_that.renewalFee,_that.contractPeriod,_that.initialStartAt,_that.lastRenewedAt,_that.nextRenewalAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int renewalFee,  Duration contractPeriod,  DateTime initialStartAt,  DateTime lastRenewedAt,  DateTime nextRenewalAt)?  $default,) {final _that = this;
switch (_that) {
case _Subscription() when $default != null:
return $default(_that.id,_that.name,_that.renewalFee,_that.contractPeriod,_that.initialStartAt,_that.lastRenewedAt,_that.nextRenewalAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Subscription implements Subscription {
  const _Subscription({required this.id, required this.name, required this.renewalFee, required this.contractPeriod, required this.initialStartAt, required this.lastRenewedAt, required this.nextRenewalAt});
  factory _Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);

// サブスクID
@override final  int id;
// サブスク名
@override final  String name;
// 更新料金
@override final  int renewalFee;
// 契約期間
@override final  Duration contractPeriod;
// 初回契約日
@override final  DateTime initialStartAt;
// 最終更新日
@override final  DateTime lastRenewedAt;
// 次回更新日
@override final  DateTime nextRenewalAt;

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionCopyWith<_Subscription> get copyWith => __$SubscriptionCopyWithImpl<_Subscription>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subscription&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.renewalFee, renewalFee) || other.renewalFee == renewalFee)&&(identical(other.contractPeriod, contractPeriod) || other.contractPeriod == contractPeriod)&&(identical(other.initialStartAt, initialStartAt) || other.initialStartAt == initialStartAt)&&(identical(other.lastRenewedAt, lastRenewedAt) || other.lastRenewedAt == lastRenewedAt)&&(identical(other.nextRenewalAt, nextRenewalAt) || other.nextRenewalAt == nextRenewalAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,renewalFee,contractPeriod,initialStartAt,lastRenewedAt,nextRenewalAt);

@override
String toString() {
  return 'Subscription(id: $id, name: $name, renewalFee: $renewalFee, contractPeriod: $contractPeriod, initialStartAt: $initialStartAt, lastRenewedAt: $lastRenewedAt, nextRenewalAt: $nextRenewalAt)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionCopyWith<$Res> implements $SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(_Subscription value, $Res Function(_Subscription) _then) = __$SubscriptionCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int renewalFee, Duration contractPeriod, DateTime initialStartAt, DateTime lastRenewedAt, DateTime nextRenewalAt
});




}
/// @nodoc
class __$SubscriptionCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(this._self, this._then);

  final _Subscription _self;
  final $Res Function(_Subscription) _then;

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? renewalFee = null,Object? contractPeriod = null,Object? initialStartAt = null,Object? lastRenewedAt = null,Object? nextRenewalAt = null,}) {
  return _then(_Subscription(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,renewalFee: null == renewalFee ? _self.renewalFee : renewalFee // ignore: cast_nullable_to_non_nullable
as int,contractPeriod: null == contractPeriod ? _self.contractPeriod : contractPeriod // ignore: cast_nullable_to_non_nullable
as Duration,initialStartAt: null == initialStartAt ? _self.initialStartAt : initialStartAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastRenewedAt: null == lastRenewedAt ? _self.lastRenewedAt : lastRenewedAt // ignore: cast_nullable_to_non_nullable
as DateTime,nextRenewalAt: null == nextRenewalAt ? _self.nextRenewalAt : nextRenewalAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
