import 'dart:math';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/admin-log-in.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:myapp/cenima-app-user/debouncer.dart';
import 'package:myapp/cenima-app-user/log-in.dart';
import '../reusable-widgets/reusable-widget.dart';
import '../services/auth.dart';
import '../shared/Theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUp> {
  final _signupForm = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();
  Debouncer? debouncer;

  bool isSigningUp = false;
  bool isObscured = true;

  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  String phone = '';

  final Map<String, String?> errors = {};
  void validateField(String value, String type, {bool delay = true}) {
    value = value.trim();

    //add a delay for updating errors in feild, otherwise validate instantly
    (delay)
        ? debouncer = Debouncer(milliseconds: 1000)
        : debouncer = Debouncer(milliseconds: 0);

    debouncer!.run(() {
      setState(() {
        if (type == 'retypePass' &&
            passwordController.text != retypePasswordController.text) {
          errors[type] = 'Passwords don\'t match';
        } else if (value.isEmpty) {
          errors[type] = '$type cannot be empty';
        } else if (type == 'Password' && value.length < 6) {
          errors['Password'] = 'password must be 6 characters long';
        } else if (type == 'Email' && !EmailValidator.validate(value)) {
          errors['Email'] = 'Please enter a proper email';
        } else if (type == 'Phone' &&
            (value.length != 10 ||
                value.characters.first != '0' ||
                !isNumber(value))) {
          debugPrint("this should run");
          errors['Phone'] = 'Please enter a proper phone number';
        } else {
          errors[type] = null;
        }
      });
    });
  }

  bool isNumber(String s) {
    if (s.contains('.')) return false;
    return double.tryParse(s) != null;
  }

  @override
  void initState() {
    super.initState();

    firstName = '';
    lastName = '';
    email = '';
    password = '';
    phone = '';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      //container for the page heading
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: Text(
          'Sign Up',
          style: headerFont(),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
            color: const Color(0xff000000),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1, vertical: screenHeight * 0.01),
              child: Form(
                key: _signupForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //first name field
                    TextFormField(
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        validateField(value, 'First Name');
                      },
                      validator: (value) {
                        validateField(value ?? '', 'First Name', delay: false);
                        return errors['First Name'];
                      },
                      onSaved: (newValue) => firstName = newValue!.trim(),
                      maxLength: 20,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.person_outline),
                        hintText: 'Enter your first name',
                        labelText: 'First Name',
                        errorText: errors['First Name'],
                        counterText: "",
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    //Last name field
                    TextFormField(
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        validateField(value, 'Last Name');
                      },
                      validator: (value) {
                        validateField(value ?? '', 'Last Name', delay: false);
                        return errors['Last Name'];
                      },
                      onSaved: (newValue) => lastName = newValue!.trim(),
                      maxLength: 20,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.person_outline),
                        hintText: 'Enter your last name',
                        labelText: 'Last Name',
                        errorText: errors['Last Name'],
                        counterText: "",
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    //email field
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        validateField(value, 'Email');
                      },
                      validator: (value) {
                        validateField(value ?? '', 'Email', delay: false);
                        return errors['Email'];
                      },
                      onSaved: (newValue) => email = newValue!.trim(),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.mail_outline),
                        hintText: 'Enter your email',
                        labelText: 'Email',
                        errorText: errors['Email'],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    //phone field
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        validateField(value, 'Phone');
                      },
                      validator: (value) {
                        validateField(value ?? '', 'Phone', delay: false);
                        return errors['Phone'];
                      },
                      onSaved: (newValue) => phone = newValue!.trim(),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.phone),
                        hintText: 'Enter your phone number',
                        labelText: 'Phone Number',
                        errorText: errors['Phone'],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    //password feild
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
                      onChanged: (value) {
                        validateField(value, 'Password');
                      },
                      validator: (value) {
                        validateField(value ?? '', 'Password', delay: false);
                        return errors['Password'];
                      },
                      onSaved: (newValue) => password = newValue!.trim(),
                      maxLength: 20,
                      obscureText: isObscured,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.lock_outline),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        errorText: errors['Password'],
                        suffixIcon: IconButton(
                          icon: isObscured
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isObscured = !isObscured;
                            });
                          },
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    //retype password field
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: retypePasswordController,
                      onChanged: (value) {
                        validateField(value, 'retypePass');
                      },
                      validator: (value) {
                        validateField(value ?? '', 'retypePass', delay: false);
                        return errors['retypePass'];
                      },
                      obscureText: isObscured,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.lock_outline),
                        hintText: 'Retype password',
                        labelText: 'Confirm Password',
                        errorText: errors['retypePass'],
                      ),
                    ),
                    SizedBox(height: screenHeight * .013),
                    //sign up button
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: isSigningUp
                            ? SpinKitFadingCircle(
                                color: mainColor,
                              )
                            : ButtonMain(
                                buttonText: "Sign Up ",
                                onPress: () async {
                                  if (_signupForm.currentState!.validate()) {
                                    setState(() {
                                      isSigningUp = true;
                                    });

                                    SignInSignUpResult? result =
                                        await FirebaseAuthServices.signUp(
                                            email,
                                            password,
                                            "$firstName-$lastName",
                                            phone,
                                            false);

                                    if (result?.exception == true ||
                                        result?.user == null) {
                                      setState(() {
                                        isSigningUp = false;
                                      });

                                      if (context.mounted) {
                                        Flushbar(
                                          duration: const Duration(seconds: 4),
                                          flushbarPosition:
                                              FlushbarPosition.TOP,
                                          backgroundColor:
                                              const Color(0xFFFF5c83),
                                          message: result?.message,
                                        ).show(context);
                                      }
                                    } else {
                                      if (context.mounted)
                                        Navigator.pop(context);
                                    }
                                  }
                                },
                                screenHeight: screenHeight,
                                screenWidth: screenWidth),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('An Admin? ',
                      textAlign: TextAlign.center,
                      style: greyTextFont(screenHeight)),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminLogIn()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      ' Click here',
                      textAlign: TextAlign.center,
                      style:
                          greyTextFont(screenHeight).copyWith(color: mainColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(screenHeight * 0.020),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(width: 1.0, color: accentColor2),
              )),
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account?',
                        style: GoogleFonts.lato(
                          fontSize: screenHeight * 0.022,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff000000),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogIn()),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: screenWidth * 0.27,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff9a2044)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(54),
                            ),
                            child: Center(
                              child: Text(
                                'Log in',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  fontSize: screenHeight * 0.02,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
