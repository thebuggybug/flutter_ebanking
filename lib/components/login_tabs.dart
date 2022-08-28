import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_banking/pages/homepage.dart';

class LoginTabs extends StatefulWidget {
  const LoginTabs({Key? key}) : super(key: key);

  @override
  State<LoginTabs> createState() => _LoginTabsState();
}

class _LoginTabsState extends State<LoginTabs> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mobile Number",
          style: GoogleFonts.lato(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black87, width: 2.0),
              ),
              hintText: 'Enter your e-banking number'),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Password",
          style: GoogleFonts.lato(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black87, width: 2.0),
                // borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: 'Enter your password'),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: isChecked,
                activeColor: Colors.red.shade900,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            Text(
              "Remember me",
              style:
                  GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        // Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Homepage();
                }));
              },
              child: Text(
                "Login",
                style:
                    GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade900, fixedSize: Size(320, 50)),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.fingerprint_outlined,
                size: 28,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade900, fixedSize: Size(90, 50)),
            )
          ],
        ),
        //
        SizedBox(
          height: 20,
        ),
        // Activate your account
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Activate your account",
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Text(
              "Forgot password ?",
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        // Quick Toggler
      ],
    );
  }
}
