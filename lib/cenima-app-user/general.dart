import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/unsubscibe.dart';
import 'cinema-error.dart';
import 'help-renting.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralHelpPage();
}

class _GeneralHelpPage extends State<General> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            iconTheme: const IconThemeData(
              color: Color(0xffdd204a),
            ),
            backgroundColor: const Color(0xffffffff),
            floating: true,
            snap: true,
            centerTitle: true,
            title: const Text(
              'General',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
            ),
          ),
        ],
        body: Container(
          color: const Color(0xfff1f1f1),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Unsubscribe()),
                        );
                      },
                      child: Container(
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        padding: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'How to unsubscribe form email newsletters',
                          style: GoogleFonts.lato(
                            fontSize: 22 * ffem,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff7e132b),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HelpRenting()),
                        );
                      },
                      child: Container(
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        padding: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'What is renting',
                          style: GoogleFonts.lato(
                            fontSize: 22 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xff7e132b),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CinemaError()),
                        );
                      },
                      child: Container(
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        padding: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Cinema did't play the movie",
                          style: GoogleFonts.lato(
                            fontSize: 22 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xff7e132b),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
