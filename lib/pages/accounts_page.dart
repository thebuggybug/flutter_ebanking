import 'package:flutter/material.dart';
import 'package:mobile_banking/components/accounts_account_card.dart';
import 'package:mobile_banking/components/accounts_chart.dart';
import 'package:mobile_banking/components/accounts_insights.dart';
import 'package:mobile_banking/components/accounts_pp_name.dart';
import 'package:mobile_banking/components/accounts_top_bar.dart';
import 'package:mobile_banking/components/account_quick_tap.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                AccountsTopBar(),
                SizedBox(height: 40),
                AccountsPPName(),
                SizedBox(height: 40),
                AccountsAccountCard(),
                SizedBox(height: 30),
                AccountsInsights(),
                SizedBox(height: 80),
                AccountsQuickTap(),
                SizedBox(height: 40),
                AccountsChart(),
              ],
            ),
          ),
        ));
  }
}
