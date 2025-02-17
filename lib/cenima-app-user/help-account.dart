import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'delete-account.dart';
import 'help-change-email.dart';

class HelpAccount extends StatefulWidget {
  const HelpAccount({super.key});

  @override
  State<HelpAccount> createState() => _AccountHelpPage();
}

class _AccountHelpPage extends State<HelpAccount> {
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
              'Account',
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
                              builder: (context) => const DeleteAccount()),
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
                          'How to delete my account',
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
                              builder: (context) => const HelpChangeEmail()),
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
                          'How to change Email',
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