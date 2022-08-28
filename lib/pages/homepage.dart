import 'package:flutter/material.dart';
import 'package:mobile_banking/components/homepage_account_details_card.dart';
import 'package:mobile_banking/components/homepage_top_bar.dart';
import 'package:mobile_banking/pages/login_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            HomepageTopBar(),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              child: PageView(
                children: [
                  HomepageAccountDetailsCard(),
                  HomepageAccountDetailsCard(),
                  HomepageAccountDetailsCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
