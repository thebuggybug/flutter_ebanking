import 'package:flutter/material.dart';
import 'package:mobile_banking/components/homepage_account_details_card.dart';
import 'package:mobile_banking/components/homepage_quick_pay.dart';
import 'package:mobile_banking/components/homepage_top_bar.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:mobile_banking/components/recent_transactions.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.home, color: Colors.red),
          Icon(Icons.account_circle, color: Colors.red),
          Icon(
            Icons.qr_code_scanner,
            color: Colors.red,
            size: 40,
          ),
          Icon(Icons.more_horiz_outlined, color: Colors.red),
          Icon(Icons.list, color: Colors.red),
        ],
        inactiveIcons: const [
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.account_circle, color: Colors.black),
          Icon(
            Icons.qr_code_scanner,
            color: Colors.black,
          ),
          Icon(Icons.more_horiz_rounded, color: Colors.black),
          Icon(Icons.list, color: Colors.black),
        ],
        color: Colors.white,
        height: 100,
        circleWidth: 70,
        initIndex: 2,
        onChanged: (v) {
          // TODO
        },
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
        shadowColor: Colors.black26,
        elevation: 04,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              children: [
                // Top Bar
                HomepageTopBar(),
                SizedBox(height: 30),
                HomepageAccountDetailsCard(),
                SizedBox(height: 30),
                HomepageQuickPay(),
                SizedBox(height: 30),

                RecentTransactions()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
