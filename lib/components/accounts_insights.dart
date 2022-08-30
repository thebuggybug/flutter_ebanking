import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsInsights extends StatelessWidget {
  const AccountsInsights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  width: 120,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(
                      side: BorderSide(width: 3, color: Colors.blue),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text("Actual Balance",
                          style: GoogleFonts.lato(fontWeight: FontWeight.w500)),
                      SizedBox(height: 2),
                      Text("Rs. 24,222.99",
                          style: GoogleFonts.lato(fontWeight: FontWeight.w900))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  width: 120,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(
                      side: BorderSide(width: 3, color: Colors.orange),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text("Interest Rate",
                          style: GoogleFonts.lato(fontWeight: FontWeight.w500)),
                      SizedBox(height: 2),
                      Text("6.85%",
                          style: GoogleFonts.lato(fontWeight: FontWeight.w900))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  width: 120,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(
                      side: BorderSide(width: 3, color: Colors.green),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text("Interest Gained",
                          style: GoogleFonts.lato(fontWeight: FontWeight.w500)),
                      SizedBox(height: 2),
                      Text("Rs. 422.19",
                          style: GoogleFonts.lato(fontWeight: FontWeight.w900))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
