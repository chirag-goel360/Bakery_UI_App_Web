import 'package:flutter/material.dart';

Color kGoldenColor = Color(0xffad8350);
Color kGreyColor = Color(0xffe4be9e);
Color kWhiteColor = Color(0xfff2f2f2);
Color kBlackColor = Color(0xff1c1c1b);

bool forMobile(width) => (width < 600) ? true : false;
bool forTab(width) => (width < 800) ? true : false;
bool forLaptop(width) => (width < 1080) ? true : false;
