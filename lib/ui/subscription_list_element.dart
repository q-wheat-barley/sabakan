import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabakan/data/subscription/subscription.dart';

class SubscriptionListElement extends StatelessWidget {
  final Subscription subscription;

  const SubscriptionListElement({super.key, required this.subscription});

  @override
  Widget build(BuildContext context) {
    final String name = subscription.name;
    final String renewalFee = subscription.renewalFee.toString();
    final String nextRenewalAt = 'next: ${_dateFormatter.format(subscription.nextRenewalAt)}';

    return ListTile(title: Text(name), subtitle: Text(nextRenewalAt), trailing: Text(renewalFee));
  }
}

final DateFormat _dateFormatter = DateFormat('yyyy/MM/dd');
