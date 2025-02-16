import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:note/constains/constain.dart';
import 'package:note/screens_panels/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My_portfolio',
      theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          appBarTheme: const AppBarTheme(
              backgroundColor: bgColor,
              elevation: 0.0,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  statusBarIconBrightness: Brightness.light))),
      home: const SplashScreen(),
    );
  }
}
