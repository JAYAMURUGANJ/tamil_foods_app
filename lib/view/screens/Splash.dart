import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'CategoryListPage.dart';

class Splash extends StatelessWidget {
  const Splash({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new CategoryListPage(),
        title: new Text(
          'Tamil Foods',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        image: new Image.network(
            "https://4.imimg.com/data4/VO/NB/MY-12051591/cook-service-250x250.png"),
        backgroundColor: Colors.deepPurple,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.white);
  }
}
