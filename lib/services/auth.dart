import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/services/user.dart';
import 'package:myapp/services/user_services.dart';

class FirebaseAuthServices {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static NewUser? _userFromFireBaseUser(User? user) {
    //User is a class provided by firebase
    return user != null
        ? NewUser(userID: user.uid, email: user.email, '', false, '')
        : null;
  }

  static Future<SignInSignUpResult?> signUp(String email, String password,
      String name, String phoneNo, bool isAdmin) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? userFirebase = result.user;

      UserServices.updateUser(
          _userFromFireBaseUser(userFirebase), email, name, phoneNo, isAdmin);
      return SignInSignUpResult(
          user: _userFromFireBaseUser(userFirebase), exception: false);
    } on FirebaseException catch (error) {
      if (error.code == 'email-already-exists') {
        return SignInSignUpResult(
            message: error.code.toString(), exception: true);
      } else {
        //return apropraite message to show to user in signup page
        String message() {
          switch (error.code) {
            case "ERROR_EMAIL_ALREADY_IN_USE":
            case "account-exists-with-different-credential":
            case "email-already-in-use":
              return "Email already used. Go to login page.";
            case "ERROR_USER_DISABLED":
            case "user-disabled":
              return "User disabled.";
            case "ERROR_TOO_MANY_REQUESTS":
            case "operation-not-allowed":
              return "Too many requests to log into this account.";

            case "ERROR_OPERATION_NOT_ALLOWED":
              return "Server error, please try again later.";

            case "ERROR_INVALID_EMAIL":
            case "invalid-email":
              return "Email address is invalid.";

            default:
              return "Login failed. Please try again.";
          }
        }

        return SignInSignUpResult(message: message(), exception: true);
      }
    }
  }

  static Future<SignInSignUpResult?> signIn(
      String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      User? userFirebase = result.user;
      debugPrint('did you get user?= $userFirebase');

      NewUser user = await UserServices.getUser(userFirebase?.uid);
      debugPrint('did you get user?= $user');
      if (user.isAdmin == true) {
        await _auth.signOut();
        throw CustomException(message: 'Please login through the admin form!');
      }

      return SignInSignUpResult(user: user, exception: false);
    } on FirebaseException catch (error) {
      //return apropraite message to show to user in login page
      String message() {
        switch (error.code) {
          case "ERROR_WRONG_PASSWORD":
          case "wrong-password":
            return "Wrong password, please enter your password again.";

          case "ERROR_USER_NOT_FOUND":
          case "user-not-found":
            return "No user found with this email.";

          case "ERROR_USER_DISABLED":
          case "user-disabled":
            return "User disabled.";

          case "ERROR_TOO_MANY_REQUESTS":
          case "operation-not-allowed":
            return "Too many requests to log into this account.";

          case "ERROR_OPERATION_NOT_ALLOWED":
            return "Server error, please try again later.";

          case "ERROR_INVALID_EMAIL":
          case "invalid-email":
            return "Email address is invalid.";

          default:
            return "Login failed. Please try again.";
        }
      }

      return SignInSignUpResult(message: message(), exception: true);
    } on Exception catch (error) {
      return SignInSignUpResult(message: error.toString(), exception: true);
    }
  }

  static Future<SignInSignUpResult?> signInAdmin(
      String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      User? userFirebase = result.user;
      NewUser user = await UserServices.getUser(userFirebase?.uid);
      if (user.isAdmin == false) {
        await _auth.signOut();
        throw CustomException(message: 'User is not an admin');
      }

      return SignInSignUpResult(
          user: _userFromFireBaseUser(userFirebase), exception: false);
    } on FirebaseException catch (error) {
      String message() {
        switch (error.code) {
          case "ERROR_WRONG_PASSWORD":
          case "wrong-password":
            return "Wrong password, please enter your password again.";
          case "ERROR_USER_NOT_FOUND":
          case "user-not-found":
            return "No user found with this email.";

          case "ERROR_USER_DISABLED":
          case "user-disabled":
            return "User disabled.";

          case "ERROR_TOO_MANY_REQUESTS":
          case "operation-not-allowed":
            return "Too many requests to log into this account.";

          case "ERROR_OPERATION_NOT_ALLOWED":
            return "Server error, please try again later.";

          case "ERROR_INVALID_EMAIL":
          case "invalid-email":
            return "Email address is invalid.";

          default:
            return "Login failed. Please try again.";
        }
      }

      return SignInSignUpResult(message: message(), exception: true);
    } on Exception catch (error) {
      return SignInSignUpResult(message: error.toString(), exception: true);
    }
  }

  static Future<void> signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      //TODO: what's this
      String error = e.toString().split(',')[1].trim();
      return;
    }
  }

  static Stream<NewUser?> get userStream {
    return _auth.authStateChanges().map(_userFromFireBaseUser);
  }
}

class SignInSignUpResult {
  final NewUser? user;
  final String? message;
  final bool? exception;

  SignInSignUpResult({this.user, this.message, this.exception});
}

class CustomException implements Exception {
  String message;
  CustomException({
    required this.message,
  });
  @override
  String toString() {
    return message;
  }
}
