import 'package:bakery_ui/components/ButtonTapListener.dart';
import 'package:bakery_ui/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    SuperBakery(),
  );
}

class SuperBakery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ButtonTapListenerClass>(
      create: (context) => ButtonTapListenerClass(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bakery Shop',
        darkTheme: ThemeData(
          fontFamily: 'Cormorant',
        ),
        home: HomePage(),
        theme: ThemeData(
          brightness: Brightness.dark,
          visualDensity: VisualDensity(
            horizontal: 2.0,
            vertical: 2.0,
          ),
          primaryColorLight: Color(0xff03203C),
          primaryColorDark: Color(0xff242B2E),
          iconTheme: IconThemeData(
            color: Colors.amber,
            size: 20.0,
            opacity: 10,
          ),
          accentColor: Colors.amber,
          accentColorBrightness: Brightness.light,
        ),
      ),
    );
  }
}
