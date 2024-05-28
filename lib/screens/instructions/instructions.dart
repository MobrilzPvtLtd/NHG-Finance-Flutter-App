import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/screens/offer_screen/offer.dart';
import 'package:nhg_finance_app/widget/custom_button.dart';
import 'package:nhg_finance_app/widget/drawer.dart';

class Instruction extends StatelessWidget {
  const Instruction({super.key});

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
              onPressed: () {
                Get.to(Home_page());
              },
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
        minimum: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
           const    Text(
                "Step By Step Instructions",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Outfit",
                    fontWeight: FontWeight.w600),
              ),
            const   SizedBox(
                height: 10,
              ),
              Column(
                children: [
                const   Text(
                    "   CHECK YOUR COUNTRY ELIGIBILITY",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.75,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const   Text(
                    "CREATE AND GET YOUR BROKER \nACCOUNT APPROVED",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.75,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FUND YOUR WALLET",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.75,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
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
              Custom_button(
                buttonname: "Connect",
                color: Color.fromARGB(255, 5, 167, 204),
                height: height * 0.06,
                width: width * 0.80,
                Fontsize: 20,
                onpressed: () => Get.to(const Offer_screen()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
