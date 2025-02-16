import 'package:flutter/material.dart';
import 'package:note/Responsive/responsive.dart';
import 'package:note/screens_panels/body.dart';
import 'package:note/screens_panels/drawer.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: PreferredSize(
        child: (ResponsiveLayout.isTinyLimit(context) ||
                ResponsiveLayout.isTintHightLimit(context)
            ? Container()
            : const AppBarPage()),
        preferredSize: const Size(double.infinity, 100),
      ),
      */
      drawer: const DrawerPage(),
      body: ResponsiveLayout(
          tiny: Container(),
          phone: const Body(),
          tablet: const Body(),
          largetablet: const Body(),
          computer: Row(
            children: const [
              DrawerPage(),
              Expanded(child: Body()),
            ],
          )),
    );
  }
}
