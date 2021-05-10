import 'dart:async';
import 'package:bakery_ui/components/bannerImage.dart';
import 'package:bakery_ui/components/titleSection.dart';
import 'package:bakery_ui/data/appData.dart';
import 'package:bakery_ui/global.dart';
import 'package:flutter/material.dart';

class BannerContainer extends StatefulWidget {
  @override
  _BannerContainerState createState() => _BannerContainerState();
}

class _BannerContainerState extends State<BannerContainer> {
  final _pageController = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    Timer.periodic(
      Duration(
        seconds: 3,
      ),
      (timer) {
        (currentIndex >= bannerDataList.length)
            ? currentIndex = 0
            : currentIndex++;
        if (_pageController.hasClients) {
          _pageController.animateToPage(
            currentIndex,
            duration: Duration(
              milliseconds: 500,
            ),
            curve: Curves.easeIn,
          );
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void pageChanged(i) {
    setState(() {
      currentIndex = i;
    });
  }

  List<Widget> _responsiveImage() {
    return [
      TitleSection(
        label: 'Bakery Shop',
      ),
      Expanded(
        child: PageView.builder(
          onPageChanged: pageChanged,
          controller: _pageController,
          itemCount: bannerDataList.length,
          itemBuilder: (_, i) => BannerImage(
            bannerImageData: bannerDataList[i],
          ),
        ),
      ),
    ];
  }

  Widget imageDot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        bannerDataList.length,
        (index) => Container(
          margin: EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 20,
          ),
          width: (currentIndex == index) ? 15 : 10,
          height: (currentIndex == index) ? 15 : 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (currentIndex == index) ? kGoldenColor : kGreyColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        (forMobile(width))
            ? Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _responsiveImage(),
                ),
              )
            : Expanded(
                child: Row(
                  children: _responsiveImage(),
                ),
              ),
        imageDot(),
      ],
    );
  }
}
