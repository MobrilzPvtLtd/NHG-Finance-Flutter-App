import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/account/myaccount.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/screens/login/login.dart';
import 'package:nhg_finance_app/widget/custom_button.dart';
import 'package:nhg_finance_app/widget/drawer.dart';

class Broker_Account_Setup extends StatelessWidget {
  const Broker_Account_Setup({super.key});

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              const   Text(
                  "ACC Number",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                ),
                Container(
                  height: height * 0.06,
                  width: width * 0.70,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                )
              ],
            ),
           const  SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
                ),
                Container(
                  height: height * 0.06,
                  width: width * 0.70,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: const  Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                )
              ],
            ),
          const   SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                 const  Text(
                    "Server",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
                  ),
                
                const  SizedBox(
                  width: 10,
                ),
                
                Container(
                  height: height * 0.06,
                  width: width * 0.70,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: TextField(
                      
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
           const  SizedBox(height: 20,),
            Custom_button(buttonname: "Connect", color: const  Color.fromARGB(255, 5, 167, 204), height: height*0.06, width: width*0.70, Fontsize: 20)
          ],
        ),
      ),
    );
  }
}
