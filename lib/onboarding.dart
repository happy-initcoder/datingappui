import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app_ui/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    CarouselController carouselController = CarouselController();

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/girl1.png'),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/girl2.png'),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/girl3.png'),
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 380.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.6,
            ),
          ),
          SizedBox(height: 44),
          SizedBox(
            height: 126,
            width: 300,
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  child: Column(children: [
                    Text(
                      'Algorithm',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                    Text(
                        'Users going through a vetting process to ensure you never match with bots.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14))
                  ]),
                ),
                Container(
                  child: Column(children: [
                    Text(
                      'Matches',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                    Text(
                        'We match you with people that have a large array of similar interests.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14))
                  ]),
                ),
                Container(
                  child: Column(children: [
                    Text(
                      'Premium',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                    Text(
                        'Sign up today and enjoy the first month of premium benefits on us.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14))
                  ]),
                ),
              ],
            ),
          ),
          Button(name: 'Create an Account'),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have Account? '),
              Text(
                'Sign in',
                style: TextStyle(color: Colors.pink),
              )
            ],
          )
        ],
      ),
    );
  }
}
