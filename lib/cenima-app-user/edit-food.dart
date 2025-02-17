import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../shared/Theme.dart';
import 'admin-food-menu.dart' as global;

class EditFood extends StatefulWidget {
  const EditFood({super.key});

  @override
  State<EditFood> createState() => _EditFood();
}

class _EditFood extends State<EditFood> {
  CollectionReference menu = FirebaseFirestore.instance.collection('food');

  final _addMenuItem = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _flavorsController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _sPriceController = TextEditingController();
  final TextEditingController _mPriceController = TextEditingController();
  final TextEditingController _lPriceController = TextEditingController();

  String type = global.globalData.listTitle;
  TextEditingController retypePasswordController = TextEditingController();

  bool isNEdited = false;
  bool isFEdited = false;
  bool isUpdating = false;
  bool isPValid = true;
  bool isSmallChecked = false;
  bool isMediumChecked = false;
  bool isLargeChecked = false;
  bool isSValid = true;
  bool isMValid = true;
  bool isLValid = true;

  String updateName = '';
  String updateFlavor = '';
  String updateSize = '';
  String updatePrice = '';

  String error = '';
  List<String> tags = [];
  List<String> priceSet = [];
  List<String> sizeSet = [];
  Map<String, dynamic> itemData = {};
  Map<String, dynamic> prices = {};

  String imagePath = '';
  bool isImageChosen = false;

  //image picker to get image path
  Future _pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      setState(() {
        imagePath = 'assets/cenima-app-user/images/food-menu/${image.name}';
        isImageChosen = true;
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future getItemData() async {
    try {
      final documents = await menu.doc(global.globalData.itemId).get();
      Map<String, dynamic> data = documents.data()! as Map<String, dynamic>;
      setState(() {
        itemData = {
          'name': data['name'],
          'image': data['image'],
          'flavors': data['flavors'],
          'sizes': data['sizes'],
          'price': data['price'],
        };
        imagePath = itemData['image'];
        itemData['sizes'].contains('s') ? isSmallChecked = true : null;
        itemData['sizes'].contains('m') ? isMediumChecked = true : null;
        itemData['sizes'].contains('l') ? isLargeChecked = true : null;

        priceSet = itemData['price'].split(',');
        sizeSet = itemData['sizes'].split(',');

        for (int i = 0; i < sizeSet.length; i++) {
          prices.addEntries({sizeSet[i]: priceSet[i]}.entries);
        }
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getItemData();
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
        body: Container(
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
                          'Name',
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
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: isNEdited
                                      ? mainColor
                                      : const Color(0xFF414141)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            suffixIcon: IconButton(
                              icon: !isNEdited
                                  ? const Icon(Icons.edit)
                                  : const Icon(Icons.done),
                              onPressed: () {
                                setState(() {
                                  isNEdited = !isNEdited;
                                });
                                _nameController.text == ''
                                    ? updateName = itemData['name']
                                    : updateName = _nameController.text;
                              },
                            ),
                            filled: true,
                            fillColor: const Color(0xFFFFFFFF),
                            hintText: itemData['name'],
                          ),
                          readOnly: !isNEdited,
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
                              height: height * 0.2,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xff707070)),
                                color: const Color(0xFFFFFFFF),
                              ),
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(10)),
                            TextButton(
                              onPressed: () {
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
                              error = '';
                            });
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: isFEdited
                                      ? mainColor
                                      : const Color(0xFF414141)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            suffixIcon: IconButton(
                              icon: !isFEdited
                                  ? const Icon(Icons.edit)
                                  : const Icon(Icons.done),
                              onPressed: () {
                                setState(() {
                                  isFEdited = !isFEdited;
                                });
                                _nameController.text == ''
                                    ? updateFlavor = itemData['flavors']
                                    : updateFlavor = _nameController.text;
                              },
                            ),
                            filled: true,
                            fillColor: const Color(0xFFFFFFFF),
                            hintText: itemData['flavors'],
                          ),
                          readOnly: !isFEdited,
                        ),
                        const Padding(padding: EdgeInsets.all(10.0)),

