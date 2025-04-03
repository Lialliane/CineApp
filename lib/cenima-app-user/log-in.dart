// ignore: file_names
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/debouncer.dart';
import 'package:myapp/cenima-app-user/sign-up.dart';
import 'package:myapp/reusable-widgets/reusable-widget.dart';
import '../services/auth.dart';
import '../shared/Theme.dart';
import 'admin-log-in.dart';
import 'package:email_validator/email_validator.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LoginPage();
}

class _LoginPage extends State<LogIn> {
  final _loginForm = GlobalKey<FormState>();

  Debouncer? debouncer;
  //toggle laoding animation to play while user is signing in
  bool isSigningIn = false;
  //the first email/pass checkers is updated cosntantly to check validty
  //the ones bellow is to show text errors after a delay
  bool isPasswordObscured = true;
  String password = '';
  String email = '';

  final Map<String, String?> errors = {};

  void validateField(String value, String type, {bool delay = true}) {
    debugPrint("inside validator $value $type ${value.length}");
    //add a delay for updating errors in feild, otherwise validate instantly
    (delay)
        ? debouncer = Debouncer(milliseconds: 1500)
        : debouncer = Debouncer(milliseconds: 0);

    debouncer!.run(() {
      setState(() {
        if (value.isEmpty) {
          errors[type] = '$type cannot be empty';
        } else if (type == 'Password' && value.length < 6) {
          debugPrint("this should run atl least once");
          errors['Password'] = 'Password must be 6 characters long';
        } else if (type == 'Email' && !EmailValidator.validate(value)) {
          errors['Email'] = 'Please enter a proper email';
        } else {
          debugPrint("is this running here in password?");
          errors[type] = null;
        }
      });
    });

    debugPrint("this shouldn't be null: ${errors[type]}");
  }

  @override
  void initState() {
    super.initState();
    password = '';
    email = '';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.transparent,
          title: Text(
            'Log In',
            style: headerFont(),
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
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/cenima-app-user/images/auto-group-42rk.png',
                  fit: BoxFit.cover,
                  width: 240,
                  height: 240,
                ),
                // Log in form
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1, vertical: 10),
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
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              //reset when user is typing
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
                          // password field
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: (value) {
                              debugPrint(
                                  "why is onchanged firing without touching the password feild");
                              validateField(value, 'Password');
                            },
                            validator: (value) {
                              validateField(value ?? '', 'Password',
                                  delay: false);
                              return errors['Password'];
                            },
                            onSaved: (newValue) => password = newValue!.trim(),
                            obscureText: isPasswordObscured,
                            maxLength: 20,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0)),
                              ),
                              prefixIcon: const Icon(Icons.lock_outline),
                              errorText: errors['Password'],
                              hintText: 'Enter your password',
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                icon: isPasswordObscured
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    isPasswordObscured = !isPasswordObscured;
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
                                style: greyTextFont(screenHeight),
                              ),
                              const Padding(padding: EdgeInsets.all(2.7)),
                              //TODO: forget password, do i still want this?
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  ' Click here',
                                  textAlign: TextAlign.center,
                                  style: greyTextFont(screenHeight)
                                      .copyWith(color: mainColor),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * .017),

                          //sign in button
                          Center(
                            child: Container(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: isSigningIn
                                  ? SpinKitFadingCircle(
                                      color: mainColor,
                                    )
                                  : ButtonMain(
                                      buttonText: "Log In ",
                                      onPress: () async {
                                        if (_loginForm.currentState!
                                            .validate()) {
                                          setState(() {
                                            //start animation
                                            isSigningIn = true;
                                          });
                                          _loginForm.currentState!.save();
                                          //try to get user
                                          SignInSignUpResult? result =
                                              await FirebaseAuthServices.signIn(
                                                  email, password);

                                          //check call results
                                          if (result?.exception == true ||
                                              result?.user == null) {
                                            setState(() {
                                              //stop animation
                                              isSigningIn = false;
                                            });
                                            //show error, when if(context.mounted) isn't added it shows an error.
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
                                          } else {
                                            //navigate back to wrapper, which will redirect to home page
                                            if (context.mounted) {
                                              Navigator.pop(context);
                                            }
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
                ),
                //navigate to admin login
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'An Admin?',
                        textAlign: TextAlign.center,
                        style: greyTextFont(screenHeight),
                      ),
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
                          style: greyTextFont(screenHeight)
                              .copyWith(color: mainColor),
                        ),
                      ),
                    ],
                  ),
                ),
                //navigate to sign up
                Container(
                  padding: EdgeInsets.all(screenHeight * 0.020),
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(width: 1.0, color: accentColor2),
                  )),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t Have an account?',
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
                                builder: (context) => const SignUp()),
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
                                'Sign Up',
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
                ),
              ],
            ),
          ),
        ));
  }
}
