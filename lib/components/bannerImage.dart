import 'package:bakery_ui/global.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class BannerImage extends StatelessWidget {
  final bannerImageData;

  const BannerImage({
    Key key,
    this.bannerImageData,
  }) : super(key: key);

  List<Widget> bannerdata(width) {
    return [
      Flexible(
        child: Image.asset(
          bannerImageData.img,
          width: forMobile(width) ? width * 0.6 : width * 0.3,
          height: forMobile(width) ? width * 0.4 : width * 0.2,
          fit: BoxFit.fill,
        ),
      ),
      forMobile(width)
          ? SizedBox(
              height: 20,
            )
          : SizedBox(
              width: 40,
            ),
      Container(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              bannerImageData.title,
              style: TextStyle(
                color: kGoldenColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              child: Text(
                bannerImageData.desc,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kGoldenColor,
              ),
              onPressed: () {},
              child: Text(
                'Order Now',
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return (forMobile(width))
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: bannerdata(width),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: bannerdata(width),
          );
  }
}
