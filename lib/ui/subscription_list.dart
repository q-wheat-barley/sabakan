import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sabakan/data/notifier/subscription_list_notifier.dart';
import 'package:sabakan/data/subscription/subscription.dart';
import 'package:sabakan/ui/subscription_list_element.dart';

class SubscriptionList extends ConsumerWidget {
  const SubscriptionList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Subscription> subscriptions = ref.watch(subscriptionListProvider);
    return ListView.builder(
      itemCount: subscriptions.length,
      itemBuilder: (context, index) {
        return SubscriptionListElement(subscription: subscriptions[index]);
      },
    );
  }
}
