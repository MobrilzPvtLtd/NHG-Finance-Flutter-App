import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:nhg_finance_app/screens/account/myaccount.dart";
import "package:nhg_finance_app/screens/broker/verifyborker.dart";
import "package:nhg_finance_app/screens/coming_soon_screen/coming_soon.dart";
import "package:nhg_finance_app/screens/login/login.dart";

import "package:nhg_finance_app/widget/allpages_background.dart";
import "package:nhg_finance_app/widget/drawer.dart";
import "package:nhg_finance_app/widget/popupmenu_appbar.dart";

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const All_Page_Backgound_widget(),
        Scaffold(
          // App bar Section
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
                            Get.to(const MyAccount());
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
          backgroundColor: Colors.transparent,
          drawer: MyDrawer(),
          // body Section
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // NEWS BUTTON TO NAVIGATE NEWS FEED
                GestureDetector(
                  onTap: () {
                    Get.to(Coming_Soon());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: height * 0.06,
                    width: width * 0.80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff00A9CF)),
                    child: const Center(
                      child: Text(
                        "NEWS",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),

                // PAMM BUTTON TO NAVIGATE TO PAMM

                GestureDetector(
                  onTap: () {
                    Get.to(Verify_Broker());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: height * 0.06,
                    width: width * 0.80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff00A9CF)),
                    child: const Center(
                      child: Text(
                        "PAMM",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),

                // SIGNALS BUTTON TO NAVIGATE SINGLE PAGE/FEED

                GestureDetector(
                  onTap: () {
                    Get.to(Coming_Soon());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: height * 0.06,
                    width: width * 0.80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff00A9CF)),
                    child: const Center(
                      child: Text(
                        "SIGNALS",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),

                // COPY_TRADING BUTTON TO NAVIGATE COPY_TRADING PAGE/FEED

                GestureDetector(
                  onTap: () {
                    Get.to(Coming_Soon());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: height * 0.06,
                    width: width * 0.80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff00A9CF)),
                    child: const Center(
                      child: Text(
                        "COPY TRADING",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),

                // EDUCATION BUTTON TO NAVIGATE EDUCATION PAGE/FEED

                GestureDetector(
                  onTap: () {
                    Get.to(Coming_Soon());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: height * 0.06,
                    width: width * 0.80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff00A9CF)),
                    child: const Center(
                      child: Text(
                        "EDUCATION",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
