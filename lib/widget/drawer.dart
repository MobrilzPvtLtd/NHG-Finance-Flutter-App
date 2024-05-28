import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/account/myaccount.dart';
import 'package:nhg_finance_app/screens/deposit_withdraw/deposit.dart';
import 'package:nhg_finance_app/screens/deposit_withdraw/withdraw.dart';
import 'package:nhg_finance_app/screens/offer_screen/offer.dart';

import '../screens/account_history/account_history.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Drawer(
      elevation: 0,
      backgroundColor: const Color(0xff02343F),
      child: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 80),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: (){
                Get.to(MyAccount());
              },
              child: ListTile(
                leading: Image.asset(
                  "assets/popupmenu_icon/account.png",
                  width: 20,
                ),
                title: const Text(
                  "My Account",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ExpansionTile(
              trailing: Image.asset("assets/icon/left-arrow.png",
                  height: 20, width: 20),
              leading: Image.asset(
                "assets/popupmenu_icon/funding.png",
                height: 25,
                width: 25,
              ),
              title: TextButton(
                  onPressed: () {
                    // Get.to(fund());
                  },
                  child: const Text("Funding",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal))),expandedAlignment: Alignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Get.to(Deposit());
                    },
                    child: const Text(
                      "Deposit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    )),
                TextButton(
                    onPressed: () {
                      Get.to(Withdraw());
                    },
                    child: const  Text(
                      "Withdraw",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    )),
              ],
            ),
            ExpansionTile(
              trailing: Image.asset("assets/icon/left-arrow.png",
                  height: 20, width: 20),
              leading: Image.asset(
                "assets/popupmenu_icon/pamm.png",
                height: 25,
                width: 25,
              ),
              title: TextButton(
                  onPressed: () {
                    Get.to(Offer_screen());
                  },
                  child: const  Text("Pamm",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal))),
              children: [
                TextButton(
                    onPressed: () {
                      // Get.to(Deposit());
                    },
                    child: const Text(
                      "Offer 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    )),
                TextButton(
                    onPressed: () {
                      // Get.to(Withdraw());
                    },
                    child: const  Text(
                      "Offer 2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    )),
                TextButton(
                    onPressed: () {
                      // Get.to(Withdraw());
                    },
                    child: const  Text(
                      "Add New Offer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    )),
              ],
            ),

            //Signal Button
             GestureDetector(
              onTap: (){
                // Get.to(MyAccount());
              },
              child: ListTile(
                leading: Image.asset(
                  "assets/popupmenu_icon/signal.png",
                  width: 20,
                ),
                title: const Text(
                  "My Account",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

            // Copy Trading 
             GestureDetector(
              onTap: (){
                // Get.to(MyAccount());
              },
              child: ListTile(
                leading: Image.asset(
                  "assets/popupmenu_icon/copytrading.png",
                  width: 20,
                ),
                title: const Text(
                  "My Account",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),


            // Education button
             GestureDetector(
              onTap: (){
                // Get.to(E());
              },
              child: ListTile(
                leading: Image.asset(
                  "assets/popupmenu_icon/education.png",
                  width: 20,
                ),
                title: const Text(
                  "My Account",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}