import 'package:flutter/material.dart';

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
                "lib/assets/images/ebl.png",
                width: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text("My Home"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "lib/assets/icons/notification.png",
                color: Colors.red.shade900,
                width: 25,
              ),
              SizedBox(
                width: 18,
              ),
              Image.asset(
                "lib/assets/icons/exit.png",
                color: Colors.red.shade900,
                width: 25,
              ),
              SizedBox(
                width: 18,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "lib/assets/images/pp.jpg",
                  width: 40,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
