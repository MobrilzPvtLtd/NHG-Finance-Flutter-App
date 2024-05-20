import "package:flutter/material.dart";
import "package:nhg_finance_app/widget/allpages_background.dart";

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
          appBar: PreferredSize(preferredSize: const  Size.fromHeight(60),
          child: AppBar(
            backgroundColor: const Color(0xff02343F),

            // PopupMenu Button Section 
            leading: PopupMenuButton(
                      constraints: BoxConstraints(
            minHeight: height*0.50,
            minWidth: width*0.50
                      ),
                      position: PopupMenuPosition.under,
                      color: const  Color(0xff02343F),
                      elevation: 0,
                      icon: const Icon(Icons.menu,color: Colors.white,),
                      itemBuilder: (context) => [
             PopupMenuItem(child: ListTile(
                    leading: Image.asset("assets/popupmenu_icon/account.png",width: 20,),
                    title: const Text("My Account",style: TextStyle(color: Colors.white,fontSize: 17),),
                  ),),
             PopupMenuItem(child:  ListTile(
                    leading: Image.asset("assets/popupmenu_icon/funding.png",width: 20,),
                    title: const Text("Funding",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),),
             PopupMenuItem(child: ListTile(
                    leading: Image.asset("assets/popupmenu_icon/pamm.png",width: 20,),
                    title: const Text("Pamm",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),),
             PopupMenuItem(child: ListTile(
                    leading: Image.asset("assets/popupmenu_icon/signal.png",width: 20,),
                    title: const Text("Signals",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),),
             PopupMenuItem(child: ListTile(
                    leading: Image.asset("assets/popupmenu_icon/copytrading.png",width: 20,),
                    title: const Text("Copy Trading",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),),
             PopupMenuItem(child: ListTile(
                    leading: Image.asset("assets/popupmenu_icon/education.png",width: 20,),
                    title: const  Text("Education",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),),
                    ],),
             actions: [

              // left arrow button
              IconButton(
                onPressed: (){}, icon: Image.asset("assets/icon/icon_left_arrow.png",
                height: 20,width: 30,)),

                // home button 
                IconButton(
                onPressed: (){}, icon: Image.asset("assets/icon/home.png",
                height: 20,width: 30,)),

                // person icon button
                IconButton(
                onPressed: (){}, icon: Image.asset("assets/icon/icon_person.png",
                height: 20,width: 30,)),
            ],
          ),),
          backgroundColor: Colors.transparent,

          // body Section
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          
          
                // NEWS BUTTON TO NAVIGATE NEWS FEED
                GestureDetector(
                      onTap: (){},
                       child: Container(
                        margin: const EdgeInsets.all(20),
                        height: height*0.06,
                        width: width*0.80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff00A9CF)
                        ),
                        child: const Center(
                          child: Text("NEWS",
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),),
                        ),
                        ),
                     ),
          
          
                     // PAMM BUTTON TO NAVIGATE TO PAMM
          
                     GestureDetector(
                      onTap: (){},
                       child: Container(
                        margin: const EdgeInsets.all(20),
                        height: height*0.06,
                        width: width*0.80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff00A9CF)
                        ),
                        child: const Center(
                          child: Text("PAMM",
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),),
                        ),
                        ),
                     ),
          
          
                     // SIGNALS BUTTON TO NAVIGATE SINGLE PAGE/FEED
          
                     GestureDetector(
                      onTap: (){},
                       child: Container(
                        margin: const EdgeInsets.all(20),
                        height: height*0.06,
                        width: width*0.80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff00A9CF)
                        ),
                        child: const Center(
                          child: Text("SIGNALS",
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),),
                        ),
                        ),
                     ),
          
          
                     // COPY_TRADING BUTTON TO NAVIGATE COPY_TRADING PAGE/FEED
          
                     GestureDetector(
                      onTap: (){},
                       child: Container(
                        margin: const EdgeInsets.all(20),
                        height: height*0.06,
                        width: width*0.80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff00A9CF)
                        ),
                        child: const Center(
                          child: Text("COPY TRADING",
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),),
                        ),
                        ),
                     ),
          
          
                     // EDUCATION BUTTON TO NAVIGATE EDUCATION PAGE/FEED
          
                     GestureDetector(
                      onTap: (){},
                       child: Container(
                        margin: const EdgeInsets.all(20),
                        height: height*0.06,
                        width: width*0.80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff00A9CF)
                        ),
                        child: const Center(
                          child: Text("EDUCATION",
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),),
                        ),
                        ),
                     ),
            
            
            ],),
          ),
        )
      ],
    );
  }
}
