import 'package:flutter/material.dart';
import 'package:mobile_banking/pages/login_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Colors.grey.shade300,
        child: Column(
          children: [
            LoginPage(),
          ],
        ),
      ),
    );
  }
}
