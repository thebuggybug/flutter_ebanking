import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_banking/utils/homepage_recent_trans.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recent Transactions :",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w800, fontSize: 28)),
            SizedBox(
              height: 22,
            ),
            HomepageRecentTrans(
                icon: "lib/assets/icons/medical.png",
                title: "Paid medical bills",
                subtitle: "You paid NRS. 5,400 to Dr. Godatta Prasad for ..."),
            SizedBox(
              height: 18,
            ),
            HomepageRecentTrans(
                icon: "lib/assets/icons/airplane.png",
                title: "Purchased flight ticket",
                subtitle:
                    "You paid NRS. 8,200 to Buddha Air flight ticket ..."),
            SizedBox(
              height: 18,
            ),
            HomepageRecentTrans(
                icon: "lib/assets/icons/receivemoney.png",
                title: "Received funds from bank",
                subtitle: "You received NRS. 18,900 from NMB Bank. Info..."),
            SizedBox(
              height: 18,
            ),
            HomepageRecentTrans(
                icon: "lib/assets/icons/school.png",
                title: "Paid Aryush's school fees",
                subtitle:
                    "You paid NRS. 31,100 to ASIA School. Details fe ..."),
          ],
        ),
      ),
    );
  }
}
