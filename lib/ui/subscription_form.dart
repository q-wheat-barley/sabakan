import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class SubscriptionForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final String? initialName;
  final int? initialRenewalFee;
  final int? initialContractPeriodNum;
  final ContractPeriodUnit initialContractPeriodUnit;
  final DateTime? initialStartAt;
  final void Function(String name, int renewalFee, int contractPeriodNum, ContractPeriodUnit contractPeriodUnit, DateTime initialStartAt)? onSubmitted;

  SubscriptionForm({
    super.key,
    this.initialName,
    this.initialRenewalFee,
    this.initialContractPeriodNum,
    this.initialContractPeriodUnit = ContractPeriodUnit.days,
    this.initialStartAt,
    this.onSubmitted,
  });

  @override
  /// サブスクの情報を入力するフォームを生成します。
  ///
  /// このフォームには、サブスク名、更新料金、契約期間、契約開始日の4つの入力欄があります。
  ///
  /// 各入力欄には、バリデーションが設定されており、入力された値が不正な場合にはエラーが表示されます。
  ///
  /// フォームの内容が正しい場合には、[onSubmitted] を呼び出して、サブスクの情報を渡します。
  Widget build(BuildContext context) {
    final DateFormat dateFormatter = DateFormat('yyyy/MM/dd');
    final TextEditingController nameController = TextEditingController(text: initialName);
    final TextEditingController renewalFeeController = TextEditingController(text: initialRenewalFee?.toString());
    final TextEditingController contractPeriodNumController = TextEditingController(text: initialContractPeriodNum?.toString());
    ContractPeriodUnit contractPeriodUnit = initialContractPeriodUnit;
    final startAtController = TextEditingController(text: initialStartAt != null ? dateFormatter.format(initialStartAt!) : '');
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // サブスク名入力欄
          TextFormField(
            key: const Key('name'),
            controller: nameController,
            decoration: InputDecoration(labelText: 'サブスク名*', hintText: '例: マイサブスク'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'サブスク名を入力してください';
              }
              return null;
            },
          ),
          // 更新料金入力欄
          TextFormField(
            key: const Key('renewalFee'),
            controller: renewalFeeController,
            decoration: InputDecoration(labelText: '更新料金*', hintText: '例: 1000', prefix: Icon(Icons.currency_yen)),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '更新料金を入力してください';
              }
              return null;
            },
          ),
          // 契約期間入力欄
          Row(
            children: [
              // 契約期間数値入力欄
              Expanded(
                flex: 2,
                child: TextFormField(
                  key: const Key('contractPeriodNum'),
                  controller: contractPeriodNumController,
                  decoration: InputDecoration(labelText: '契約期間*', hintText: '例: 30'),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '契約期間を入力してください';
                    }
                    return null;
                  },
                ),
              ),
              // 契約期間単位入力欄
              Expanded(
                flex: 1,
                child: DropdownButtonFormField<ContractPeriodUnit>(
                  key: const Key('contractPeriodUnit'),
                  initialValue: null,
                  decoration: InputDecoration(labelText: '単位*'),
                  // items: ContractPeriodUnit.values.map((unit) => DropdownMenuItem(value: unit, child: Text(unit.name))).toList(),
                  items: [
                    DropdownMenuItem(value: ContractPeriodUnit.days, child: Text('日')),
                    DropdownMenuItem(value: ContractPeriodUnit.months, child: Text('月')),
                    DropdownMenuItem(value: ContractPeriodUnit.years, child: Text('年')),
                  ],
                  onChanged: (value) {
                    if (value == null) return;
                    contractPeriodUnit = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      return '契約期間単位を選択してください';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          // 契約開始日入力欄
          TextFormField(
            key: const Key('startAt'),
            readOnly: true,
            controller: startAtController,
            decoration: InputDecoration(labelText: '契約開始日*', hintText: '例: 2023/01/01'),
            onTap: () async {
              final now = DateTime.now();
              final firstDate = now.subtract(const Duration(days: 365));
              final lastDate = now.add(const Duration(days: 365));
              final selectedDate = await showDatePicker(context: context, firstDate: firstDate, lastDate: lastDate, initialDate: now);
              if (selectedDate != null) {
                startAtController.text = dateFormatter.format(selectedDate);
              }
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '契約開始日を入力してください';
              }
              return null;
            },
          ),
          // 決定ボタン
          ElevatedButton(
            onPressed: () {
              if (!_formKey.currentState!.validate()) return;

              final name = nameController.text;
              final renewalFee = int.tryParse(renewalFeeController.text) ?? 0;
              final contractPeriodNum = int.tryParse(contractPeriodNumController.text) ?? 0;
              final startAt = startAtController.text.isNotEmpty ? dateFormatter.parse(startAtController.text) : null;

              if (onSubmitted == null) return;
              onSubmitted!(name, renewalFee, contractPeriodNum, contractPeriodUnit, startAt!);
            },
            child: Text('決定'),
          ),
        ],
      ),
    );
  }
}

enum ContractPeriodUnit { days, months, years }
