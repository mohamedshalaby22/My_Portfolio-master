import 'package:flutter/material.dart';
import 'package:note/Responsive/responsive.dart';
import 'package:note/constains/constain.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveLayout.isComputer(context)
          ? Container()
          : AppBar(
              backgroundColor: bgColor,
              elevation: 0.0,
              leading: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            ),
    );
  }
}
