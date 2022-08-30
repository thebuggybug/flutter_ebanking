import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDetailsCardUtils extends StatelessWidget {
  final String typeOfAccount;
  final String accountStatus;
  final String accountNumber;
  final String accountName;
  final String accountBalance;
  final String accountInterest;
  final cardColor;
  final textColor;

  const AccountDetailsCardUtils({
    Key? key,
    required this.typeOfAccount,
    required this.accountStatus,
    required this.accountNumber,
    required this.accountName,
    required this.accountBalance,
    required this.accountInterest,
    required this.cardColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 200,
      // width: 300,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                typeOfAccount.toUpperCase(),
                style: GoogleFonts.lato(fontSize: 22, color: textColor),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.orangeAccent.shade100,
                ),
                alignment: Alignment.center,
                height: 30,
                width: 60,
                child: Text(
                  accountStatus,
                  style: GoogleFonts.lato(
                      fontSize: 18, fontWeight: FontWeight.w900),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 6,
              ),
              Icon(
                Icons.wallet,
                color: textColor,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                accountNumber,
                style: GoogleFonts.lato(
                    fontSize: 22,
                    color: textColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                accountBalance,
                style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: textColor),
              ),
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.visibility_off,
                color: textColor,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              accountName.toUpperCase(),
              style: GoogleFonts.lato(
                  fontSize: 20, fontWeight: FontWeight.w600, color: textColor),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Actual Balance",
                    style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    accountBalance,
                    style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: textColor),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Acquired Interest",
                    style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    accountInterest,
                    style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: textColor),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
