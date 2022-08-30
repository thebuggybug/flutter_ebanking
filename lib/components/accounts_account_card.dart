import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AccountsAccountCard extends StatelessWidget {
  const AccountsAccountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(
                    1.0,
                    1.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Account type
                        Row(
                          children: [
                            Icon(Icons.wallet),
                            SizedBox(width: 12),
                            Text(
                              "Savings General".toUpperCase(),
                              style: GoogleFonts.lato(
                                  fontSize: 26, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        // Account Number
                        Text(
                          "**** 9008",
                          style: GoogleFonts.lato(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10),
                        // Account Balance
                        Row(
                          children: [
                            Text("NRP. 23,090.90",
                                style: GoogleFonts.lato(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.green)),
                            SizedBox(width: 12),
                            Icon(Icons.visibility_off)
                          ],
                        ),
                      ],
                    ),
                    Lottie.network(
                      "https://assets4.lottiefiles.com/packages/lf20_ybqndjkq.json",
                      width: 170,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
