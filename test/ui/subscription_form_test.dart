import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sabakan/ui/subscription_form.dart';

void main() {
  testWidgets('サブスク名を入力せずに送信ボタンを押すとエラーが表示される', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: SubscriptionForm())));

    final nameFormField = find.byKey(const Key('name'));
    // final errorText = find.text('サブスク名を入力してください');
    final errorText = find.byWidgetPredicate((widget) => widget is Text && widget.data != null && widget.data!.contains('入力して'));
    final submitButton = find.byType(ElevatedButton);

    await tester.enterText(nameFormField, '');
    await tester.tap(submitButton);
    await tester.pump();
    expect(errorText, findsOneWidget);

    await tester.enterText(nameFormField, 'Test');
    await tester.tap(submitButton);
    await tester.pump();
    expect(errorText, findsNothing);
  });

  testWidgets('更新料金入力必須', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: SubscriptionForm())));

    final renewalFeeFormField = find.byKey(const Key('renewalFee'));

    await tester.enterText(renewalFeeFormField, '');
    await tester.tap(find.text('決定'));
    expect(find.text('更新料金を入力してください'), findsOneWidget);

    await tester.enterText(renewalFeeFormField, '1000');
    await tester.tap(find.text('決定'));
    expect(find.text('更新料金を入力してください'), findsNothing);
  });

  testWidgets('契約開始日入力必須', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: SubscriptionForm())));

    final startAtFormField = find.byKey(const Key('startAt'));

    await tester.enterText(startAtFormField, '');
    await tester.tap(find.text('決定'));
    expect(find.text('契約開始日を入力してください'), findsOneWidget);

    await tester.enterText(startAtFormField, '2022/01/01');
    await tester.tap(find.text('決定'));
    expect(find.text('契約開始日を入力してください'), findsNothing);
  });
}
