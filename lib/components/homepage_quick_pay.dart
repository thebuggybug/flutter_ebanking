import 'package:flutter/material.dart';
import 'package:mobile_banking/utils/quick_pay_icons_utils.dart';

class HomepageQuickPay extends StatelessWidget {
  const HomepageQuickPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            QuickPayIconsUtils(
              iconName: "Send Money",
              iconPath: "lib/assets/icons/money.png",
            ),
            QuickPayIconsUtils(
              iconName: "Statement",
              iconPath: "lib/assets/icons/statement.png",
            ),
            QuickPayIconsUtils(
                iconName: "Load Wallet", iconPath: "lib/assets/icons/wallet.png",),
            QuickPayIconsUtils(
                iconName: "Balance Trend", iconPath: "lib/assets/icons/chart.png"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            QuickPayIconsUtils(
              iconName: "Credit Cards",
              iconPath: "lib/assets/icons/creditcard.png",
            ),
            QuickPayIconsUtils(
              iconName: "Insurance",
              iconPath: "lib/assets/icons/insurance.png",
            ),
            QuickPayIconsUtils(
                iconName: "Medical Bills", iconPath: "lib/assets/icons/medical.png"),
            QuickPayIconsUtils(
                iconName: "Mobile Topup", iconPath: "lib/assets/icons/topup.png"),
          ],
        ),
      ],
    );
  }
}
