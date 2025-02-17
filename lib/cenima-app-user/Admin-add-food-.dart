import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../shared/Theme.dart';
import 'admin-food-menu.dart' as global;

class AddFood extends StatefulWidget {
  const AddFood({super.key});

  @override
  State<AddFood> createState() => _AddFood();
}

class _AddFood extends State<AddFood> {
  final _addMenuItem = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _flavorsController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _sPriceController = TextEditingController();
  final TextEditingController _mPriceController = TextEditingController();
  final TextEditingController _lPriceController = TextEditingController();

  String type = global.globalData.listTitle;
  TextEditingController retypePasswordController = TextEditingController();

  bool isNameValid = false;
  bool isAdding = false;
  bool isEmailValid = false;

  bool isNFValid = true;
  bool isImgValid = false;
  bool isPValid = true;
  bool isFlValid = true;
  bool isSmallChecked = false;
  bool isMediumChecked = false;
  bool isLargeChecked = false;
  bool isSizeChecked = false;
  bool isSValid = true;
  bool isMValid = true;
  bool isLValid = true;

  String error = '';
  String price = '';
  String size = '';
  List<String> tags = [];

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

    return Scaffold(
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
        body: Stack(
          children: [
            Container(
              color: const Color(0xfff1f1f1),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.01),
                      child: Form(
                        key: _addMenuItem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //name text field
                            Text(
                              "Name",
                              style: GoogleFonts.lato(
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(bottom: 5)),
                            TextFormField(
                              controller: _nameController,
                              onChanged: (val) {
                                setState(() {
                                  error = '';
                                });
                                Future.delayed(
                                    const Duration(milliseconds: 1000), () {
                                  setState(() {
                                    val.isEmpty
                                        ? isNFValid = false
                                        : isNFValid = true;
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
                                hintText: 'Enter item name',
                                errorText:
                                    isNFValid ? null : "value can't be empty",
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(10.0)),

                            //photo field
                            Text(
                              "Upload Item Picture",
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
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
                                          fit: BoxFit.fitWidth,
                                        ),
                                ),
                                const Padding(padding: EdgeInsets.all(10)),
                                TextButton(
                                  onPressed: () {
                                    imagePath =
                                        'assets/cenima-app-user/images/food-menu/';
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

                            //flavors text field
                            Text(
                              "Flavors",
                              style: GoogleFonts.lato(
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                            Text(
                              'Separate by a comma “,” if more than one. \n User will pick from these',
                              style: GoogleFonts.lato(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff8a8a8a),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(bottom: 5)),
                            TextFormField(
                              controller: _flavorsController,
                              onChanged: (val) {
                                setState(() {
                                  isEmailValid = EmailValidator.validate(val);
                                  error = '';
                                });
                                Future.delayed(
                                    const Duration(milliseconds: 1000), () {
                                  setState(() {
                                    val.isEmpty
                                        ? isFlValid = false
                                        : isFlValid = true;
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
                                hintText: 'Enter flavors',
                                errorText:
                                    isNFValid ? null : "value can't be empty",
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(10.0)),

                            //sizes field
                            Text(
                              "Sizes",
                              style: GoogleFonts.lato(
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(bottom: 5)),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Small',
                                    style: GoogleFonts.lato(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575 * ffem / fem,
                                        color: isSmallChecked
                                            ? const Color(0xffff2153)
                                            : const Color(0xFF323232)),
                                  ),
                                  Checkbox(
                                    value: isSmallChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isSmallChecked = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Medium',
                                    style: GoogleFonts.lato(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575 * ffem / fem,
                                        color: isMediumChecked
                                            ? const Color(0xffff2153)
                                            : const Color(0xFF323232)),
                                  ),
                                  Checkbox(
                                    value: isMediumChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isMediumChecked = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Large',
                                    style: GoogleFonts.lato(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575 * ffem / fem,
                                        color: isLargeChecked
                                            ? const Color(0xffff2153)
                                            : const Color(0xFF323232)),
                                  ),
                                  Checkbox(
                                    value: isLargeChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isLargeChecked = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                            //prices field
                            Text(
                              "Price",
                              style: GoogleFonts.lato(
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(bottom: 5)),
                            Column(
                              children: [
                                !isSmallChecked &&
                                        !isMediumChecked &&
                                        !isLargeChecked
                                    ? priceTextBuilder()
                                    : Container(),
                                isSmallChecked
                                    ? priceSizedTextBuilder(
                                        'Small', _sPriceController, isSValid)
                                    : Container(),
                                isMediumChecked
                                    ? priceSizedTextBuilder(
                                        'Medium', _mPriceController, isMValid)
                                    : Container(),
                                isLargeChecked
                                    ? priceSizedTextBuilder(
                                        'Large', _lPriceController, isLValid)
                                    : Container(),
                              ],
                            ),

                            SizedBox(height: height * .013),
                            //error if you click without entering proper info
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: isNFValid && isImgValid && isPValid
                                      ? Text(error)
                                      : Text(
                                          error,
                                          style: redTextFont(height),
                                        ),
                                ),
                              ],
                            ),
                            //add food button
                            Center(
                              child: Container(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: isAdding
                                    ? SpinKitFadingCircle(
                                        color: mainColor,
                                      )
                                    : TextButton(
                                        onPressed: isNFValid &&
                                                isImgValid &&
                                                isPValid
                                            ? () async {
                                                setState(() {
                                                  if (isSmallChecked) {
                                                    size = 's';
                                                    if (isMediumChecked) {
                                                      size += ',m';
                                                    }
                                                    if (isLargeChecked) {
                                                      size += ',l';
                                                    }
                                                  } else {
                                                    if (isMediumChecked) {
                                                      size = 'm';
                                                      if (isLargeChecked) {
                                                        size += ',l';
                                                      }
                                                    } else if (isLargeChecked) {
                                                      size = 'l';
                                                    }
                                                  }
                                                });
                                                setState(() {
                                                  if (isSmallChecked) {
                                                    price =
                                                        _sPriceController.text;
                                                    if (isMediumChecked) {
                                                      price +=
                                                          ',${_mPriceController.text}';
                                                    }
                                                    if (isLargeChecked) {
                                                      price +=
                                                          ',${_lPriceController.text}';
                                                    }
                                                  } else {
                                                    if (isMediumChecked) {
                                                      price = _mPriceController
                                                          .text;
                                                      if (isLargeChecked) {
                                                        price +=
                                                            ',${_lPriceController.text}';
                                                      }
                                                    } else if (isLargeChecked) {
                                                      price = _lPriceController
                                                          .text;
                                                    } else {
                                                      price =
                                                          _priceController.text;
                                                    }
                                                  }
                                                });

                                                Map<String, String> dataToAdd =
                                                    {
                                                  'name': _nameController.text,
                                                  'image': imagePath,
                                                  'flavors':
                                                      _flavorsController.text,
                                                  'sizes': size,
                                                  'price': price,
                                                  'type': type,
                                                };

                                                FirebaseFirestore.instance
                                                    .collection('food')
                                                    .add(dataToAdd);
                                                setState(() {
                                                  isAdding = true;
                                                });
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const global
                                                              .AFoodMenu()),
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
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      17.6289710999 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Add Item',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.lato(
                                                  fontSize:
                                                      19.8325920105 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2575 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
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
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: width * 0.6,
                    height: height * 0.05,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: isAdding
                            ? SpinKitFadingCircle(
                                color: mainColor,
                              )
                            : TextButton(
                                onPressed: isNFValid && isImgValid && isPValid
                                    ? () async {
                                        setState(() {
                                          if (isSmallChecked) {
                                            size = 's';
                                            if (isMediumChecked) {
                                              size += ',m';
                                            }
                                            if (isLargeChecked) {
                                              size += ',l';
                                            }
                                          } else {
                                            if (isMediumChecked) {
                                              size = 'm';
                                              if (isLargeChecked) {
                                                size += ',l';
                                              }
                                            } else if (isLargeChecked) {
                                              size = 'l';
                                            }
                                          }
                                        });
                                        setState(() {
                                          if (isSmallChecked) {
                                            price = _sPriceController.text;
                                            if (isMediumChecked) {
                                              price +=
                                                  ',${_mPriceController.text}';
                                            }
                                            if (isLargeChecked) {
                                              price +=
                                                  ',${_lPriceController.text}';
                                            }
                                          } else {
                                            if (isMediumChecked) {
                                              price = _mPriceController.text;
                                              if (isLargeChecked) {
                                                price +=
                                                    ',${_lPriceController.text}';
                                              }
                                            } else if (isLargeChecked) {
                                              price = _lPriceController.text;
                                            } else {
                                              price = _priceController.text;
                                            }
                                          }
                                        });

                                        Map<String, String> dataToAdd = {
                                          'name': _nameController.text,
                                          'image': imagePath,
                                          'flavors': _flavorsController.text,
                                          'sizes': size,
                                          'price': price,
                                          'type': type,
                                        };

                                        FirebaseFirestore.instance
                                            .collection('food')
                                            .add(dataToAdd);
                                        setState(() {
                                          isAdding = true;
                                        });
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const global.AFoodMenu()),
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
                                        'Add Item',
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget priceTextBuilder() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: TextFormField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                ],
                controller: _priceController,
                onChanged: (val) {
                  Future.delayed(const Duration(milliseconds: 1000), () {
                    setState(() {
                      val.isEmpty ? isPValid = false : isPValid = true;
                    });
                  });
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFFFFFFF),
                  hintText: '00.00',
                  contentPadding: const EdgeInsets.all(5),
                  hintStyle: const TextStyle(fontSize: 14),
                  errorText: isPValid ? null : 'Value Can\'t Be Empty',
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            Text(
              'JOD',
              style: GoogleFonts.lato(
                fontSize: 16,
                color: const Color(0xFF323232),
              ),
            ),
          ],
        ),
      );

  Widget priceSizedTextBuilder(
          String priceSize, TextEditingController pController, bool isValid) =>
      Padding(
        padding: const EdgeInsets.fromLTRB(50, 5, 20, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              priceSize,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: const Color(0xFF323232),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                  height: 30,
                  child: TextFormField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^\d+\.?\d{0,2}')),
                    ],
                    controller: pController,
                    onChanged: (val) {
                      Future.delayed(const Duration(milliseconds: 1000), () {
                        setState(() {
                          val.isEmpty ? isPValid = false : isPValid = true;
                        });
                      });
                    },
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      hintText: '00.00',
                      contentPadding: const EdgeInsets.all(5),
                      hintStyle: const TextStyle(fontSize: 14),
                      errorText: isPValid ? null : 'Value Can\'t Be Empty',
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                Text(
                  'JOD',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: const Color(0xFF323232),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
