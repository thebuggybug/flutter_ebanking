import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsQuickTapUtils extends StatelessWidget {
  final iconPath;
  final iconName;

  const AccountsQuickTapUtils({
    Key? key,
    required this.iconPath,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: 95,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 8.0,
              spreadRadius: 2.0,
            ),
            // BoxShadow(
            //   color: Colors.grey,
            //   offset: const Offset(0.0, 0.0),
            //   blurRadius: 0.0,
            //   spreadRadius: 0.0,
            // ),
          ]),
      child: Column(
        children: [
          Image.asset(
            iconPath,
            width: 50,
             color: Colors.deepPurple.shade400

          ),
          SizedBox(
            height: 4,
          ),
          Text(iconName,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.w700, fontSize: 15)),
        ],
      ),
    );
  }
}
