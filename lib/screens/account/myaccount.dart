import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/account/acc_addressfield.dart';
import 'package:nhg_finance_app/screens/account/acc_passwordfield.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/widget/custom_button.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(preferredSize: const  Size.fromHeight(60),
      child: AppBar(
         backgroundColor: const Color(0xff02343F),
          actions: [

              // left arrow button
              IconButton(
                onPressed: (){}, icon: Image.asset("assets/icon/icon_left_arrow.png",
                height: 20,width: 30,)),

                // home button 
                IconButton(
                onPressed: (){
                  Get.to(Home_page());
                }, icon: Image.asset("assets/icon/home.png",
                height: 20,width: 30,)),

                // person icon button
                IconButton(
                onPressed: (){}, icon: Image.asset("assets/icon/icon_person.png",
                height: 20,width: 30,)),
            ],
      )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                // // Personal Information
                child: Container(
                  height: height * 0.70,
                  width: width,
                  color: Colors.grey[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Personal Information Field
                              const Text(
                                "Personal Information",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Full Name",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    focusColor: Colors.white,
                                    disabledBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Last Name",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    focusColor: Colors.white,
                                    disabledBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Country",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    focusColor: Colors.white,
                                    disabledBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Email Address",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    focusColor: Colors.white,
                                    disabledBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Phone Number",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    focusColor: Colors.white,
                                    disabledBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            ],
                          )),

                      // Personal Information
                    ],
                  ),
                ),
              ),

              // Address Section
              Account_AddressField(),
             

              /// PASSWORD Section
              Account_passwordField()

            ]
                ),
              ),
      ),

            ///
          );
        

  }
}
