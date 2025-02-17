import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myapp/cenima-app-user/starter.dart';
import 'package:myapp/reusable-widgets/reusable-widget.dart';
import '../services/auth.dart';
import '../shared/Theme.dart';
import 'package:email_validator/email_validator.dart';

import 'log-in.dart';

class AdminLogIn extends StatefulWidget {
  const AdminLogIn({super.key});

  @override
  State<AdminLogIn> createState() => _ALoginPage();
}

class _ALoginPage extends State<AdminLogIn> {
  // ignore: non_constant_identifier_names
  final _AloginForm = GlobalKey<FormState>();
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
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.transparent,
          title: Text(
            'Admin Log In',
            style: headerFont(height),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Starter()),
                );
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
                      horizontal: width * 0.1,
                      vertical: 10),
                  child: Theme(
                    data:Theme.of(context).copyWith(
                        colorScheme: ThemeData().colorScheme.copyWith(primary: mainColor)),
                    child: Form(
                      key: _AloginForm,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // email filed
                          TextFormField(
                            controller: emailController,
                            onChanged: (val) {
                              setState(() {
                                isEmailValid = EmailValidator.validate(val);
                                error='';
                              });
                              Future.delayed(const Duration(milliseconds: 1000), () {
                                setState(() {
                                  val.isEmpty? isEFValid= false: isEFValid=true;
                                  isEmailValid? errorE= '' : errorE ='Please enter a proper email';

                                });
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                              ),
                              prefixIcon: const Icon(Icons.mail_outline),
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
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: isObscured,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(100.0)),
                              ),
                              prefixIcon: const Icon(Icons.lock_outline),
                              hintText: 'Enter your password',
                              labelText: 'Password',
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
                              errorText: isPFValid
                                  ? (errorP == '' ? null : errorP)
                                  : 'Value Can\'t Be Empty',
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
                                  await AuthServices.signInA(
                                      emailController.text,
                                      passwordController.text);

                                  if (result?.exception == true||result?.user==null) {
                                    setState(() {
                                      isSigningIn = false;
                                    });

                                    if (context.mounted) {
                                      Flushbar(
                                        duration: const Duration(seconds: 4),
                                        flushbarPosition: FlushbarPosition.TOP,
                                        backgroundColor: const Color(0xFFFF5c83),
                                        message: result?.message,
                                      ).show(context);
                                    }
                                  }
                                  else{
                                    Navigator.pop(context);
                                  }
                                }
                                    : () async {setState((){
                                  error="Email or password invalid";
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
                        'A normal user?',
                        textAlign: TextAlign.center,
                        style: greyTextFont(height),
                      ),
                      const Padding(padding: EdgeInsets.all(5.0)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const LogIn()),
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
              ],
            ),
          ),

        )
    );
  }
}