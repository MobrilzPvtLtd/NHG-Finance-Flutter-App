import 'package:flutter/material.dart';
import 'package:nhg_finance_app/widget/drawer.dart';

class Coming_Soon extends StatelessWidget {
  const Coming_Soon({super.key});

  @override
  Widget build(BuildContext context) {
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