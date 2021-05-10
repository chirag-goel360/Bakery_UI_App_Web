import 'package:bakery_ui/global.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final Map<String, String> items;

  const MenuCard({
    this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: Image.asset(
            items['image'],
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          items['label'],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 100,
          height: 12,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kBlackColor,
                blurRadius: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
