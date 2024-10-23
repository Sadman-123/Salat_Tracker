import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
class UserController extends GetxController{
  TextEditingController loginmail=TextEditingController();
  TextEditingController loginpass=TextEditingController();
  TextEditingController regemail=TextEditingController();
  TextEditingController regpass=TextEditingController();
  Future<void> signup()async
  {
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: regemail.text, password: regpass.text);
      Fluttertoast.showToast(
          msg: "Created Successfully",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.green.shade400,
          textColor: Colors.white,
          fontSize: 14.0
      );
      regemail.clear();
      regpass.clear();
    }on FirebaseAuthException catch(e)
    {
      String msg="";
      if(e.code=='weak-password'){
        msg="Weak Password";
      }
      else if(e.code=='email-already-in-use'){
        msg="Account Exists!!";
      }
      Fluttertoast.showToast(
          msg: msg,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.black54,
          textColor: Colors.white,
          fontSize: 14.0
      );
      regemail.clear();
      regpass.clear();
    }
    catch(e){
      print(e);
    }
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