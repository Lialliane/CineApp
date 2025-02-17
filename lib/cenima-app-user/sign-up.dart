import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/admin-log-in.dart';
import 'package:another_flushbar/flushbar.dart';
import '../services/auth.dart';
import '../shared/Theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUp> {
  final _signupForm = GlobalKey<FormState>();
  TextEditingController firsNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();

  bool isNameValid = false;
  bool isSigningUp = false;
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isPassword2Valid = false;
  bool isPhoneValid = true;
  bool isObscured = true;
  bool isObscuredConfirm = true;

  bool isEFValid = true;
  bool isFNFValid = true;
  bool isLNFValid = true;
  bool isPFValid = true;
  bool isPF2Valid = true;
  bool isPhFValid = true;

  String error = '';
  String errorPassword = '';
  String errorEmail = '';
  String errorPhone = '';
  String errorRetype = '';

  // static const IconData envelope = IconData(0xf422, fontFamily: iconFont, fontPackage: iconFontPackage);

  // @override
  // void initState() {
  //   super.initState();
  //   firsNameController.text = widget.registrationData.name;
  //   emailController.text = widget.registrationData.email;
  // }
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
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
          style: headerFont(height),
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
                  horizontal: width * 0.1, vertical: height * 0.01),
              child: Form(
                key: _signupForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      controller: firsNameController,
                      onChanged: (val) {
                        setState(() {
                          error = '';
                        });
                        Future.delayed(const Duration(milliseconds: 1000), () {
                          setState(() {
                            val.isEmpty
                                ? isFNFValid = false
                                : isFNFValid = true;
                          });
                        });
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.person_outline),
                        hintText: 'Enter your first name',
                        labelText: 'First Name',
                        errorText: isFNFValid ? null : "value can't be empty",
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    TextFormField(
                      controller: lastNameController,
                      onChanged: (val) {
                        setState(() {
                          error = '';
                        });
                        Future.delayed(const Duration(milliseconds: 1000), () {
                          setState(() {
                            val.isEmpty
                                ? isLNFValid = false
                                : isLNFValid = true;
                          });
                        });
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.person_outline),
                        hintText: 'Enter your last name',
                        labelText: 'Last Name',
                        errorText: isLNFValid ? null : "value can't be empty",
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    TextFormField(
                      controller: emailController,
                      onChanged: (val) {
                        setState(() {
                          isEmailValid = EmailValidator.validate(val);
                          error = '';
                        });
                        Future.delayed(const Duration(milliseconds: 1000), () {
                          setState(() {
                            val.isEmpty ? isEFValid = false : isEFValid = true;
                            isEmailValid
                                ? errorEmail = ''
                                : errorEmail = 'Please enter a proper email';
                          });
                        });
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.mail_outline),
                        hintText: 'Enter your email',
                        labelText: 'Email',
                        errorText: isEFValid
                            ? (errorEmail == '' ? null : errorEmail)
                            : 'Value Can\'t Be Empty',
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    TextFormField(
                      controller: phoneController,
                      onChanged: (val) {
                        setState(() {
                          isPhoneValid =
                              val.length == 10 && val.characters.first == '0';
                          error = '';
                        });
                        Future.delayed(const Duration(milliseconds: 1000), () {
                          setState(() {
                            val.isEmpty
                                ? isPhFValid = false
                                : isPhFValid = true;
                            isPhoneValid
                                ? errorPhone = ''
                                : errorPhone =
                                    'please enter a proper phone number';
                          });
                        });
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.phone),
                        hintText: 'Enter your phone number',
                        labelText: 'Phone Number',
                        errorText: isPhFValid
                            ? (errorPhone == '' ? null : errorPhone)
                            : 'Value Can\'t Be Empty',
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    TextFormField(
                      obscureText: isObscured,
                      controller: passwordController,
                      onChanged: (val) {
                        setState(() {
                          isPasswordValid = val.length >= 6;
                          error = '';
                        });
                        Future.delayed(const Duration(milliseconds: 1000), () {
                          setState(() {
                            val.isEmpty ? isPFValid = false : isPFValid = true;
                            isPasswordValid
                                ? errorPassword = ''
                                : errorPassword =
                                    'Password must be 6 characters long';
                          });
                        });
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.lock_outline),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        errorText: isPFValid
                            ? (errorPassword == '' ? null : errorPassword)
                            : 'Value Can\'t Be Empty',
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
                    TextFormField(
                      obscureText: true,
                      controller: retypePasswordController,
                      onChanged: (val) {
                        setState(() {
                          isPassword2Valid = passwordController.text ==
                              retypePasswordController.text;
                          error = '';
                        });
                        Future.delayed(const Duration(milliseconds: 1000), () {
                          setState(() {
                            val.isEmpty
                                ? isPF2Valid = false
                                : isPF2Valid = true;
                            isPassword2Valid
                                ? errorRetype = ''
                                : errorRetype = 'Passwords don\'t match';
                          });
                        });
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                        prefixIcon: const Icon(Icons.lock_outline),
                        hintText: 'Repeat the password',
                        labelText: 'Confirm Password',
                        suffixIcon: IconButton(
                          icon: isObscuredConfirm
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isObscuredConfirm = !isObscuredConfirm;
                            });
                          },
                        ),
                        errorText: isPF2Valid
                            ? (errorRetype == '' ? null : errorRetype)
                            : 'Value Can\'t Be Empty',
                      ),
                    ),
                    SizedBox(height: height * .013),
                    //error if you click without entering proper info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: isEmailValid &&
                                  isPasswordValid &&
                                  isPassword2Valid &&
                                  isFNFValid &&
                                  isLNFValid &&
                                  isPhoneValid
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
                        child: isSigningUp
                            ? SpinKitFadingCircle(
                                color: mainColor,
                              )
                            : TextButton(
                                onPressed: isEmailValid &&
                                        isPasswordValid &&
                                        isPassword2Valid &&
                                        isFNFValid &&
                                        isLNFValid &&
                                        isPhoneValid
                                    ? () async {
                                        setState(() {
                                          isSigningUp = true;
                                        });

                                        SignInSignUpResult? result =
                                            await AuthServices.signUp(
                                                emailController.text,
                                                passwordController.text,
                                                "${firsNameController.text}-${lastNameController.text}",
                                                phoneController.text,
                                                false);

                                        if (result?.exception == true || result?.user == null) {
                                          setState(() {
                                            isSigningUp = false;
                                          });

                                          if (context.mounted) {
                                            Flushbar(
                                              duration:
                                                  const Duration(seconds: 4),
                                              flushbarPosition:
                                                  FlushbarPosition.TOP,
                                              backgroundColor:
                                                  const Color(0xFFFF5c83),
                                              message: result?.message,
                                            ).show(context);
                                          }
                                        }
                                        else{
                                          Navigator.pop(context);}
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
                                  width: 144 * fem,
                                  height: 57 * fem,
                                  child: Container(
                                    // frame4EaH (I134:15173;18:475)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xff707070)),
                                      color: const Color(0xff9a2044),
                                      borderRadius:
                                          BorderRadius.circular(54 * fem),
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
                      textAlign: TextAlign.center, style: greyTextFont(height)),
                  const Padding(padding: EdgeInsets.all(5.0)),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const AdminLogIn()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      ' Click here',
                      textAlign: TextAlign.center,
                      style: greyTextFont(height).copyWith(color: mainColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(height * 0.020),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(width: 1.0, color: accentColor2),
              )),
              // padding: EdgeInsets.only(
              //     top: height * 0.07),
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account?',
                        style: GoogleFonts.lato(
                          fontSize: 18 * ffem,
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
                                builder: (context) => const SignUp()),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 110 * fem,
                          height: 50 * fem,
                          child: Container(
                            // frame4EaH (I134:15173;18:475)
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff9a2044)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(54 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Log in',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575 * ffem / fem,
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
