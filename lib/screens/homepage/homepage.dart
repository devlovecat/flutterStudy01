// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unnecessary_import, dead_code, unused_element, unnecessary_cast, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, invalid_null_aware_operator, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  final urlImages = [
    'https://cdn.pixabay.com/photo/2022/05/11/22/17/flowers-7190313_960_720.jpg',
    'https://cdn.pixabay.com/photo/2021/01/29/08/08/dog-5960092_960_720.jpg',
    'https://cdn.pixabay.com/photo/2022/01/13/21/17/jar-6936032_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/07/28/11/43/circles-5444818_960_720.png',
  ];

  final text1List = [
    'Painting1', 'Painting2', 'Paintin3', 'Painting4'
  ];
  final text2List = [
    'MAGRITTE:MAGRITTE1','MAGRITTE:MAGRITTE2','MAGRITTE:MAGRITTE3','MAGRITTE:MAGRITTE4',
  ];
  final text3List = [
    '"LA TRAHISON DES IMAGES1"','"LA TRAHISON DES IMAGES2"','"LA TRAHISON DES IMAGES3"','"LA TRAHISON DES IMAGES4"',
  ];
  final text4List = [
    '2020.05.19 ~ 2020.12.27', '2020.06.19 ~ 2020.12.27', '2020.07.19 ~ 2020.12.27', '2020.08.19 ~ 2020.12.27',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Row(
                  children: [
                    Image.asset('images/icon_menu.png'),
                    SizedBox(
                      width: 106,
                    ),
                    Image.asset('images/icon_artdot_white.png'),
                    SizedBox(
                      width: 73,
                    ),
                    Image.asset('images/icon_search.png'),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset('images/icon_notification.png'),
                  ],
                ),
              ),
            ],
          ), // appBar
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 61,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.white, width: 2))),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.all(0),
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {},
                        child: const Text('홈'),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                      height: 61,
                    ),
                    Container(
                      width: 48,
                      height: 61,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white.withOpacity(0.5),
                          padding: EdgeInsets.all(0),
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {},
                        child: const Text('랭킹'),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                      height: 61,
                    ),
                    Container(
                      width: 71,
                      height: 61,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white.withOpacity(0.5),
                          padding: EdgeInsets.all(0),
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {},
                        child: const Text('MY dot'),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                      height: 61,
                    ),
                    Container(
                      width: 84,
                      height: 61,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white.withOpacity(0.5),
                          padding: EdgeInsets.all(0),
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {},
                        child: const Text('주변 전시'),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                      height: 61,
                    ),
                    Container(
                      width: 63,
                      height: 61,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white.withOpacity(0.5),
                          padding: EdgeInsets.all(0),
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {},
                        child: const Text('체크인'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ), // menu
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: urlImages.length,
                options: CarouselOptions(
                  height: 546,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  final text1 = text1List[index];
                  final text2 = text2List[index];
                  final text3 = text3List[index];
                  final text4 = text4List[index];

                  return buildImage(urlImage, text1, text2, text3, text4, index);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, String text1, String text2, String text3, String text4, int index) => Align(
        alignment: Alignment(-1.0, -1.0),
        child: Stack(
          children: [
            Container(
              width: 375,
              height: 546,
              // margin: EdgeInsets.symmetric(horizontal: 1),
              color: Colors.grey,
              child: Image.network(
                urlImage,
                fit: BoxFit.cover,
              ),
            ), // imageContainer
            Container(
              width: 375,
              height: 546,
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Color(0xff00000000),
                      Color(0xffb2000000),
                    ],
                    stops: [0.5, 1.0],
                  )),
            ), // gradation
            Positioned(
              top: 407,
              left: 24,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 2, 8, 1),
                          child: Text(
                            text1,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        )),
                    SizedBox(height: 8),
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: 24,
                        height: 1.1,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      text3,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffe5e5ea),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      text4,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffe5e5ea),
                      ),
                    ),
                  ],
                ),
              ),
            ), // textInfo

            Positioned(
                bottom: 16,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [buildIndicator()],
                    ))), // indicator
          ],
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: urlImages.length,
      effect: ExpandingDotsEffect(
        dotWidth: 4,
        dotHeight: 4,
        activeDotColor: Colors.white,
        dotColor: Colors.white.withOpacity(0.5),
      ));
}

__flatten(List list) {
  return List<Widget>.from(list.expand((item) {
    return item is Iterable ? item : [item as Widget];
  }));
}
