import 'package:flutter/material.dart';
import 'package:mobile_banking/utils/accounts_quick_tap_utils.dart';

class AccountsQuickTap extends StatelessWidget {
  const AccountsQuickTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AccountsQuickTapUtils(
                iconPath: "lib/assets/icons/bank.png", iconName: "Contact Bank"),
            AccountsQuickTapUtils(
                iconPath: "lib/assets/icons/insurance.png", iconName: "Insurance"),
            AccountsQuickTapUtils(
                iconPath: "lib/assets/icons/creditcard.png", iconName: "Credit Cards"),
            AccountsQuickTapUtils(
                iconPath: "lib/assets/icons/transaction.png", iconName: "Statement"),
          ],
        ),
      ),
    );
  }
}
