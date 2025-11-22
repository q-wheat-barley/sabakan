import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sabakan/data/notifier/subscription_list_notifier.dart';
import 'package:sabakan/data/subscription/subscription.dart';
import 'package:sabakan/ui/subscription_list.dart';

import '../fixtures/subscription_fixture.dart';

void main() {
  testWidgets('SubscriptionList displays SubscriptionListElement', (tester) async {
    final List<Subscription> testSubscriptions = [createTestSubscription(name: 'Test Subscription 1'), createTestSubscription(name: 'Test Subscription 2')];

    await tester.pumpWidget(
      ProviderScope(
        overrides: [subscriptionListProvider.overrideWithValue(testSubscriptions)],
        child: MaterialApp(home: Scaffold(body: SubscriptionList())),
      ),
    );

    expect(find.text('Test Subscription 1'), findsOneWidget);
    expect(find.text('Test Subscription 2'), findsOneWidget);
  });
}

class MockSubscriptionListNotifier extends SubscriptionListNotifier {
  MockSubscriptionListNotifier(List<Subscription> initialState) : super() {
    state = initialState;
  }
}
