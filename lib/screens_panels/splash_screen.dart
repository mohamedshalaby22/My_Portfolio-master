import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note/Responsive/widget_tree.dart';
import 'package:note/constains/constain.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const WidgetTree()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: const Duration(seconds: 2),
                builder: (context, double value, child) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          (value * 100).toInt().toString() + '%',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                        const SizedBox(
                          height: defaultPadding / 2,
                        ),
                        LinearProgressIndicator(
                          value: value,
                          color: primaryColor,
                          backgroundColor: const Color(0xff242430),
                        ),
                      ],
                    ))),
      ),
    );
  }
}
/*
COUNTER 
TweenAnimationBuilder(
                          tween: IntTween(begin: 0, end: 100),
                          duration: Duration(seconds: 2),
                          builder: (context, value, child) => Column(
                            children: [
                              Text(
                                '$value ',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        )
*/