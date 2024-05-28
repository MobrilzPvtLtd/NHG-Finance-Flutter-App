import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/account/myaccount.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/screens/login/login.dart';
import 'package:nhg_finance_app/widget/drawer.dart';

class Coming_Soon extends StatelessWidget {
  const Coming_Soon({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Coming Soon...",style: TextStyle(fontSize: 40,color: Colors.black),),
          SizedBox(
            height: 40,
          ),
          Text("Something big is\ncoming your way...",style: TextStyle(fontSize: 20,color: Colors.black),)
        ],
            ),
      ),
    );
  }
}