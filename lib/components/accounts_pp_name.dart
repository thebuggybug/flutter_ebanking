import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsPPName extends StatelessWidget {
  const AccountsPPName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            // Profile Pic
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "lib/assets/images/pp.jpg",
                width: 100,
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rohan ".toUpperCase(),
                  style: GoogleFonts.lato(
                      fontSize: 34, fontWeight: FontWeight.w800, color: Colors.deepPurpleAccent.shade400),
                ),
                Text(
                  "Manandhar".toUpperCase(),
                  style: GoogleFonts.lato(
                      fontSize: 34, fontWeight: FontWeight.w800, color: Colors.deepPurpleAccent.shade400),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "984 **** 321",
                  style: GoogleFonts.lato(
                      fontSize: 16, fontWeight: FontWeight.w600, ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
