import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_banking/components/carousel.dart';
import 'package:mobile_banking/components/login_connect.dart';
import 'package:mobile_banking/components/login_tabs.dart';
import 'package:mobile_banking/components/quick_pay_tabs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Carousel(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginTabs(),
              // Quick Pay Tabs
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.shade200,
                ),
                //top column
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "lib/assets/images/crypto_pay.png",
                            width: 120,
                          ),
                          Row(
                            children: [
                              Text(
                                "Load More ",
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.deepPurpleAccent.shade400,
                                ),
                              ),
                              Icon(Icons.arrow_right_alt, color: Colors.black54)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    QuickPayTabs(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 40),
              // Connect Us Tab
              LoginConnect()
            ],
          ),
        ),
      ],
    );
  }
}