                        //sizes field
                        Text(
                          "Size",
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    's', 'Small', _sPriceController, isSValid)
                                : Container(),
                            isMediumChecked
                                ? priceSizedTextBuilder(
                                    'm', 'Medium', _mPriceController, isMValid)
                                : Container(),
                            isLargeChecked
                                ? priceSizedTextBuilder(
                                    'l', 'Large', _lPriceController, isLValid)
                                : Container(),
                          ],
                        ),

                        SizedBox(height: height * .013),
                        //error if you click without entering proper info
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child:
                                  isPValid && isSValid && isMValid && isLValid
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
                            child: isUpdating
                                ? SpinKitFadingCircle(
                                    color: mainColor,
                                  )
                                : TextButton(
                                    onPressed: isPValid &&
                                            isSValid &&
                                            isMValid &&
                                            isLValid
                                        ? () async {
                                            setState(() {
                                              if (!isSmallChecked &&
                                                  !isMediumChecked &&
                                                  !isLargeChecked) {
                                                if (!sizeSet.contains('')) {
                                                  setState(() {
                                                    sizeSet.contains('s')
                                                        ? sizeSet.remove('s')
                                                        : null;
                                                    sizeSet.contains('m')
                                                        ? sizeSet.remove('m')
                                                        : null;
                                                    sizeSet.contains('l')
                                                        ? sizeSet.remove('l')
                                                        : null;
                                                    sizeSet.add('');
                                                  });
                                                }
                                              } else {
                                                sizeSet.contains('')
                                                    ? sizeSet.remove('')
                                                    : null;
                                                if (isSmallChecked) {
                                                  sizeSet.contains('s')
                                                      ? null
                                                      : sizeSet.add('s');
                                                } else {
                                                  sizeSet.contains('s')
                                                      ? sizeSet.remove('s')
                                                      : null;
                                                }
                                                if (isMediumChecked) {
                                                  sizeSet.contains('m')
                                                      ? null
                                                      : sizeSet.add('m');
                                                } else {
                                                  sizeSet.contains('m')
                                                      ? sizeSet.remove('m')
                                                      : null;
                                                }
                                                if (isLargeChecked) {
                                                  sizeSet.contains('l')
                                                      ? null
                                                      : sizeSet.add('l');
                                                } else {
                                                  sizeSet.contains('l')
                                                      ? sizeSet.remove('l')
                                                      : null;
                                                }
                                              }
                                              updateSize = sizeSet.join(',');
                                            });
                                            setState(() {
                                              if (!isSmallChecked &&
                                                  !isMediumChecked &&
                                                  !isLargeChecked) {
                                                if (prices.containsKey('')) {
                                                  setState(() {
                                                    _priceController.text == ''
                                                        ? updatePrice =
                                                            prices['']
                                                        : updatePrice =
                                                            _priceController
                                                                .text;
                                                  });
                                                } else {
                                                  _priceController.text == ''
                                                      ? isPValid = false
                                                      : updatePrice =
                                                          _priceController.text;
                                                }
                                              } else {
                                                prices.containsKey('')
                                                    ? prices.remove('')
                                                    : null;
                                                if (isSmallChecked) {
                                                  if (prices.containsKey('s')) {
                                                    setState(() {
                                                      _sPriceController.text ==
                                                              ''
                                                          ? null
                                                          : prices['s'] =
                                                              _sPriceController
                                                                  .text;
                                                    });
                                                  } else {
                                                    _sPriceController.text == ''
                                                        ? isSValid = false
                                                        : prices.addEntries({
                                                            's':
                                                                _sPriceController
                                                                    .text
                                                          }.entries);
                                                  }
                                                }
                                                if (isMediumChecked) {
                                                  if (prices.containsKey('m')) {
                                                    setState(() {
                                                      _mPriceController.text ==
                                                              ''
                                                          ? null
                                                          : prices['m'] =
                                                              _mPriceController
                                                                  .text;
                                                    });
                                                  } else {
                                                    _mPriceController.text == ''
                                                        ? isMValid = false
                                                        : prices.addEntries({
                                                            'm':
                                                                _mPriceController
                                                                    .text
                                                          }.entries);
                                                  }
                                                }
                                                if (isLargeChecked) {
                                                  if (prices.containsKey('l')) {
                                                    setState(() {
                                                      _lPriceController.text ==
                                                              ''
                                                          ? null
                                                          : prices['l'] =
                                                              _lPriceController
                                                                  .text;
                                                    });
                                                  } else {
                                                    _lPriceController.text == ''
                                                        ? isLValid = false
                                                        : prices.addEntries({
                                                            'l':
                                                                _lPriceController
                                                                    .text
                                                          }.entries);
                                                  }
                                                }
                                              }
                                              isSmallChecked
                                                  ? null
                                                  : !prices.containsKey('s')
                                                      ? null
                                                      : prices.remove('s');
                                              isMediumChecked
                                                  ? null
                                                  : !prices.containsKey('m')
                                                      ? null
                                                      : prices.remove('m');
                                              isLargeChecked
                                                  ? null
                                                  : !prices.containsKey('l')
                                                      ? null
                                                      : prices.remove('l');

                                              setState(() {
                                                updatePrice =
                                                    prices.values.toString();
                                                updatePrice = updatePrice
                                                    .replaceAll('(', '')
                                                    .replaceAll(')', '')
                                                    .replaceAll(' ', '');
                                              });
                                              updatePrice;
                                            });
                                            setState(() {
                                              _nameController.text == ''
                                                  ? updateName =
                                                      itemData['name']
                                                  : updateName =
                                                      _nameController.text;

                                              _flavorsController.text == ''
                                                  ? updateFlavor =
                                                      itemData['flavors']
                                                  : updateFlavor =
                                                      _flavorsController.text;
                                            });

                                            Map<String, String> dataToUpdate = {
                                              'name': updateName,
                                              'image': imagePath,
                                              'flavors': updateFlavor,
                                              'sizes': updateSize,
                                              'price': updatePrice,
                                            };

                                            FirebaseFirestore.instance
                                                .collection('food')
                                                .doc(global.globalData.itemId)
                                                .update(dataToUpdate);
                                            setState(() {
                                              isUpdating = true;
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
                                            'SaveChanges',
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
              ],
            ),
          ),
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
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFFFFFFF),
                  hintText: prices[''],
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

  Widget priceSizedTextBuilder(String index, String priceSize,
          TextEditingController pController, bool isValid) =>
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
                      hintText:
                          prices.containsKey(index) ? prices[index] : '0.00',
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
