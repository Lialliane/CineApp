import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color mainColor = const Color(0xffff2153);
Color accentColor1 = const Color(0xff9a2044);
Color accentColor2 = const Color(0xff828282);
Color accentColor3 = const Color(0xFFADADAD);

TextStyle greyTextFont(double h) {
  return GoogleFonts.lato(
    fontSize: 0.015 * h,
    fontWeight: FontWeight.w600,
    color: const Color(0xff828282),
  );
}
TextStyle movieInfoTitle (double height) {
return GoogleFonts.varela(
fontSize: height*0.018,
fontWeight: FontWeight.w600,
color: const Color(0xff7e132b),
);
}

TextStyle redTextFont(double h) {
  return GoogleFonts.raleway(
    fontSize: 0.015 * h,
    fontWeight: FontWeight.w700,
    color: Colors.red,
  );
}

TextStyle buttonTextFont(double h) {
  return GoogleFonts.lato(
    fontSize: h * 0.025,
    fontWeight: FontWeight.w600,
    color: const Color(0xffffffff),
  );
}
TextStyle movieInfo(double height){
  return GoogleFonts.notoSans(
      fontSize: height*0.017,
      fontWeight: FontWeight.w400,
      color: const Color(0xff000000),
  );
}

TextStyle headerFont(double h) {
  return const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 25,
    fontWeight: FontWeight.w600,
    height: 1.2575,
    color: Color(0xff7e132b),
  );
}

TextStyle checkStyle(){
return TextStyle(
color: Color(0xff7e132b),
fontSize: 18,
);
}

TextStyle checkStyle1(){
  return GoogleFonts.notoSans(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xff000000),
  );
}

