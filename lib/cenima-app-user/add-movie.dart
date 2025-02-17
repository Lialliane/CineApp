import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';

import '../reusable-widgets/reusable-widget.dart';
import 'package:image_picker/image_picker.dart';
import '../shared/Theme.dart';
import 'admin-Home-page.dart';
import 'admin-food-menu.dart' as global;

class AddMovie extends StatefulWidget {
  const AddMovie({super.key});

  @override
  State<AddMovie> createState() => _AddMovie();
}

class _AddMovie extends State<AddMovie> {
  final _addMenuItem = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _genreController = TextEditingController();
  final TextEditingController _hoursController = TextEditingController();
  final TextEditingController _minutesController = TextEditingController();
  final TextEditingController _directorController = TextEditingController();
  final TextEditingController _writerController = TextEditingController();
  final TextEditingController _ratingController = TextEditingController();

  String type = global.globalData.listTitle;
  TextEditingController retypePasswordController = TextEditingController();

  bool isNameValid = false;
  bool isAdding = false;
  bool isEmailValid = false;

  bool isTValid = true;
  bool isImgValid = false;
  bool isDValid = true;
  bool isGValid = true;
  bool isAgeValid = false;
  bool isHValid = true;
  bool isMValid = true;
  bool isDirectorValid = true;
  bool isWValid = true;
  bool isRValid = true;

  String error = '';
  String language = Languages.english.name;
  String duration = '';
  String dropdownVal = 'Choose';
  List<String> tags = [];
  List<String> age = ['Choose', 'G', 'PG', 'PG-13', 'R'];

  String imagePath = 'assets/cenima-app-user/images/food-menu/';
  bool isImageChosen = false;

