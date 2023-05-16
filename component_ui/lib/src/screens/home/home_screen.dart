import 'dart:math';

import 'package:component_ui/constants/constant.dart';
import 'package:component_ui/src/widgets/buttons/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math' as math;

final List<Map<String, String>> products = [
  {
    'img':
        'https://th.bing.com/th/id/R.f49bbfa5ea851c6a74fd23e570188adf?rik=ig2CQMyc0t7pjg&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fsushi-roll-png-gallery-of-sushi-roll-png-2060.png&ehk=Pkg%2by1mqgE%2bYFJoN01g7ltuERXcoEWb%2buK4y7q%2bZ0Pk%3d&risl=&pid=ImgRaw&r=0',
    'product': 'Dabu',
    'categoria': 'Rollos',
  },
  {
    'img':
        'https://th.bing.com/th/id/R.f49bbfa5ea851c6a74fd23e570188adf?rik=ig2CQMyc0t7pjg&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fsushi-roll-png-gallery-of-sushi-roll-png-2060.png&ehk=Pkg%2by1mqgE%2bYFJoN01g7ltuERXcoEWb%2buK4y7q%2bZ0Pk%3d&risl=&pid=ImgRaw&r=0',
    'product': 'Producto 2',
    'categoria': 'Ceviche',
  },
];

const List<dynamic> color = [
  Color.fromARGB(255, 9, 169, 209),
  Color.fromARGB(255, 11, 240, 3),
  Color.fromARGB(255, 206, 157, 142),
  Color.fromARGB(255, 53, 70, 71),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = 0;

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              initialPage: 2,
              autoPlay: true,
              height: 500,
            ),
            
            items: products.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  count > 2 ? count = 0 : count++;
                  return Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Image(
                          color: color[count],
                          image: const AssetImage('assets/bg/carusel.png'),
                          fit: BoxFit.cover,
                          width: 1000.0,
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0, 0.14),
                          child: Image.network(
                            item['img']!,
                            width: 360,
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.02, -0.74),
                          child: Text(
                            item['categoria']!,
                            style: const TextStyle(
                              fontFamily: 'Cotton Candies',
                              color: kWhiteColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.02, -0.54),
                          child: Text(
                            item['product']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: kWhiteColor,
                                fontSize: 42,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.7),
                                    offset: const Offset(4, 7),
                                    blurRadius: 8,
                                  ),
                                ]),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.02, 1.01),
                          child: PrimaryButton(
                            text: 'Pidelo Ahora',
                            onPressed: () {},
                            color: color[count],
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
