import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleNavBar(
        activeIcons: const [
          Icon(Icons.home, color: Colors.red),
          Icon(Icons.payments_outlined, color: Colors.red),
          Icon(
            Icons.qr_code_scanner,
            color: Colors.red,
            size: 40,
          ),
          Icon(Icons.map_outlined, color: Colors.red),
          Icon(Icons.list, color: Colors.red),
        ],

        //
        inactiveIcons: const [
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.payments_outlined, color: Colors.black),
          Icon(
            Icons.qr_code_scanner,
            color: Colors.black,
          ),
          Icon(Icons.map_outlined, color: Colors.black),
          Icon(Icons.list, color: Colors.black),
        ],
        color: Colors.grey.shade100,
        height: 100,
        circleWidth: 70,
        initIndex: 2,
        onChanged: (v) {
          // TODO
        },
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        shadowColor: Colors.black26,
        elevation: 04,
      ),
    );
  }
}
