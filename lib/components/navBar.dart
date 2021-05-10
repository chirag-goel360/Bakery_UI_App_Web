import 'package:bakery_ui/global.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Products',
          style: TextStyle(
            color: kGoldenColor,
          ),
        ),
        Text(
          'Services',
          style: TextStyle(
            color: kGoldenColor,
          ),
        ),
        Text(
          'About Us',
          style: TextStyle(
            color: kGoldenColor,
          ),
        ),
        Text(
          'Contact Us',
          style: TextStyle(
            color: kGoldenColor,
          ),
        ),
      ],
    );
  }
}
