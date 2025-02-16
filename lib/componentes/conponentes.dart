// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:note/constains/constain.dart';

class imageLink extends StatelessWidget {
  const imageLink({
    Key? key,
    required this.image,
    required this.onPress,
  }) : super(key: key);
  final String image;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onPress!();
        },
        child: CircleAvatar(
            radius: 17,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(image)));
  }
}

class text2 extends StatelessWidget {
  const text2({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: primaryColor,
            size: 18,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.grey, fontSize: 13.5),
          ),
        ],
      ),
    );
  }
}

class text1 extends StatelessWidget {
  const text1({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 15),
    );
  }
}

class buildText extends StatelessWidget {
  const buildText({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
