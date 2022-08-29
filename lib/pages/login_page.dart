import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_banking/components/carousel.dart';
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
                            "lib/assets/images/fonepay.png",
                            width: 80,
                          ),
                          Row(
                            children: [
                              Text(
                                "Load More ",
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red.shade900,
                                ),
                              ),
                              Icon(Icons.arrow_right_alt,
                                  color: Colors.red.shade900)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    QuickPayTabs(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              // Connect Us Tab
              Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Column(
                  children: [
                    Text(
                      "Connect with us",
                      style: GoogleFonts.lato(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "lib/assets/icons/facebook.png",
                            width: 50,
                          ),
                          Image.asset(
                            "lib/assets/icons/twitter.png",
                            width: 50,
                          ),
                          Image.asset(
                            "lib/assets/icons/linkedin.png",
                            width: 50,
                          ),
                          Image.asset(
                            "lib/assets/icons/instagram.png",
                            width: 50,
                          ),
                          Image.asset(
                            "lib/assets/icons/youtube.png",
                            width: 50,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
