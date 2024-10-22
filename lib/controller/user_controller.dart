import 'package:flutter/material.dart';
import 'package:get/get.dart';
class UserController extends GetxController{
  TextEditingController loginmail=TextEditingController();
  TextEditingController loginpass=TextEditingController();
  TextEditingController regemail=TextEditingController();
  TextEditingController regpass=TextEditingController();


  @override
  void dispose() {
    super.dispose();
    loginmail.dispose();
    loginpass.dispose();
    regemail.dispose();
    regpass.dispose();
  }
}