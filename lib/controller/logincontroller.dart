import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/core/config.dart';
import 'package:http/http.dart' as http;
import 'package:nhg_finance_app/screens/home/home.dart';

class Logincontroller extends GetxController {
  Config loginurl = Get.put(Config());

  Future<void> loginData(String email, String password) async {
    String loginurl = Config.loginUrl;
    final url = Uri.parse(loginurl);
    final header = {"Content-Type": "application/json"};
    final body = jsonEncode({'email': email, 'password': password});
   try {
      final response = await http.put(url,headers: header, body: body);
    if (response.statusCode == 200) {
      var jsondata = jsonDecode(response.body);

      log("heloo ${jsondata}");
      
      Get.snackbar(
        "Verification Mail",
        "OTP sent to registered mail id",
        backgroundColor: Colors.white,
        colorText: Colors.black,
      );
      Get.to(const Home_page());
    } else {
      log(response.body);
      log(response.statusCode.toString());
      print('Status Code: ${response.statusCode}');
      Get.snackbar("invaild", "Incorrect Email and password");
    }
   } catch (e) {
     print(e.toString());
     log(e.toString());
   }
  }
}
