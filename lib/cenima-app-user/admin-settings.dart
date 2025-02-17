import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'change-password.dart';
import 'contact.dart';
import 'invite.dart';

class AdminSettings extends StatefulWidget {
  const AdminSettings({super.key});

  @override
  State<AdminSettings> createState() => _ASettings();
}

class _ASettings extends State<AdminSettings> {
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
              'Settings',
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
          child: Stack(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.1,
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChangePassword()),
                        );
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.lock_outline,
                            size: 29,
                            color: Color(0xff707070),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Text(
                              'Change Password',
                              style: GoogleFonts.lato(
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.1,
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Invite()),
                        );
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.question_answer_outlined,
                            size: 29,
                            color: Color(0xff707070),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Text(
                              'Invite Others',
                              style: GoogleFonts.lato(
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.1,
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Contact()),
                        );
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.settings_outlined,
                            size: 29,
                            color: Color(0xff707070),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Text(
                              'Contact us',
                              style: GoogleFonts.lato(
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
