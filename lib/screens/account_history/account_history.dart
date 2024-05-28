import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nhg_finance_app/screens/account/myaccount.dart';
import 'package:nhg_finance_app/screens/account_history/Fees_widget.dart';
import 'package:nhg_finance_app/screens/account_history/balance_funds.dart';
import 'package:nhg_finance_app/screens/account_history/deposithistory_total.dart';
import 'package:nhg_finance_app/screens/account_history/month_report_widget.dart';
import 'package:nhg_finance_app/screens/account_history/openandclose_trade_widget.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/screens/login/login.dart';
import 'package:nhg_finance_app/widget/custom_button.dart';
import 'package:nhg_finance_app/widget/custom_widget.dart';
import 'package:nhg_finance_app/widget/drawer.dart';

class History_account extends StatefulWidget {
  const History_account({super.key});

  @override
  State<History_account> createState() => _History_accountState();
}

class _History_accountState extends State<History_account> {
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
            minimum: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Account Manager information section
                    Container(
                      height: height * 0.20,
                      width: width,
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Offer", style: TextStyle(fontSize: 20)),
                            Text(
                              "Last update [Date Time]",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Money Manager: [Date Time]",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Created: [Date Time]",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  const  Open_Close_Trade_widget(),
                    const SizedBox(
                      height: 30,
                    ),
                  const  Fees_widget(),
                    const SizedBox(
                      height: 30,
                    ),
                  const  Deposit_History_Total(),
                    const SizedBox(
                      height: 20,
                    ),
                   const Balance_Fund_widget(),
                   const  Text(
                      textAlign: TextAlign.start,
                      "Add Month By Month",
                      style: TextStyle(fontSize: 30),
                    ),
                   const  Month_Report_Widget(),
                  ]),
            )));
  }
}
