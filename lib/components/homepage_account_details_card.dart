import 'package:flutter/material.dart';

class HomepageAccountDetailsCard extends StatelessWidget {
  const HomepageAccountDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 200,
      // width: 300,
      decoration: BoxDecoration(
        color: Colors.redAccent.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Savings General"),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.orangeAccent.shade100,
                ),
                alignment: Alignment.center,
                height: 30,
                width: 50,
                child: Text("Active"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.wallet),
              Text("Acc Number"),
            ],
          ),
          Row(
            children: [
              Text("Npr. 18090"),
              Icon(Icons.visibility),
            ],
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Text("Rohan"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Actual Balance"),
                  Text("20000"),
                ],
              ),
              Column(
                children: [
                  Text("Acquired Interest"),
                  Text("129"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
