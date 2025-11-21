import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:sabakan/ui/subscription_list_element.dart';

import '../fixtures/subscription_fixture.dart';

void main() {
  testWidgets('SubscriptionListElement has a title, subtitle and trailing', (tester) async {
    final name = 'MockSubscription';
    final renewalFee = 10000;
    final nextRenewalAt = DateTime.now().add(const Duration(days: 30));
    final subscription = createTestSubscription(name: name, renewalFee: renewalFee, nextRenewalAt: nextRenewalAt);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: SubscriptionListElement(subscription: subscription)),
      ),
    );

    expect(find.text(name), findsOneWidget);
    expect(find.text('next: ${DateFormat('yyyy/MM/dd').format(nextRenewalAt)}'), findsOneWidget);
    expect(find.text(renewalFee.toString()), findsOneWidget);
  });
}
