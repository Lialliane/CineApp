// ignore_for_file: file_names
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/home-page.dart';
import 'package:myapp/cenima-app-user/sign-up.dart';
import 'package:myapp/cenima-app-user/starter.dart';
import 'package:myapp/reusable-widgets/reusable-widget.dart';
import '../services/auth.dart';
import '../shared/Theme.dart';
import 'admin-log-in.dart';
import 'home-page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LoginPage();
}

class _LoginPage extends State<LogIn> {
  final _loginForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSigningIn = false;
  bool isEFValid = true;
  bool isPFValid = true;
  bool isObscured = true;
  String error = '';
  String errorP = '';
  String errorE = '';

  @override
  Widget build(BuildContext context) {

    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;


    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: Text(
          'Log In',
          style: headerFont(height),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
              color: const Color(0xff000000),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                logowidget(),
                // Log in form
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.1, vertical: 10),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: mainColor)),
                    child: Form(
                      key: _loginForm,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // email filed
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
                                      ? errorE = ''
                                      : errorE = 'Please enter a proper email';
                                });
                              });
                            },
                          decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(100.0)),

                          ),
                          prefixIcon: Icon(Icons.mail_outline),
                          hintText: 'Enter your email',
                          labelText: 'Email',
                          errorText: isEFValid? (errorE==''? null : errorE): 'Value Can\'t Be Empty',

                        ),
                           ),
                          const Padding(padding: EdgeInsets.all(10.0)),
                      // password field
                          TextFormField(
                            onChanged: (val) {
                              setState(() {
                                isPasswordValid = val.length >= 6;
                                error='';
                              });
                              Future.delayed(const Duration(milliseconds: 1000), () {
                                setState(() {
                                  val.isEmpty? isPFValid= false: isPFValid=true;
                                  isPasswordValid? errorP= '' :errorP='Password must be 6 characters long';
                                });
                              });

                            },
                        controller: passwordController,
                        obscureText: isObscured,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.0)),
                          ),
                          prefixIcon: Icon(Icons.lock_outline),
                          hintText: 'Enter your password',
                          labelText: 'Password',
                          errorText: isPFValid? (errorP==''?null:errorP ) :'Value Can\'t Be Empty',
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

                          const Padding(padding: EdgeInsets.all(5.0)),
                      // forget password text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Forget password?',
                                textAlign: TextAlign.center,
                                style: greyTextFont(height),
                              ),
                              const Padding(padding: EdgeInsets.all(2.7)),
                              TextButton(
                                onPressed: () {},
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
                          SizedBox(height: height*.017),
                          // error text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                Container(child:
                                  isEmailValid && isPasswordValid ?
                                  Text(error)
                                    :
                                  Text(error,
                                    style: redTextFont(height),
                              ),
                              ),
                            ],
                          ),
                      //sign in button
                          Center(
                            child: Container(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: isSigningIn? SpinKitFadingCircle(
                                color: mainColor,)
                                  : TextButton(
                                    onPressed: isEmailValid && isPasswordValid
                                        ? () async {
                                      setState(() {
                                        isSigningIn = true;
                                      });

                                      SignInSignUpResult? result =
                                      await AuthServices.signInU(
                                          emailController.text,
                                          passwordController.text);

                                      if (result?.exception == true||result?.user==null) {
                                        setState(() {
                                          isSigningIn = false;
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
                                                error = "Email or password invalid";
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
                                                'Log In',
                                                textAlign: TextAlign.center,
                                                style: buttonTextFont(height),
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
              Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'An Admin?',
                        textAlign: TextAlign.center,
                        style: greyTextFont(height),
                      ),
                      const Padding(padding: EdgeInsets.all(5.0)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminLogIn()),);
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
            // bottom sign up
              Container(
                  padding: EdgeInsets.all(height*0.020),
                  decoration: BoxDecoration(border:  Border(
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
                            'Don\'t Have an account?',
                            style: GoogleFonts.lato(
                              fontSize: height * 0.022,
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
                                    builder: (context) => SignUp()),);
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: SizedBox(
                              width: width * 0.27,
                              height: 50 * fem,
                              child: Container(
                                // frame4EaH (I134:15173;18:475)
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xff9a2044)),
                                  color: const Color(0xffffffff),
                                  borderRadius:
                                  BorderRadius.circular(54 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Sign Up',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                                      fontSize: height * 0.02,
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
    )
    );
  }
}