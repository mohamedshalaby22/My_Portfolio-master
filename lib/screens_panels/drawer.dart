// ignore_for_file: camel_case_types,

import 'package:flutter/material.dart';
import 'package:note/Responsive/responsive.dart';
import 'package:note/componentes/animation.dart';
import 'package:note/componentes/conponentes.dart';
import 'package:note/constains/constain.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: bgColor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                if (!ResponsiveLayout.isComputer(context))
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close),
                      color: primaryColor,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(defaultPadding / 2),
                  child: AspectRatio(
                    aspectRatio: 1.32,
                    child: Container(
                      color: const Color(0xff242430),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Spacer(),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assests/avatar.jpg'),
                          ),
                          Spacer(),
                          Text(
                            'Mohamed Shalaby',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'Flutter Developer For Android And Ios',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w200,
                              height: 1.5,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const buildText(
                          title: 'Langauge',
                          text: 'English',
                        ),
                        const buildText(
                          title: 'City',
                          text: 'Egypt',
                        ),
                        const buildText(
                          title: 'Age',
                          text: '22',
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.2,
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: defaultPadding),
                          child: text1(
                            text: 'Skills',
                          ),
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: AnimatedCircleProgress(
                                persectage: 0.90,
                                label: 'Flutter',
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              child: AnimatedCircleProgress(
                                persectage: 0.85,
                                label: 'Dart',
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              child: AnimatedCircleProgress(
                                persectage: 0.65,
                                label: 'Firebase',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: defaultPadding),
                              child: text1(
                                text: 'Coding',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            LinerProgressIndecator(
                              persentage: 0.7,
                              label: 'Java',
                            ),
                            LinerProgressIndecator(
                              persentage: 0.9,
                              label: 'HTML',
                            ),
                            LinerProgressIndecator(
                              persentage: 0.80,
                              label: 'Css',
                            ),
                            LinerProgressIndecator(
                              persentage: 0.75,
                              label: 'Jquery',
                            ),
                            LinerProgressIndecator(
                              persentage: 0.58,
                              label: 'Python',
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.2,
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: defaultPadding),
                          child: text1(
                            text: 'Knowledge',
                          ),
                        ),
                        SizedBox(),
                        const text2(
                          text: 'Flutter,Dart',
                        ),
                        const text2(
                          text: 'Styles,Sass,Less',
                        ),
                        const text2(
                          text: 'Gulp,Webpack,Grunt',
                        ),
                        const text2(
                          text: 'Git Knowledge',
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.2,
                        ),
                        const SizedBox(height: defaultPadding / 2),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'DOWNLOAD CV',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13.5),
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                        Container(
                           padding: const EdgeInsets.all(defaultPadding/2),
                          margin:
                              const EdgeInsets.only(top: defaultPadding / 2),
                          color: const Color(0xff24242e),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                             
                              imageLink(
                                image: 'assests/3.png',
                                onPress: () {},
                              ),
                              imageLink(
                                image: 'assests/1.png',
                                onPress: () {},
                              ),
                              imageLink(
                                image: 'assests/2.png',
                                onPress: () {},
                              ),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
