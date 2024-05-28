import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/account/myaccount.dart';
import 'package:nhg_finance_app/screens/brocker_acc_setup/broker_account_setup.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/screens/instructions/instructions.dart';
import 'package:nhg_finance_app/screens/login/login.dart';
import 'package:nhg_finance_app/widget/custom_button.dart';
import 'package:nhg_finance_app/widget/drawer.dart';

class Verify_Broker extends StatefulWidget {
  const Verify_Broker({super.key});

  @override
  State<Verify_Broker> createState() => _Verify_BrokerState();
}

class _Verify_BrokerState extends State<Verify_Broker> {
  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
     appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: AppBar(
              backgroundColor: const Color(0xff02343F),
              leading: Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ));
              }),
              actions: [
                // left arrow button
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icon/icon_left_arrow.png",
                      height: 20,
                      width: 30,
                    )),

                // home button
                IconButton(
                    onPressed: () {
                      Get.to(Home_page());
                    },
                    icon: Image.asset(
                      "assets/icon/home.png",
                      height: 20,
                      width: 30,
                    )),
                    const  SizedBox(width: 10,),

                // person icon button
                PopupMenuButton(
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/icon/icon_person.png",
                      width: 20,
                    ),
                  ),
                  
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    PopupMenuItem(
                      child: TextButton(
                          onPressed: () {
                            Get.to(MyAccount());
                          }, child: Text("My Account",style: TextStyle(color: Colors.black,fontSize: 15),)),
                    ),
                    PopupMenuItem(
                        child: TextButton(
                      child: Text("Setting",style: TextStyle(color: Colors.black,fontSize: 15)),
                      onPressed: () {},
                    )),
                    PopupMenuItem(
                        child: TextButton(
                      child: Text("Logout",style: TextStyle(color: Colors.black,fontSize: 15)),
                      onPressed: () {
                        Get.to(Login_Page());
                      },
                    ))
                  ],
                ),
               const  SizedBox(width: 20,),
              ],
            ),),
          drawer: const MyDrawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Do you have  already broker\nAccount With FP Markets?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
           Row(
            children: [
              Custom_button(buttonname: "Yes", color: Color.fromARGB(255, 5, 167, 204), height: height*0.08, width: width*0.40, Fontsize: 20,onpressed: () => Get.to( const Broker_Account_Setup()),),
              Custom_button(buttonname: "No", color: Color.fromARGB(255, 5, 167, 204), height: height*0.08, width: width*0.40, Fontsize: 20,onpressed: () => Get.to(const Instruction()),)
            ],
           ),
            // Custom_button(buttonname: "Submit", color: Color.fromARGB(255, 5, 167, 204), height: height*0.10, width: width*0.60, Fontsize: 20)

            ],
          ),
    );
  }
}