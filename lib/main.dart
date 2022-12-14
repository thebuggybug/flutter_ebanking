import 'package:flutter/material.dart';
import 'package:mobile_banking/components/custom_bottom_nav.dart';
import 'package:mobile_banking/pages/homepage.dart';
import 'package:mobile_banking/pages/login_page.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homepage(),
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        bottomNavigationBar: CustomBottomNav(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.deepPurpleAccent.shade400,
            centerTitle: true,
            title: Image.asset(
              "lib/assets/images/logo_name.png",
              // fit: BoxFit.cover,
              // height: 100,
              width: 250,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: LoginPage(),
        ),
      ),
    );
  }
}
