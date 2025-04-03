import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:myapp/cenima-app-user/sign-up.dart';
import 'package:myapp/shared/Theme.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../reusable-widgets/reusable-widget.dart';
import 'log-in.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingPage();
}

class _OnboardingPage extends State<Onboarding> {
  int activeIndex = 0;

  List<String> images = [
    'assets/cenima-app-user/images/starter1.png',
    'assets/cenima-app-user/images/starter3.png',
    'assets/cenima-app-user/images/starter2.png',
    'assets/cenima-app-user/images/starter4.png',
  ];

  List<String> titles = [
    'Book Cinema Tickets',
    'Order Food And Pick It Up Once You Arrive',
    'Rent And Watch Movies From Home',
    'Just Try It Out All Now With Ciné',
  ];

  List<String> paragraphs = [
    'Book movies easily, getting you all the details you need without leaving your home!',
    "Check what food is available and enjoy your experience without delays.",
    'Don\'t want to pay an expensive subscription just to watch a movie occasionly? Rent a movie for a short time for a small fee instead.',
    ''
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                //image slider
                SizedBox(
                  height: screenHeight * 0.45,
                  width: screenWidth,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: CarouselSlider.builder(
                            options: CarouselOptions(
                                height: screenHeight * 0.45,
                                autoPlay: true,
                                viewportFraction: 1,
                                enableInfiniteScroll: false,
                                autoPlayInterval: const Duration(seconds: 8),
                                onPageChanged: (index, reason) => setState(
                                      () => activeIndex = index,
                                    )),
                            itemCount: images.length,
                            itemBuilder: (context, index, realIndex) {
                              String urlImage = images[index];

                              return SizedBox(
                                  width: screenWidth,
                                  height: screenHeight * 0.45,
                                  child: buildImage(urlImage, index));
                            }),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 0,
                        left: 0,
                        child: Center(
                          child: activePicInSlider(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Container(
                    margin: const EdgeInsets.all(50.0),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        AutoSizeText(
                          titles[activeIndex],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.caveat(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            height: 1.25,
                            color: const Color(0xff555555),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        AutoSizeText(
                          paragraphs[activeIndex],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.caveat(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff777777),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //signup button
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ButtonMain(
                      buttonText: "Sign Up",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      },
                      screenHeight: screenHeight,
                      screenWidth: screenWidth),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                //login button
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ButtonMain(
                      buttonText: "Log In ",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogIn()),
                        );
                      },
                      screenHeight: screenHeight,
                      screenWidth: screenWidth),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Image.asset(
        urlImage,
        fit: BoxFit.fill,
      );

  Widget activePicInSlider() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        effect: const SlideEffect(
          activeDotColor: Colors.pink,
          dotColor: Color.fromARGB(172, 172, 170, 170),
        ),
      );
}
