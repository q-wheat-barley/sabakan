import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sabakan/data/subscription/subscription.dart';

class SubscriptionRepository {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<List<Subscription>> fetchSubscriptions() async {
    final List<Subscription> subscriptions = [];
    await db.collection("subscriptions").get().then((event) {
      for (var doc in event.docs) {
        final subscription = Subscription.fromJson(doc.data());
        subscriptions.add(subscription);
      }
    });
    return subscriptions;
  }

  // Future<void> addSubscription(Subscription subscription) async {
  //   await db.collection("subscriptions").add(subscription.toJson());
  // }
}
