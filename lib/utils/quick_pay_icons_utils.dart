import 'package:flutter/material.dart';

class QuickPayIconsUtils extends StatelessWidget {
  final String iconPath;
  final String iconName;

  const QuickPayIconsUtils(
      {Key? key, required this.iconName, required this.iconPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 72,
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.only(top: 16, bottom: 20, left: 18, right: 18),
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              iconPath,
              // width: 50,
              color: Colors.red.shade900,

            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(iconName)
        ],
      ),
    );
  }
}
