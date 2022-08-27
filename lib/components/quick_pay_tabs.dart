import 'package:flutter/material.dart';
import 'package:mobile_banking/utils/quick_pay_icons_utils.dart';

class QuickPayTabs extends StatefulWidget {
  const QuickPayTabs({Key? key}) : super(key: key);

  @override
  State<QuickPayTabs> createState() => _QuickPayTabsState();
}

class _QuickPayTabsState extends State<QuickPayTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              QuickPayIconsUtils(
                  iconName: "Bank", iconPath: "lib/assets/icons/bank.png"),
              QuickPayIconsUtils(
                  iconName: "Bus", iconPath: "lib/assets/icons/bus.png"),
              QuickPayIconsUtils(
                  iconName: "Cable Car",
                  iconPath: "lib/assets/icons/cable_car.png"),
              QuickPayIconsUtils(
                  iconName: "Cinemas",
                  iconPath: "lib/assets/icons/cinemas.png"),
              QuickPayIconsUtils(
                  iconName: "Credit Cd. Payment",
                  iconPath: "lib/assets/icons/creditcard.png"),
              QuickPayIconsUtils(
                  iconName: "Electricity",
                  iconPath: "lib/assets/icons/electricity.png"),
              QuickPayIconsUtils(
                  iconName: "Flight",
                  iconPath: "lib/assets/icons/airplane.png"),
              QuickPayIconsUtils(
                  iconName: "Insurance",
                  iconPath: "lib/assets/icons/insurance.png"),
              QuickPayIconsUtils(
                  iconName: "Internet",
                  iconPath: "lib/assets/icons/internet.png"),
              QuickPayIconsUtils(
                  iconName: "Medical Bills",
                  iconPath: "lib/assets/icons/medical.png"),
              QuickPayIconsUtils(
                  iconName: "Offers", iconPath: "lib/assets/icons/offer.png"),
              QuickPayIconsUtils(
                  iconName: "Park", iconPath: "lib/assets/icons/park.png"),
              QuickPayIconsUtils(
                  iconName: "Saving", iconPath: "lib/assets/icons/savings.png"),
              QuickPayIconsUtils(
                  iconName: "School Fees",
                  iconPath: "lib/assets/icons/school.png"),
              QuickPayIconsUtils(
                  iconName: "Send Money",
                  iconPath: "lib/assets/icons/sendMoney.png"),
              QuickPayIconsUtils(
                  iconName: "Social Security",
                  iconPath: "lib/assets/icons/social_security.png"),
              QuickPayIconsUtils(
                  iconName: "Statement",
                  iconPath: "lib/assets/icons/statement.png"),
              QuickPayIconsUtils(
                  iconName: "Travels",
                  iconPath: "lib/assets/icons/travels.png"),
              QuickPayIconsUtils(
                  iconName: "Television", iconPath: "lib/assets/icons/tv.png"),
              QuickPayIconsUtils(
                  iconName: "Water", iconPath: "lib/assets/icons/water.png"),
            ],
          ),
          SizedBox(
            width: 6,
          ),
        ],
      ),
    );
  }
}
