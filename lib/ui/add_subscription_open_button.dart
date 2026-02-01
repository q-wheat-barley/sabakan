import 'package:flutter/material.dart';
import 'package:sabakan/ui/subscription_form.dart';

class AddSubscriptionOpenButton extends StatelessWidget {
  const AddSubscriptionOpenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: SubscriptionForm(
              onSubmitted: (name, renewalFee, contractPeriodNum, contractPeriodUnit, initialStartAt) {
                // TODO: サブスクの追加をリクエストする
                debugPrint('TODO: add subscription');
              },
            ),
          ),
        );
      },
    );
  }
}
