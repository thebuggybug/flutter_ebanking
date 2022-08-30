import 'package:flutter/material.dart';
import 'package:mobile_banking/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_banking/pages/accounts_page.dart';

class HomepageTopBar extends StatelessWidget {
  const HomepageTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "lib/assets/images/logo.png",
                width: 40,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning !",
                    style: GoogleFonts.lato(
                        fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Rohan Manandhar",
                    style: GoogleFonts.lato(
                        fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "lib/assets/icons/notification.png",
                color: Colors.deepPurpleAccent.shade400,
                width: 25,
              ),
              SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Center(
                        child: Text(
                          'Asia World Bank',
                          style: GoogleFonts.lato(
                              fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                      ),
                      content: Container(
                        alignment: Alignment.center,
                        height: 18,
                        child: Text(
                          'Are you sure to logout ?',
                          style: GoogleFonts.lato(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      actions: <Widget>[
                        Row(
                          children: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: Text(
                                'Cancel',
                                style: GoogleFonts.lato(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyApp()),
                                );
                              },
                              child: Text(
                                'Logout',
                                style: GoogleFonts.lato(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        )
                      ],
                    ),
                  );
                },
                child: Image.asset(
                  "lib/assets/icons/exit.png",
                  color: Colors.deepPurpleAccent.shade100,
                  width: 25,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountsPage()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "lib/assets/images/pp.jpg",
                    width: 40,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
