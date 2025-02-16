import 'package:flutter/material.dart';
import 'package:note/constains/constain.dart';

class AnimatedCircleProgress extends StatelessWidget {
  const AnimatedCircleProgress({
    Key? key,
    required this.persectage,
    required this.label,
  }) : super(key: key);
  final double persectage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: persectage),
              duration: defaultDuration,
              builder: (context, double value, child) => Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        color: primaryColor,
                        backgroundColor: darkColor,
                      ),
                      Center(
                        child: Text(
                          (value * 100).toInt().toString() + '%',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  )),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 13.5),
        ),
      ],
    );
  }
}

class LinerProgressIndecator extends StatelessWidget {
  const LinerProgressIndecator({
    Key? key,
    required this.label,
    required this.persentage,
  }) : super(key: key);
  final String label;
  final double persentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: persentage),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(label,
                          style: const TextStyle(
                            color: Colors.white,
                          )),
                      Text((value * 100).toInt().toString() + '%',
                          style: const TextStyle(
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                ],
              )),
    );
  }
}
