import 'package:flutter/material.dart';
import 'package:nhg_finance_app/screens/account_history/Fees_widget.dart';
import 'package:nhg_finance_app/screens/account_history/balance_funds.dart';
import 'package:nhg_finance_app/screens/account_history/deposithistory_total.dart';
import 'package:nhg_finance_app/screens/account_history/month_report_widget.dart';
import 'package:nhg_finance_app/screens/account_history/openandclose_trade_widget.dart';
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
        appBar: AppBar(
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
          // PopupMenu Button Section
          // leading: PopupMenuButton(
          //           constraints: BoxConstraints(
          // minHeight: height*0.50,
          // minWidth: width*0.50
          //           ),
          //           position: PopupMenuPosition.under,
          //           color: const  Color(0xff02343F),
          //           elevation: 0,
          //           icon: const Icon(Icons.menu,color: Colors.white,),
          //           itemBuilder: (context) => [
          //  PopupMenuItem(child: ListTile(
          //         leading: Image.asset("assets/popupmenu_icon/account.png",width: 20,),
          //         title: const Text("My Account",style: TextStyle(color: Colors.white,fontSize: 17),),
          //       ),),
          //  PopupMenuItem(child:  ListTile(
          //         leading: Image.asset("assets/popupmenu_icon/funding.png",width: 20,),
          //         title: const Text("Funding",style: TextStyle(color: Colors.white,fontSize: 18),),
          //       ),),
          //  PopupMenuItem(child: ListTile(
          //         leading: Image.asset("assets/popupmenu_icon/pamm.png",width: 20,),
          //         title: const Text("Pamm",style: TextStyle(color: Colors.white,fontSize: 18),),
          //       ),),
          //  PopupMenuItem(child: ListTile(
          //         leading: Image.asset("assets/popupmenu_icon/signal.png",width: 20,),
          //         title: const Text("Signals",style: TextStyle(color: Colors.white,fontSize: 18),),
          //       ),),
          //  PopupMenuItem(child: ListTile(
          //         leading: Image.asset("assets/popupmenu_icon/copytrading.png",width: 20,),
          //         title: const Text("Copy Trading",style: TextStyle(color: Colors.white,fontSize: 18),),
          //       ),),
          //  PopupMenuItem(child: ListTile(
          //         leading: Image.asset("assets/popupmenu_icon/education.png",width: 20,),
          //         title: const  Text("Education",style: TextStyle(color: Colors.white,fontSize: 18),),
          //       ),),
          //         ],),
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
                onPressed: () {},
                icon: Image.asset(
                  "assets/icon/home.png",
                  height: 20,
                  width: 30,
                )),

            // person icon button
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/icon/icon_person.png",
                  height: 20,
                  width: 30,
                )),
          ],
        ),
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
