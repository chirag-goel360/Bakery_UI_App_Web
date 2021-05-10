import 'package:bakery_ui/components/curvePath.dart';
import 'package:bakery_ui/global.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String label;

  const TitleSection({
    Key key,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 20,
          ),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'GreatVibes',
              fontSize: 34,
            ),
          ),
        ),
        ClipPath(
          clipper: MyPath(),
          child: Container(
            width: 200,
            height: 40,
            color: kGoldenColor,
          ),
        ),
      ],
    );
  }
}