  //image picker to get image path
  Future _pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      setState(() {
        imagePath += image.name;
        isImageChosen = true;
        isImgValid = true;
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              iconTheme: IconThemeData(
                color: Color(0xff000000),
              ),
              backgroundColor: Color(0xffffffff),
              floating: true,
              snap: true,
              centerTitle: true,
              title: Text(
                'Ciné',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nature Beauty Personal Use',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffdd204a),
                ),
              ),
            ),
          ],
          body: Container(
            color: const Color(0xfff1f1f1),
            child: SingleChildScrollView(
              child: Container(
                width: width,
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.01),
                child: Form(
                  key: _addMenuItem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //title field
                      Text(
                        "Movie title",
                        style: GoogleFonts.lato(
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 5)),
                      TextFormField(
                        controller: _titleController,
                        onChanged: (val) {
                          setState(() {
                            error = '';
                          });
                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            setState(() {
                              val.isEmpty
                                  ? isTValid = false
                                  : isTValid = true;
                            });
                          });
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          hintText: 'Enter the movie title',
                          errorText:
                              isTValid ? null : "value can't be empty",
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),

                      //poster field
                      Text(
                        "Upload Poster",
                        style: GoogleFonts.lato(
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 5)),
                      Row(
                        children: [
                          Container(
                            height:
                                MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff707070)),
                              color: isImageChosen
                                  ? const Color(0xFFFFFFFF)
                                  : const Color(0xFFFFFFFF)
                                      .withOpacity(0.3),
                            ),
                            child: !isImageChosen
                                ? Container()
                                : Image.asset(
                                    imagePath,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                          const Padding(padding: EdgeInsets.all(15)),
                          TextButton(
                            onPressed: () {
                              imagePath =
                                  'assets/cenima-app-user/images/posters/';
                              _pickImage();
                            },
                            child: Container(
                              width: width * 0.3,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff707070)),
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Choose file',
                                  style: GoogleFonts.lato(
                                    fontSize: 18,
                                    color: const Color(0xff464646),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),

                      //description field
                      Text(
                        "Description",
                        style: GoogleFonts.lato(
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 5)),
                      TextFormField(
                        controller: _descriptionController,
                        onChanged: (val) {
                          setState(() {
                            error = '';
                          });
                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            setState(() {
                              val.isEmpty
                                  ? isDValid = false
                                  : isDValid = true;
                            });
                          });
                        },
                        maxLines: 4,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          hintText: 'Movie Description...',
                          errorText:
                              isDValid ? null : "value can't be empty",
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),

                      //movie genre field
                      Text(
                        "Genre",
                        style: GoogleFonts.lato(
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 5)),
                      TextFormField(
                        controller: _genreController,
                        onChanged: (val) {
                          setState(() {
                            error = '';
                          });
                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            setState(() {
                              val.isEmpty
                                  ? isGValid = false
                                  : isGValid = true;
                            });
                          });
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          hintText: 'Select Movie Genre',
                          errorText:
                              isGValid ? null : "value can't be empty",
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),

                      //Age rating field
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Age Rating",
                            style: GoogleFonts.lato(
                              fontSize: 22 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xff7e132b),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.3,
                            child: DropdownButton(
                              value: dropdownVal,
                              items: age.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: GoogleFonts.lato(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575 * ffem / fem,
                                        color: const Color(0xFF323232)),
                                  ),
                                );
                              }).toList(),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xffff2153),
                              ),
                              isExpanded: true,
                              onChanged: (String? value) {
                                setState(() {
                                  if (value == null) {
                                    dropdownVal = 'choose';
                                  } else {
                                    dropdownVal = value;
                                    isAgeValid = true;
                                    error = '';
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),

                      //movie duratuon field
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Duration",
                            style: GoogleFonts.lato(
                              fontSize: 22 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xff7e132b),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(bottom: 5)),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                                height: 30,
                                child: TextFormField(
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[0-9]')),
                                  ],
                                  controller: _hoursController,
                                  onChanged: (val) {
                                    Future.delayed(
                                        const Duration(milliseconds: 1000),
                                        () {
                                      setState(() {
                                        val.isEmpty
                                            ? isHValid = false
                                            : isHValid = true;
                                      });
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(0)),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFFFFFFF),
                                    hintText: '00',
                                    contentPadding: const EdgeInsets.all(5),
                                    hintStyle:
                                        const TextStyle(fontSize: 14),
                                    errorText: isHValid
                                        ? null
                                        : 'Value Can\'t Be Empty',
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  ':',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                width: 70,
                                height: 30,
                                child: TextFormField(
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[0-9]')),
                                  ],
                                  controller: _minutesController,
                                  onChanged: (val) {
                                    Future.delayed(
                                        const Duration(milliseconds: 1000),
                                        () {
                                      setState(() {
                                        val.isEmpty
                                            ? isMValid = false
                                            : isMValid = true;
                                      });
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(0)),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFFFFFFF),
                                    hintText: '00',
                                    contentPadding: const EdgeInsets.all(5),
                                    hintStyle:
                                        const TextStyle(fontSize: 14),
                                    errorText: isMValid
                                        ? null
                                        : 'Value Can\'t Be Empty',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),

                      //language field
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Language",
                            style: GoogleFonts.lato(
                              fontSize: 22 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xff7e132b),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(bottom: 5)),
                          SizedBox(
                            width: width * 0.3,
                            child: LanguagePickerDropdown(
                              initialValue: Languages.english,
                              onValuePicked: (Language value) {
                                setState(() {
                                  language = value.name;
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      const Padding(padding: EdgeInsets.all(10.0)),

                      //director name field
                      Text(
                        "Director",
                        style: GoogleFonts.lato(
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                      Text(
                        'Separate by a comma “,” if more than one.',
                        style: GoogleFonts.lato(
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff8a8a8a),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 5)),
                      TextFormField(
                        controller: _directorController,
                        onChanged: (val) {
                          setState(() {
                            error = '';
                          });
                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            setState(() {
                              val.isEmpty
                                  ? isDirectorValid = false
                                  : isDirectorValid = true;
                            });
                          });
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          hintText: 'Enter director name',
                          errorText: isDirectorValid
                              ? null
                              : "value can't be empty",
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),

                      //writer name field
                      Text(
                        "Writer",
                        style: GoogleFonts.lato(
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                      Text(
                        'Separate by a comma “,” if more than one.',
                        style: GoogleFonts.lato(
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff8a8a8a),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 5)),
                      TextFormField(
                        controller: _writerController,
                        onChanged: (val) {
                          setState(() {
                            error = '';
                          });
                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            setState(() {
                              val.isEmpty
                                  ? isWValid = false
                                  : isWValid = true;
                            });
                          });
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          hintText: 'Enter Writer name',
                          errorText:
                              isWValid ? null : "value can't be empty",
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),

                      //stars rate field
                      Text(
                        "Rating",
                        style: GoogleFonts.lato(
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                      Text(
                        'Enter the rating in number',
                        style: GoogleFonts.lato(
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff8a8a8a),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 5)),
                      TextFormField(
                        controller: _ratingController,
                        onChanged: (val) {
                          setState(() {
                            error = '';
                          });
                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            setState(() {
                              val.isEmpty
                                  ? isRValid = false
                                  : isRValid = true;
                            });
                          });
                        },
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\d+\.?\d{0,2}')),
                        ],
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          hintText: '0.0',
                          errorText:
                              isRValid ? null : "value can't be empty",
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),

                      SizedBox(height: height * .013),
                      //error if you click without entering proper info
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: isTValid &&
                                    isImgValid &&
                                    isDValid &&
                                    isGValid &&
                                    isAgeValid &&
                                    isHValid &&
                                    isMValid &&
                                    isDirectorValid &&
                                    isWValid &&
                                    isRValid
                                ? Text(error)
                                : Text(
                                    error,
                                    style: redTextFont(height),
                                  ),
                          ),
                        ],
                      ),
                      //sign up button
                      Center(
                        child: Container(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: isAdding
                              ? SpinKitFadingCircle(
                                  color: mainColor,
                                )
                              : TextButton(
                                  onPressed: isTValid &&
                                          isImgValid &&
                                          isDValid &&
                                          isGValid &&
                                          isAgeValid &&
                                          isHValid &&
                                          isMValid &&
                                          isDirectorValid &&
                                          isWValid &&
                                          isRValid
                                      ? () async {
                                          setState(() {
                                            duration =
                                                '${_hoursController.text}:${_minutesController.text}';
                                          });

                                          Map<String, String> dataToAdd = {
                                            'title': _titleController.text,
                                            'poster': imagePath,
                                            'description':
                                                _descriptionController.text,
                                            'genre': _genreController.text,
                                            'ageRating': dropdownVal,
                                            'duration': duration,
                                            'language': language,
                                            'director':
                                                _directorController.text,
                                            'writer':
                                                _writerController.text,
                                            'rating':
                                                _ratingController.text,
                                          };

                                          FirebaseFirestore.instance
                                              .collection('Movies')
                                              .add(dataToAdd);
                                          setState(() {
                                            isAdding = true;
                                          });
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AdminHomePage()),
                                          );
                                        }
                                      : () async {
                                          setState(() {
                                            error =
                                                "Please enter valid information";
                                          });
                                        },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: 200 * fem,
                                    height: 35 * fem,
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffff2153),
                                        borderRadius: BorderRadius.circular(
                                            17.6289710999 * fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Add Movie',
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
 // ignore: non_constant_identifier_names

