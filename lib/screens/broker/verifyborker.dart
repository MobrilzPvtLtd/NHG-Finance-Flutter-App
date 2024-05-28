import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/brocker_acc_setup/broker_account_setup.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/screens/instructions/instructions.dart';
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
          ),
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