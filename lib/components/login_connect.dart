import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginConnect extends StatelessWidget {
  const LoginConnect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 100),
      child: Column(
        children: [
          Text(
            "Connect with us :",
            style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
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
    );
  }
}
