// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:note/Responsive/responsive.dart';
import 'package:note/componentes/conponentes.dart';
import 'package:note/componentes/lists.dart';
import 'package:note/constains/constain.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveLayout.isComputer(context)
          ? null
          : AppBar(
              leading: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            AspectRatio(
                aspectRatio: ResponsiveLayout.isPhoneLimit(context) ? 2.5 : 3,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assests/mon.jpg',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: darkColor.withOpacity(0.65),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: defaultPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (ResponsiveLayout.isComputer(context) ||
                              ResponsiveLayout.isLargetabletLimit(context))
                            const Text(
                              'Discover my Amazing \nArt Space!',
                              style: TextStyle(
                                  height: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35),
                            )
                          else
                            const Text(
                              'Discover my Amazing \nArt Space!',
                              style: TextStyle(
                                  height: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          const SizedBox(
                            height: defaultPadding / 2,
                          ),
                          Row(
                            children: [
                              if (!ResponsiveLayout.isPhoneLimit(context))
                                const TextSppan()
                              else
                                const SizedBox(),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'I build',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText(
                                      'responsive web and mobile app',
                                      textStyle:
                                          const TextStyle(color: Colors.white)),
                                  TyperAnimatedText(
                                      'complete e-Commerce app Ui',
                                      textStyle:
                                          const TextStyle(color: Colors.white)),
                                  TyperAnimatedText('complete Quran app',
                                      textStyle:
                                          const TextStyle(color: Colors.white)),
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              if (!ResponsiveLayout.isPhoneLimit(context))
                                const TextSppan()
                              else
                                const SizedBox(),
                            ],
                          ),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          Column(
                            children: [
                              if (!ResponsiveLayout.isPhoneLimit(context))
                                ElevatedButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: primaryColor,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: defaultPadding * 2,
                                            vertical: defaultPadding)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Explore Now',
                                      style: TextStyle(color: darkColor),
                                    ))
                              else
                                Container(),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding / 2, vertical: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!ResponsiveLayout.isPhoneLimit(context))
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextUnder(title: '60K+', text: 'Subscribers'),
                        TextUnder(title: '20+', text: 'Videos'),
                        TextUnder(title: '15+', text: 'GitHub Projects'),
                        TextUnder(title: '17K+', text: 'Stars'),
                      ],
                    )
                  else
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            TextUnder(title: '60K+', text: 'Subscribers'),
                            TextUnder(title: '20+', text: 'Videos'),
                          ],
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            TextUnder(title: '15+', text: 'GitHub Projects'),
                            TextUnder(title: '17K+', text: 'Stars'),
                          ],
                        )
                      ],
                    ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: defaultPadding, bottom: defaultPadding),
                    child: text1(text: 'My Projects+'),
                  ),
                  ResponsiveLayout(
                    tiny: Container(),
                    phone: const Projectsdata(
                      count: 1,
                      aspct: 1.8,
                    ),
                    tablet: const Projectsdata(
                      count: 2,
                      aspct: 1.1,
                    ),
                    largetablet: const Projectsdata(),
                    computer: const Projectsdata(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: defaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const text1(text: 'Recommendations'),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              recommendation.length,
                              (index) => RecommendationList(index),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding RecommendationList(int index) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        width: 400,
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recommendation[index].name!,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              recommendation[index].source!,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              recommendation[index].text!,
              style: const TextStyle(
                height: 1.5,
                fontSize: 11,
                color: Colors.grey,
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class Projectsdata extends StatelessWidget {
  const Projectsdata({
    Key? key,
    this.count = 3,
    this.aspct = 1.3,
  }) : super(key: key);
  final int count;
  final double aspct;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: aspct,
            crossAxisCount: count,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(defaultPadding),
              color: secondaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projects[index].title!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Text(
                    projects[index].description!,
                    style: const TextStyle(
                      height: 1.5,
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                    maxLines: ResponsiveLayout.isPhoneLimit(context) ? 3 : 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Read More>>',
                        style: TextStyle(
                          fontSize: 12,
                          color: primaryColor,
                        ),
                      ))
                ],
              ),
            ));
  }
}

class TextUnder extends StatelessWidget {
  const TextUnder({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(color: primaryColor),
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

class TextSppan extends StatelessWidget {
  const TextSppan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(text: '<', style: TextStyle(color: Colors.white), children: [
        TextSpan(text: 'Flutter', style: TextStyle(color: primaryColor)),
        TextSpan(text: '>', style: TextStyle(color: Colors.white))
      ]),
    );
  }
}
