import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/controller/logincontroller.dart';
import 'package:nhg_finance_app/controller/togglepassword_controller.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/widget/login_background_widget.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {

Logincontroller logincontroller = Get.put(Logincontroller());
  Toggle_passwordController obscureText = Get.put(Toggle_passwordController());

  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  void emailvalidator (){
    if (Email.text.contains("@gmail")) {
      Get.snackbar("Email", "Enter the Validate email");
    } if (Email.text.contains("@outlook")) {
      Get.snackbar("Email", "Enter the Validate email");
    }if (Email.text.contains("@yahoo")){
      Get.snackbar("Email", "Enter the Validate email");
    }
  }
  
  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        // login backgroud widget 
       const  Login_background_widget(),

       // Login page body
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height*0.40,
                    width: width*0.50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/logo/logo.png"))
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              
              
                      // Email Textfieldform
              
                      const Padding(
                        padding:  EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child:  Text("Email",style: TextStyle(color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          validator: (emailvalue) {
                            if(emailvalue!.isEmpty){
                              Get.snackbar("Email Field ", "Email Field is Empty Please Enter Email ID",backgroundColor: Colors.white);
                            }
                          },
                          // Email TexteditingController
                          controller: Email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            focusColor: Colors.white,
                            disabledBorder: InputBorder.none,
                            filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                            
                          ),
                        ),
                      ),


              
              
                      // Password Textfieldform
              
                     const  Padding(
                        padding:  EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child:  Text("Password",style: TextStyle(color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Obx(() =>  TextFormField(

                          // password TextEditingController
                          controller: Password,
                          obscureText: obscureText.obscureText.value,

                          // Validator 

                          validator: (passwordvalue) {
                            if(passwordvalue!.isEmpty){
                               Get.snackbar("Password Field", "Password Field is Empty Please Enter Password",backgroundColor: Colors.white);
                            }if (passwordvalue.length<12) {
                              Get.snackbar("Password Field", "Minimum length password is 12",backgroundColor: Colors.white);
                            }
                          },

                          // decoration
                          decoration: InputDecoration(
                            suffixIcon: IconButton(onPressed: (){
                              obscureText.obscureText.value = !obscureText.obscureText.value;
                            }, icon: Icon(obscureText.obscureText.value?Icons.visibility:Icons.visibility_off),),
                            focusColor: Colors.white,
                            disabledBorder: InputBorder.none,
                            filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
                            
                          ),
                        ),)
                      ),
              
                      
              
              
                      // Login Button 
                     GestureDetector(
                      onTap: (){
                        // _formkey.currentState!.validate();
                        logincontroller.loginData(Email.text, Password.text);
                      },
                       child: Container(
                        margin: const EdgeInsets.all(20),
                        height: height*0.08,
                        width: width*0.90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff02343F)
                        ),
                        child: const Center(
                          child: Text("LOGIN",
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),),
                        ),
                        ),
                     ),
              
              // Divider widget
                     const Divider(color: Colors.black,
                     indent: 23,
                     endIndent: 23,),
                    ],
                  ),
              
              
             // Lost Password 
                  TextButton(onPressed: (){}, child: 
                  const Text("Lost Your Password?",
                  style: TextStyle(color: Colors.white, fontSize: 15),)),
              
              
                  /// Reset Password Button 
                  Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: GestureDetector(
                        onTap: (){},
                         child: Container(height: height*0.05,
                          width: width*0.50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff02343F)
                          ),
                          child: const Center(
                            child: Text("Recover Password",
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w700,
                            ),),
                          ),
                          ),
                       ),
                     ),    
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
