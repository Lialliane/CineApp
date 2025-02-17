import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/sign-up.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'log-in.dart';

class Starter extends StatefulWidget {
  const Starter({super.key});

  @override
  State<Starter> createState() => _StarterPage();
}

int activeIndex = 0;
List<String> images = [
  'assets/cenima-app-user/images/starter1.png',
  'assets/cenima-app-user/images/starter2.png',
  'assets/cenima-app-user/images/starter3.png',
  'assets/cenima-app-user/images/starter4.png',
];
List<String> titles = [
  'Book Cinema Tickets',
  'Rent And Watch Movies From Home',
  'Order Food And Pick It Up Before Your Movie',
  'Just Try It Out All Yourself Now with Ciné',
];

List<String> paragraphs = [
  'Make the booking process easier giving you all the details you need',
  'Want to own a movie for a short time to watch it without having to pay an expensive fee? we make it easy to just take what you want',
  "we make it easy to see what's available and get your food so you can enjoy your experience without delays",
  ''
];

class _StarterPage extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: CarouselSlider.builder(
                            options: CarouselOptions(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
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

                              return buildImage(urlImage, index);
                            }),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 0,
                        left: 0,
                        child: Container(
                          alignment: Alignment.center,
                          child: buildIndicator(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.all(50.0),
                      child: Column(
                        children: [
                          Text(
                            titles[activeIndex],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.caveat(
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xff555555),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(10)),
                          Text(
                            paragraphs[activeIndex],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.caveat(
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xff777777),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),);                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 144 * fem,
                        height: 57 * fem,
                        child: Container(
                          // frame4EaH (I134:15173;18:475)
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff707070)),
                            color: const Color(0xff9a2044),
                            borderRadius: BorderRadius.circular(54 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 19.8325920105 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogIn()),);                       },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 144 * fem,
                        height: 57 * fem,
                        child: Container(
                          // frame4EaH (I134:15173;18:475)
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff707070)),
                            color: const Color(0xff9a2044),
                            borderRadius: BorderRadius.circular(54 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Log In',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 19.8325920105 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        color: Colors.black87,
        child: Image.asset(
          urlImage,
          fit: BoxFit.fill,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        effect: const SlideEffect(
          activeDotColor: Colors.pink,
          dotColor: Color.fromARGB(172, 172, 170, 170),
        ),
      );
}
