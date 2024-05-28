import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/widget/appbar.dart';
import 'package:nhg_finance_app/widget/custom_button.dart';
import 'package:nhg_finance_app/widget/drawer.dart';

class Deposit extends StatefulWidget {
  const Deposit({super.key});

  @override
  State<Deposit> createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawerEnableOpenDragGesture: false,
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

          body:  SafeArea(
            minimum: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Choose Deposit Amount",style: TextStyle(
                  fontSize: 30,
                fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                const Text("Deposit Amount",style: TextStyle(
                  fontSize: 30,
                fontWeight: FontWeight.w400),),
                Row(
                  children: [
                   Container(height: height*0.06,
                   width: width*0.30,
                   decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 1,color: Colors.black)
                   ),
                   child: Center(child: Text('Euro',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
                   ),
                   Container(height: height*0.06,
                   width: width*0.6,
                   decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 1,color: Colors.black)
                   ),
                   child: Center(
                     child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "500",
                        border: InputBorder.none,

                      ),
                     ),
                   ),
                   ),
                  ],
                ),
                SizedBox(height: 40,),
                  const Text("Deposit All Funds From Account (1,234.56 Euro)",style: TextStyle(
                  fontSize: 15,
                fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
                Center(child: Custom_button(buttonname: "Deposit", color: Color.fromARGB(255, 5, 167, 204), height: height*0.08, width: width*0.55,Fontsize: 23,))
              ],
            ),
          ),
          );
      
    
  }
}
