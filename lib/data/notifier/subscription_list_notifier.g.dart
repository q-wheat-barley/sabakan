// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SubscriptionListNotifier)
const subscriptionListProvider = SubscriptionListNotifierProvider._();

final class SubscriptionListNotifierProvider
    extends $NotifierProvider<SubscriptionListNotifier, List<Subscription>> {
  const SubscriptionListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'subscriptionListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$subscriptionListNotifierHash();

  @$internal
  @override
  SubscriptionListNotifier create() => SubscriptionListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Subscription> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Subscription>>(value),
    );
  }
}

String _$subscriptionListNotifierHash() =>
    r'73e08ac66a6d75684423d461117a99f379c482ce';

abstract class _$SubscriptionListNotifier
    extends $Notifier<List<Subscription>> {
  List<Subscription> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Subscription>, List<Subscription>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Subscription>, List<Subscription>>,
              List<Subscription>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
