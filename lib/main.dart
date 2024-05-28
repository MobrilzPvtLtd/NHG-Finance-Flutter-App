import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/account/myaccount.dart';
import 'package:nhg_finance_app/screens/account_history/account_history.dart';
import 'package:nhg_finance_app/screens/brocker_acc_setup/broker_account_setup.dart';
import 'package:nhg_finance_app/screens/broker/verifyborker.dart';
import 'package:nhg_finance_app/screens/coming_soon_screen/coming_soon.dart';
import 'package:nhg_finance_app/screens/deposit_withdraw/withdraw.dart';
import 'package:nhg_finance_app/screens/home/home.dart';
import 'package:nhg_finance_app/screens/instructions/instructions.dart';
import 'package:nhg_finance_app/screens/login/login.dart';
import 'package:nhg_finance_app/screens/deposit_withdraw/deposit.dart';
import 'package:nhg_finance_app/screens/offer_screen/offer.dart';
import 'package:nhg_finance_app/widget/appbar.dart';
import 'package:nhg_finance_app/widget/drawer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        useMaterial3: true,
      ),
    
      home: const Login_Page(),
    );
  }
}

