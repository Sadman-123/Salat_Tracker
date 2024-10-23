import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
class UserController extends GetxController{
  TextEditingController loginmail=TextEditingController();
  TextEditingController loginpass=TextEditingController();
  TextEditingController regemail=TextEditingController();
  TextEditingController regpass=TextEditingController();
  Future<void> signup() async {
    if (regemail.text.isEmpty || regpass.text.isEmpty) {
      custom_Toast("Please Fill Every Fields", false);
      return;
    } else {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: regemail.text,
          password: regpass.text,
        );
        custom_Toast("Created Successfully", true);
        clear_fields();
      } on FirebaseAuthException catch (e) {
        String msg = "";
        if (e.code == 'weak-password') {
          msg = "Password should be at least 6 characters.";
        } else if (e.code == 'email-already-in-use') {
          msg = "An account already exists with this email.";
        }
        custom_Toast(msg, false);
        clear_fields();
      } catch (e) {
        print(e);
      }
    }
  }
  Future<void> signin() async {
    if (loginmail.text.isEmpty || loginpass.text.isEmpty) {
      custom_Toast("Please Fill Every Fields", false);
      return;
    } else {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: loginmail.text,
          password: loginpass.text,
        );
        custom_Toast("Login Successfully", true);
        Get.toNamed('/home');
        clear_fields();
      } on FirebaseAuthException catch (e) {
        String msg = "";
        if (e.code == 'user-not-found') {
          msg = "No user found for that email.";
        } else if (e.code == 'wrong-password') {
          msg = "Incorrect password. Please try again.";
        } else {
          msg = "Error signing in. Please try again.";
        }
        custom_Toast(msg, false);
        clear_fields();
      } catch (e) {
        print(e);
      }
    }
  }
  void custom_Toast(String msg,bool vl)
  {
      Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor:vl?Colors.green.shade500: Color(0xFF161f28),
        textColor: vl?Colors.white:Color(0xFFf7f6f7),
        fontSize: 14.0,
      );
  }
  void clear_fields()
  {
    loginmail.clear();
    loginpass.clear();
    regemail.clear();
    regpass.clear();
  }
  @override
  void dispose() {
    super.dispose();
    loginmail.dispose();
    loginpass.dispose();
    regemail.dispose();
    regpass.dispose();
  }
}