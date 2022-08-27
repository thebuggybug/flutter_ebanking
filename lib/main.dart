import 'package:flutter/material.dart';
import 'package:mobile_banking/pages/homepage.dart';

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.red.shade900,
            centerTitle: true,
            title: Image.asset(
              "lib/assets/images/ebl_logo.png",
              fit: BoxFit.cover,
              width: 130,

            ),
          ),
        ),
        body: Homepage(),
      ),
    );
  }
}
