import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/user_controller.dart';

class Login extends StatelessWidget {
  UserController user=Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Get.isDarkMode ? Color(0xFF161f28) : Color(0xFFf7f6f7),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/pic/moon.png",width: mdw*0.40,),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",style: TextStyle(fontSize: mdw*0.19,fontWeight: FontWeight.w800,color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28)),),
                  Text("Welcome Back!\nReady to Track Your Prayers?",style: TextStyle(fontSize: mdw*0.06,color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28)),),
                ],
              ),
            ),
            SizedBox(height: mdh*0.04,),
            Container(
              decoration: BoxDecoration(
                color: Get.isDarkMode ? Color(0xFF1a1a1a) : Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      filled: true,
                      fillColor: Get.isDarkMode ? Color(0xFF2c2c2c) : Color(0xFFF3F3F3),
                      labelStyle: TextStyle(
                        color: Get.isDarkMode ? Colors.white70 : Colors.black54,
                        fontSize: mdw*0.55,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Get.isDarkMode ? Colors.white38 : Colors.black26,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Get.isDarkMode ? Colors.blueAccent : Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                  controller: user.loginmail,
                  ),
                  SizedBox(height: mdh*0.02),
                  TextFormField(
                    obscureText: true,
                    controller: user.loginpass,
                    decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: Get.isDarkMode ? Color(0xFF2c2c2c) : Color(0xFFF3F3F3),
                      labelStyle: TextStyle(
                        color: Get.isDarkMode ? Colors.white70 : Colors.black54,
                        fontSize: mdw*0.55,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Get.isDarkMode ? Colors.white38 : Colors.black26,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Get.isDarkMode ? Colors.blueAccent : Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mdh*0.02),
                  Login_Btn(mdw, mdh),
                  SizedBox(height: mdh*0.02),
                  Container(
                    child: InkWell(
                      onTap: (){
                        Get.toNamed('/register');
                      },
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),fontSize: mdw*0.042),
                          children: [
                            TextSpan(text: "Dont have Account?"),
                            TextSpan(text: " "),
                            TextSpan(text: "Sign Up",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold))
                          ]
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget Login_Btn(double mdw,double mdh)
  {
    return InkWell(
      child: Container(
        height: mdh*0.057,
        width: mdw*0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade700,
              Colors.lightBlue,
              Colors.blue,
              Colors.blueAccent
            ]
          )
        ),
        child: Center(
          child: Text("LOGIN",style: TextStyle(fontSize: mdw*0.05,fontWeight: FontWeight.bold,),),
        ),
      ),
    );
  }
}