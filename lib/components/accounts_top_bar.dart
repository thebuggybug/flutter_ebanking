import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsTopBar extends StatelessWidget {
  const AccountsTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          color: Colors.grey.shade200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    "lib/assets/images/logo.png",
                    width: 60,
                  ),
                  SizedBox(width:8),
                  Text(
                    "My Account",
                    style: GoogleFonts.lato(
                        fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
