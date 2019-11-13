import 'package:flutter/material.dart';
import 'package:shall_we_order_mobile/sign_in.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: ShallWeOrderSplash(),
  ));
}

class ShallWeOrderSplash extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => new _ShallWeOrderSplashState();
}

class _ShallWeOrderSplashState extends State<ShallWeOrderSplash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new ShallWeOrder(),
      title: new Text(
        'Welcome In Splash Screen',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      loaderColor: Colors.red,
    );
  }
}

class ShallWeOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shall We Order',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: SignInPage(),
    );
  }
}
